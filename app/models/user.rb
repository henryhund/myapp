class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :assign_default_role

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me

  validates :name, presence: { message: "Your name cannot be blank." }
  validates :email, presence: { message: "Your email cannot be blank." }

  has_one :profile, dependent: :destroy
  has_one :calendar, dependent: :destroy
  has_many :skills, dependent: :destroy
  has_many :appointments, foreign_key: :host_id, dependent: :destroy
  has_many :appointments, foreign_key: :attendee_id

  # @user.profile
  # def profile
  #   Profile.where(user_id: self.id)
  # end

  def has_profile?
    Profile.find_by_user_id(self.id)
  end

  def has_calendar?
    Calendar.find_by_user_id(self.id)
  end

  def assign_default_role
    # Default Role: User, ID: 2
    add_role(:user)
  end


end
