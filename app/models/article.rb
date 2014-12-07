class Article < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true
  scope :recent, ->{ order(created_at: :desc) }
  self.per_page = 10
end
