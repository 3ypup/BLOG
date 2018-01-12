class Article < ApplicationRecord


  has_many :comments

  validates :text, presence: true
  validates :title, presence: true

end
