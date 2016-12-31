class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.superadmin?
      # superadmin
      can :manage, :all
    elsif user.expert?
      # expert
      can [:create, :read, :update], ProductCategory
    elsif user.contributor?
      # contributor
      can :create, ProductCategory
    else
      can :manage, User, id: user.id
    end
  end
end
