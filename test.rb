require './detour_calculator.rb'

detour_calc = DetourCalculator.new

driver_1 = { start: { lat: 37.787336 , lon: -122.421184 }, dest: { lat: 37.79164 , lon: -122.41824 } }
driver_2 = { start: { lat: 37.789147 , lon: -122.421695 }, dest: { lat: 37.790792 , lon: -122.420429 } }
p detour_calc.get_shortest_detour(driver_1, driver_2) == { acdb: 0.09059989390463041 }

driver_3 = { start: { lat: 37.789147 , lon: -122.421695 }, dest: { lat: 37.790792 , lon: -122.420429 } }
driver_4 = { start: { lat: 37.787336 , lon: -122.421184 }, dest: { lat: 37.79164 , lon: -122.41824 } }
p detour_calc.get_shortest_detour(driver_3,driver_4) == { cabd: 0.09059989390463041 }


