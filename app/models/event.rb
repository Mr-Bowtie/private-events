class Event < ApplicationRecord
  scope :past, -> { self.where('date < ?', Date.today) }
  scope :future, -> { self.where('date >= ?', Date.today) }
  scope :public_event, -> { self.where("visibility == 'public'") }
  scope :private_event, -> { self.where("visibility == 'private'") }

  # def self.past
  #   self.where('date < ?', Date.today)
  # end

  # def self.future
  #   self.where('date > ?', Date.today)
  # end

  has_many :invitations, dependent: :destroy
  belongs_to :creator, class_name: 'User'
  has_many :users_events
  has_many :attendees, through: :users_events

  validates :title, :location, :date, :visibility, presence: true
end
