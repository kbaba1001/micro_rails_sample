class Song < ApplicationRecord
  belongs_to :artist
  has_and_belongs_to_many :play_lists
  has_and_belongs_to_many :albums
end
