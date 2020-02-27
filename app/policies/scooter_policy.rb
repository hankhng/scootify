class ScooterPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where.not(latitude: nil).order(id: :desc)
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
    record.owner == user
    # return true
    # - record: the scooter passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
  end

  def owned?
    return true
  end

  def destroy?
    record.owner == user
    # return true
  end

end
