class Article < ApplicationRecord
  has_many :comments
  # form validation
  validates :title, presence: true,
                    length: { minimum: 5 }
end
