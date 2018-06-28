class Article < ApplicationRecord
  # form validation
  validates :title, presence: true,
                    length: { minimum: 5 }
end
