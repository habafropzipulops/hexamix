
function mergeTables( first_table, second_table )
    for _, value in ipairs(second_table) do
        first_table[#first_table + 1] = value
    end

    return first_table
end

function itemAmount( table, item )
    local count = 0

    for _, value in pairs( table ) do
        if item == value then count = count + 1 end
    end

    return count
end

function getUniqueElements( table )
    local uniqTable = {}
    
    for _, value in ipairs( table ) do
    
        if ( itemAmount( uniqTable, value ) == 0 ) then
            uniqTable[#uniqTable + 1] = value
        end

    end

    return uniqTable
end

function shuffle( table )
    local j

    for i = #table, 2, -1 do
        j = math.random(i)
        table[i], table[j] = table[j], table[i]
    end

end

function getRandomItem( table )
    local keys = {}
    local randomKey

    for key, _ in pairs( table ) do
        keys[#keys + 1] = key
    end

    randomKey = keys[math.random(1, #keys)]

    return table[randomKey]
end
