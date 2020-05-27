class Game < ApplicationRecord
  has_and_belongs_to_many :platforms, :genres
  has_many :expansions, class_name: 'Game', foreign_key: :parent_id
  belongs_to :parent, class_name: 'Game', optional: true
end
