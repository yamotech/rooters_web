require 'csv'

csv = CSV.read('db/fixtures/arena.csv')

csv.each_with_index do |arena, i|
  # skip a label row
  next if i === 0

  arena_name = arena[1]
  address = arena[2]
  latitude = arena[3]
  longitude = arena[4]
  url = arena[5]
  distance = arena[6]

  Arena.seed do |a|
    a.arena_name = arena_name
    a.address = address
    a.latitude = latitude
    a.longitude = longitude
    a.url = url
    a.distance = distance
  end
end
