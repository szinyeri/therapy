t=require("ds18b20")
t.setup(ow_port)
local temp = {0,0}
sensors=t.addrs()
-- Total DS18B20 numbers, assume it is 2
local sensornum = table.getn(sensors)
if sensornum ~= 2 then
    print("ERROR - Sensors found: ",sensornum)
end
temp[1] = t.readNumber(sensors[1],t.C)
tmr.delay(100)
temp[2] = t.readNumber(sensors[2],t.C)
t = nil
ds18b20 = nil
package.loaded["ds18b20"]=nil
--print(temp[1], temp[2])
return temp
