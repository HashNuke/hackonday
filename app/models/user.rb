class User < ActiveRecord::Base

  ROLES = %w[admin hacker banned]
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  
  #TODO add validatable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  has_many :team_memberships
end
