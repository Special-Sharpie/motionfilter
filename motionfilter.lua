while true
do

eventName, addr, x, y, z, entityName = event.pull("motion")

if (entityName == "special_sharpie")
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