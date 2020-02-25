class ScooterPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    return true
  end

  def new?
    return true
  end

  def show?
    return true
  end

  def update?
    # record.user == user
    return true
    # - record: the scooter passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
  end

  def destroy?
    record.user == user
  end

end
