class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :users_events
  has_many :attendees, through: :users_events
end
