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

Arena.create(
  arena_name: "北上総合運動公園北上陸上競技場",
  address: "岩手県北上市相去町高前檀27-36",
  latitude: 39.2588339,
  longitude: 141.092891,
  url: "http://www.iwate2016.jp/kokutai_game/track_and_field#530",
  distance: 0)
