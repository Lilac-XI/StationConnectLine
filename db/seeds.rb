# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"

CSV.foreach("db/seeds/csv/StationLineInfo.csv",headers: true) do |row|
	Line.create(
		cd: row["line_cd"],
		name: row["line_name"]
		)
end
CSV.foreach("db/seeds/csv/TokyoStationInfo.csv",headers: true) do |row|
	
	if  Station.find_by(cd: row["station_g_cd"]) == nil
		s = Station.create(
		cd: row["station_g_cd"],
		name: row["station_name"]
		)
	else 
		s = Station.find_by(cd: row["station_g_cd"])
	end
	l = Line.find_by(cd: row["line_cd"])
	l.stations << s
	l.save
end