class Team < ActiveRecord::Base
  belongs_to :hackathon
  has_many :team_memberships
end
