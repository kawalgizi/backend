class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.superadmin?
      # superadmin
      can :manage, :all
    elsif user.expert?
      # expert
      can :manage, ProductCategory
      cannot :destroy, ProductCategory
    elsif user.contributor?
      # contributor
      can :manage, ProductCategory
      cannot [:edit, :destroy], ProductCategory
    else
      can :manage, User, id: user.id
    end
  end
end
