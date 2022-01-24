class Invitation < ApplicationRecord
  belongs_to :event
  belongs_to :recipient, class_name: 'User'
  belongs_to :invite_creator, class_name: 'User'
end
