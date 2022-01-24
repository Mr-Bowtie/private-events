class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # search by name or email
  has_many :recieved_invitations, foreign_key: :recipient_id, class_name: 'Invitation'
  has_many :created_invitations, foreign_key: :invite_creator_id, class_name: 'Invitation'
  has_many :users_events, foreign_key: :attendee_id
  has_many :created_events, foreign_key: :creator_id, class_name: 'Event'
  has_many :attended_events, through: :users_events, source: :event

  def self.search(search_string)
    unless search_string.nil? || search_string.empty?
      if search_string.chars.include?('@')
        self.where(email: search_string)
      else
        self.where(name: search_string)
      end
    else
      @users = User.all
    end
  end
end
