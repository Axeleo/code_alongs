class Bookmark < ApplicationRecord
  validates :url, 
  presence: true,
  length: { in: 3..3000 },
  allow_blank: false

  def self.recently_added
    where(archived: false).order(:created_at => :asc).limit(3)
  end

  def self.archived
    where(archived: true)
  end

  def self.not_archived
    where(archived: false)
  end

  def self.neglected
    where('click_count <= 1')
    # where(click_count: 1)
  end

end
