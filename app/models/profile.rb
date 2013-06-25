class Profile < ActiveRecord::Base
  attr_accessible :bio, :tagline, :user_id

  validates :user_id, presence: true, uniqueness: true

  belongs_to :user
  has_many :skills, :through => :user

end
