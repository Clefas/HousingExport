RegisterCommand('exporthouses', function()
    print('Loading migration...')
	print('Checking tables...')
	CreateTables()
	Wait(5000)
    if not Config.AddonsInteriors then goto skip end
    for k,v in ipairs(Config.AddonsInteriors) do
        local numberTier = v.numberTier
        local nameTier = v.nameTier
        local new_hasg = GetHashKey(nameTier)
        updateNumberTier(numberTier, nameTier, new_hasg)
    end
    ::skip::
	print('Tiers Updated')
	Wait(5000)
	print('All is exported, now u can update without lose houses. please update the qs-housing to last version!')
    print('If you have QB or QS Stashes u can export too. Use the command migrateQS for QS or migrateQB to QB')
    print('You can delete me, have a nice day! :)')
end, true)

function CreateTables()
    MySQL.Async.execute('ALTER TABLE player_houses ADD COLUMN IF NOT EXISTS houseID VARCHAR(50) NULL', {}, function(rowsChanged)
        print('Column houseID added to player_houses')
    end)
	Wait(1000)
    MySQL.Async.execute('ALTER TABLE houselocations ADD COLUMN IF NOT EXISTS houseID VARCHAR(50) NULL', {}, function(rowsChanged)
        print('Column houseID added to houselocations')
    end)
	Wait(1000)
	MySQL.Async.execute('ALTER TABLE houselocations MODIFY COLUMN tier TEXT', {}, function(rowsChanged)
		print('The tier column of the houselocations table has been changed to type TEXT')
	end)
    Wait(1000)
    print('Tables updated...')
end

function updateNumberTier(numberTier, name, new_hash)
    MySQL.Async.execute('UPDATE houselocations SET tier = @new_hash WHERE tier = @numberTier', {
        ['@new_hash'] = new_hash,
        ['@numberTier'] = numberTier
    }, function(rowsAffected)
        if rowsAffected > 0 then
            print('Nombre :'..name..' | Tier :'..numberTier..' | Nuevo Hash :'..new_hash..'')
        else
            print('No tier with name found '..numberTier)
        end
    end)
end

RegisterCommand('migrateQS', function()
    print('Loading migration...')
	print('Migrating inventory...')
	InventoryTransfor()
	Wait(5000)
	print('Inventorys migrated!')
    print('You can delete me, have a nice day! :)')
end, true)

function InventoryTransfor()
    MySQL.Async.fetchAll('SELECT * FROM qs_stash', {}, function(result)
        if result ~= nil then
            for i=1, #result do
                local stashName = result[i].stash
                local stashItems = result[i].items

                MySQL.Async.fetchScalar('SELECT name FROM houselocations WHERE name = @name', {['@name'] = stashName}, function(stashLocation)
                    if stashLocation ~= nil and stashLocation == stashName then
                        local newStashName = 'Housing_' .. stashName
                        local itemsJson = stashItems
                        MySQL.Async.execute('INSERT INTO qs_stash (stash, items) VALUES (@stash, @items)', {['@stash'] = newStashName, ['@items'] = itemsJson})
                    end
                end)
            end
        end
    end)
end

RegisterCommand('migrateQB', function()
    print('Loading migration...')
	print('Migrating inventory...')
	InventoryTransforQB()
	Wait(5000)
	print('Inventorys migrated!')
    print('You can delete me, have a nice day! :)')
end, true)

function InventoryTransforQB()
    MySQL.Async.fetchAll('SELECT * FROM stashitems', {}, function(result)
        if result ~= nil then
            for i=1, #result do
                local stashName = result[i].stash
                local stashItems = result[i].items

                MySQL.Async.fetchScalar('SELECT name FROM houselocations WHERE name = @name', {['@name'] = stashName}, function(stashLocation)
                    if stashLocation ~= nil and stashLocation == stashName then
                        local newStashName = 'Housing_' .. stashName
                        local itemsJson = stashItems
                        MySQL.Async.execute('INSERT INTO stashitems (stash, items) VALUES (@stash, @items)', {['@stash'] = newStashName, ['@items'] = itemsJson})
                    end
                end)
            end
        end
    end)
end