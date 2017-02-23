ds18b20 = require("ds18b20")
ds18b20.setup(ow_port)
addrs = ds18b20.addrs()
if (addrs ~= nil) then
  print("Total DS18B20 sensors: "..table.getn(addrs))
end
-- Don't forget to release it after use
ds18b20 = nil
package.loaded["ds18b20"]=nil