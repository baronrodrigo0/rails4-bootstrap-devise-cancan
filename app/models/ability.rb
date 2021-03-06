class Ability
  include CanCan::Ability
  
  def initialize(user)
    user ||= User.new # guest user

    if user.role? :user
      can :manage, :all
    else 
      can :read, :all
    end
  end
end