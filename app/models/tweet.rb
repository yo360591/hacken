class Tweet < ApplicationRecord
  has_many :comments
end