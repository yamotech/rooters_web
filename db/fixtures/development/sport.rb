require 'csv'

csv = CSV.read('db/fixtures/sport.csv')

csv.each_with_index do |sport, i|
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
