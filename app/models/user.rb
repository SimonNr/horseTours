class User < ActiveRecord::Base
  rolify

  has_many :creator_tours, class_name: "Tour", foreign_key: :creator_id

  before_create :set_default_role

  private
  def set_default_role
    self.roles ||= Role.find_by_name('user')
  end

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation
  # attr_accessible :title, :body
end