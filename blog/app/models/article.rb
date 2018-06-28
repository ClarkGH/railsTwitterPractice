class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  # form validation
  validates :title, presence: true,
                    length: { minimum: 5 }
end
