class VehiclePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  private

  def user_is_owner_or_admin
    user == record.user
  end
end
