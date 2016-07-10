# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Sport.create(
  :sport_category_id => 1,
  :sport_name_ja => "開・閉会式",
  :sport_name_en => "Opening and Closing",
  :sport_type => "セレモニー",
  :sport_description => "開会式が行われます。",
  :stadium_id => 1,
  :sport_date => "2016-10-01",
  :disabled => "0"
)

Sport.create(
  :sport_category_id => 1,
  :sport_name_ja => "陸上競技",
  :sport_name_en => "Athletics",
  :sport_type => "全種別",
  :sport_description => "陸上競技は、「走る・跳ぶ・投げる」を競技化した最もシンプルなスポーツです。トラック競技とフィールド競技があり、トラック競技は、短距離走、中・長距離走、ハードル・障害物競走、リレー、競歩の5つに大別されます。フィールド競技は、走高跳、棒高跳、走幅跳、三段跳の「跳躍競技」と、砲丸投、円盤投、ハンマー投、やり投の「投てき競技」の2つに分けられます。代表選手のスピード、パワー、テクニック、躍動感とともに、スタート前の表情やレース中の駆け引き、ゴール直前での激しい競り合いなど見どころがいっぱいです。",
  :stadium_id => 1,
  :sport_date => "2016-10-01",
  :disabled => "0"
)

Arena.create(
  :arena_name => "北上総合運動公園北上陸上競技場",
  :address => "岩手県北上市相去町高前檀27-36",
  :latitude => 39.2588339,
  :longitude => 141.092891,
  :url => "http://www.iwate2016.jp/kokutai_game/track_and_field#530",
  :distance => 0
)

Arena.create(
  :arena_name => "盛岡市立総合プール",
  :address => "岩手県盛岡市本宮5-3-1",
  :latitude => 39.6904256,
  :longitude => 141.1227426,
  :url => "http://www.iwate2016.jp/kokutai_game/swimming#13591",
  :distance => 0
)
