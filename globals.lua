-- init globals
nxt_temp = 210 -- ez lesz a következő elérendő hőmérséklet
prev_temp = 0 -- időzítésben az aktuális időhöz képest előzőleg megadott hőmérséklet érték
lasttemp ={}
lastenv = {}
sensors = {}
webServerPort = "80"
ow_port = 4 -- one wire port
i2c_sda = 2 
i2c_scl = 1
napok ={"Sun", "Mon", "Tue", "Thu", "Wed", "Fri", "Sat"}
hist = 3 -- histerezis 
slog_ip = "192.168.4.254"

terapia_fut = false -- jelzi, hogy a web-en elindították a kezelési ciklust

status_led_pin = 6 -- ezen a porton van a status LED
power_off_pin = 7 -- táp on/off ezen a porton van

--slog_ip = "10.10.2.5"
-- timerek
-- 0 wifi ellenőrzési ciklushoz
-- 1 kikapcsolás figyelése.
-- 3 hőmérséklet értékek periodikus kiolvasása
