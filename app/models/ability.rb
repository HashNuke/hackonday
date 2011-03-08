class Ability
  include CanCan::Ability

  def initialize(user)

    @user = user || User.new # for guest

    if @user.role == "admin"
      can :manage, :all
    elsif @user.role == "hacker"
      can :read, Hackathon
      can :manage, Team
    else
      can :read, Hackathon
      can :create, InviteRequest
      can :read, Team
    end
  end
end
