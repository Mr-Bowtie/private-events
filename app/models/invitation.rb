class Invitation < ApplicationRecord
  scope :responded, -> { self.where('response IS NOT NULL') }
  scope :unresponded, -> { self.where('response IS NULL') }

  belongs_to :event
  belongs_to :recipient, class_name: 'User'
  belongs_to :invite_creator, class_name: 'User'
end
