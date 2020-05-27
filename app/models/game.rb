class Game < ApplicationRecord
  has_and_belongs_to_many :platforms, :genres
end
