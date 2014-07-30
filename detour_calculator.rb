require './distance_calculator.rb'
include DistanceCalculator

class DetourCalculator

  def get_shortest_detour driver_1, driver_2
    d1_drive_d2 = calc_detour(driver_1, driver_2)
    d2_drive_d1 = calc_detour(driver_2, driver_1)

    d1_drive_d2 < d2_drive_d1 ? { acdb: d1_drive_d2 } : { cabd: d2_drive_d1 }  
  end

  private
  
  def calc_detour driver, passenger
    detour = 0
    route = [driver[:start], passenger[:start], passenger[:dest], driver[:dest]]
    current_stop = route.shift

    until route.empty?
      detour += DistanceCalculator.get_distance_between_points(current_stop,route.first)
      current_stop = route.shift
    end

    detour -= DistanceCalculator.get_distance_between_points(driver[:start], driver[:dest])
  end
end