# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Sport.create(
  sport_category_id: 1,
  sport_name_ja: "開・閉会式",
  sport_name_en: "Opening and Closing",
  sport_type: "セレモニー",
  sport_description: "開会式が行われます。",
  stadium_id: 1,
  sport_date: "2016-10-01",
  disabled: "0"
  )
