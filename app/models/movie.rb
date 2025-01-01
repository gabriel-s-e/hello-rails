class Movie < ActiveRecord::Base
  validates :title, :rating, :description, :release_date, presence: true
end