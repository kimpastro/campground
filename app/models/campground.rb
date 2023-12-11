class Campground < ApplicationRecord
  scope :recently_viewed, -> { where.not(last_viewed_at: nil).order(last_viewed_at: :desc) }
  scope :ordered, -> { order(id: :desc) }

  def viewed!
    update(last_viewed_at: Time.current)
  end
end
