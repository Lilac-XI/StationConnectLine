class Station < ApplicationRecord
	has_many :lines, through: :line_stations
	has_many :line_stations
	accepts_nested_attributes_for :line_stations
end
