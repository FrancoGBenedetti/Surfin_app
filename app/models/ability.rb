class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all
    if user.present?
      can :manage, Product, user_id: user.id
      can :manage, Comment, user_id: user.id
    end
  end
end
