class VehiclePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  # def new?
  #   true
  # end

  def create?
    true
  end

  def show?
    user_is_owner
  end

  def update?
    user_is_owner
  end

  def destroy?
    user_is_owner
  end

  private

  def user_is_owner
    user == record.user
  end
end
