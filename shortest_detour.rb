require './distance_calculator'
include DistanceCalculator

def shortest_detour driver_1, driver_2

  d1_drive_d2 = calc_detour(driver_1, driver_2)
  d2_drive_d1 = calc_detour(driver_2, driver_1)
end

def calc_detour driver, passenger

  route = [driver[:start], passenger[:start], passenger[:dest], driver[:end]]

  until route.empty?
    

end
