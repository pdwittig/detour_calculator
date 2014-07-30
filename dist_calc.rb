module DistCalc

  EARTH_RADIUS = 6371

  def get_distance_between_points(point_1, point_2)
    
    theta_1 = convert_degrees_to_radians(point_1[:lat])
    theta_2 = convert_degrees_to_radians(point_2[:lat])
    delta_theta = convert_degrees_to_radians(point_2[:lat] - point_1[:lat])
    delta_lamba = convert_degrees_to_radians(point_2[:lon] - point_1[:lon])

    a = Math.sin(delta_theta / 2) ** 2 +
        Math.cos(theta_1) * Math.cos(theta_2) *
        Math.sin(delta_lamba / 2) ** 2

    c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a))

    dist = EARTH_RADIUS * c
  end

  def convert_degrees_to_radians(deg)
    deg * (Math::PI / 180)
  end

end

# madison = { lat: 43.0667, lon: 89.4000 }
# san_francisco = { lat: 37.7833, lon: 122.4167 }

# include DistanceCalculator

# p DistanceCalculator.get_distance_between_points(madison, san_francisco)