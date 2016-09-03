def calculator(distance, bus_drive, bus_walk)
  #your code here, use the preset $walk and $bus values
  walk_time = distance / $walk
  bus_time = (bus_drive / $bus) + (bus_walk / $walk)
  return "Walk" if walk_time < 0.16
  return "Bus" if walk_time > 2.00
  walk_time <= bus_time ? 'Walk' : 'Bus'
end