class ReviewPolicy < ApplicationPolicy
  def create?
    return true
  end

  def new?
    return true
  end
end
