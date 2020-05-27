class Review < ApplicationRecord
  belongs_to :user
  belongs_to :reviewable, polymorphic: true
  before_save :ensure_count_is_initialized
  after_create :increase_review_count
  after_destroy :decrease_review_count

  private

  def ensure_count_is_initialized
    return unless user.review_count.nil?
    user.review_count = 0
    user.save
  end

  def increase_review_count
    user.review_count += 1
    user.save
  end

  def decrease_review_count
    user.review_count -= 1
    user.save
  end
end
