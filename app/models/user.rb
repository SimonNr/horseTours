class User < ActiveRecord::Base
  rolify
  after_create :assign_default_role

  has_many :creator_tours, class_name: "Tour", foreign_key: :creator_id
  has_many :tourComments

  def assign_default_role
    add_role(:role)
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