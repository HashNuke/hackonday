class User < ActiveRecord::Base

  has_many :team_memberships

end
