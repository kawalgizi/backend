class Tweet < ApplicationRecord
  validates_presence_of :username, :tweet
end
