class InvolvedCompany < ApplicationRecord
  belongs_to :company
  belongs_to :game
  validates :developer, :publisher, presence: true
end
