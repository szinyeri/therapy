print("loading : power_switch.lua")
gpio.mode(power_off_pin, gpio.OUTPUT)
gpio.write(power_off_pin, gpio.HIGH)
gpio.mode(status_led_pin, gpio.OUTPUT)
gpio.write(status_led_pin, gpio.HIGH)
print("end : power_switch.lua")

