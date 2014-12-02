class Article < ActiveRecord::Base
  validates :title, presence: true
  scope :recent, ->{ order(created_at: :desc) }
  self.per_page = 10
end
