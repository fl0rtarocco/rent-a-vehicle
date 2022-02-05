class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  # def create?
  #   true
  # end

  def new?
    if record.user
      true
    else
      false
    end
  end
end
