class VehiclePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where.not(latitude: nil, longitude: nil)

      #if user.admin?
        #scope.all
       #else
        #scope.where(user: user)
       #end
    end
  end

  # def new?
  #   true
  # end

  def create?
    true
  end

  def show?
    true
  end

  def update?
    user_is_owner_or_admin
  end

  def destroy?
    user_is_owner_or_admin
  end

  private

  def user_is_owner_or_admin
    user == record.user || user.admin
  end
end
