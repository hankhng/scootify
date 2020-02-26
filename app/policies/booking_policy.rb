class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.joins(scooter: :owner).where(scooters: { owner_id: user })
    end
  end

  def set_booking?
    return true
  end

  def show?
    return true
  end

  def create?
    return true
  end
  def new?
    return true
  end

  def update?
    record.user == user
    # - record: the booking passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
  end

  def owned?
    return true
  end

  def destroy?
    record.user == user
  end
end
