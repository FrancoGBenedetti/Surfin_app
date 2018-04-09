class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all
    if user.present?
      can :create, Product
      can [:edit, :destroy], Product, user_id: user.id
      can :create, Comment
      can [:destroy], Comment, user_id: user.id
    end
  end
end
