RegisterCommand('exporthouses', function()
    print('Loading migration...')
	print('Checking tables...')
	CreateTables()
	Wait(5000)
    for k,v in ipairs(Config.AddonsInteriors) do
        local numberTier = v.numberTier
        local nameTier = v.nameTier
        local new_hasg = GetHashKey(nameTier)
        updateNumberTier(numberTier, nameTier, new_hasg)
    end
	print('Tiers Updated')
	Wait(5000)
	print('All is exported, now u can update without lose houses. please update the qs-housing to last version!')
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
		print('La columna tier de la tabla houselocations se ha cambiado a tipo TEXT')
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
            print('No se encontró ningún nivel con el nombre '..name)
        end
    end)
end