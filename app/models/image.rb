class Image < ApplicationRecord
  belongs_ to :product

  validates :url, presence: true
end
