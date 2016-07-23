# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'csv'

sport_csv = CSV.read('db/fixtures/sport.csv')
arena_csv = CSV.read('db/fixtures/arena.csv')

sport_csv.each_with_index do |sport, i|
  # skip a label row
  next if i === 0

  sport_name_ja = sport[2]
  sport_name_en = sport[3]
  sport_type = sport[4]
  sport_description = sport[5]
  stadium_id = sport[6]
  sport_date = sport[7]
  disabled = sport[8]

  Sport.seed do |s|
    s.sport_category_id = i
    s.sport_name_ja = sport_name_ja
    s.sport_name_en = sport_name_en
    s.sport_type = sport_type
    s.sport_description = sport_description
    s.stadium_id = stadium_id
    s.sport_date = sport_date
    s.disabled = disabled
  end
end


arena_csv.each_with_index do |arena, i|
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
