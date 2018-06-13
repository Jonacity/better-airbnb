class FlatPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    !@user.nil?
  end

  def create?
    !@user.nil?
  end

  def edit?
    is_owner?
  end

  def update?
    # record.user == user
    # # - record: the restaurant passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
    is_owner?
  end

  def destroy?
    is_owner?
    # record.user == user
  end

  private
  
  def is_owner?
    @record.user == @user 
  end
end
