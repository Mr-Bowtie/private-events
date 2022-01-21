class Event < ApplicationRecord
  scope :past, -> { self.where('date < ?', Date.today) }
  scope :future, -> { self.where('date >= ?', Date.today) }

  # def self.past
  #   self.where('date < ?', Date.today)
  # end

  # def self.future
  #   self.where('date > ?', Date.today)
  # end

  belongs_to :creator, class_name: 'User'
  has_many :users_events
  has_many :attendees, through: :users_events

  validates :title, :location, :date, presence: true
end
