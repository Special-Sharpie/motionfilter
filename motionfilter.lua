names = {"special_sharpie", "CompulsiveGaming"}

local function inTable(table, value)
    for index, tableValue in ipairs(table)
    do
        if value == tableValue
        then
            return true
        else
            return false
        end
    end
end

while true
do

eventName, addr, x, y, z, entityName = event.pull("motion")

if (inTable(names, entityName))
then
    component.redstone.setOutput(2, 15)
    print(eventName, entityName)
    os.execute("sleep " .. tonumber(3))

    component.redstone.setOutput(2, 0)
    component.redstone.setOutput(2, 15)
    component.redstone.setOutput(2, 0)
else
    print("Access Not Permitted")
end

end

