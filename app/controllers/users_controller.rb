class UsersController < ApplicationController
    before_action :authenticate_user!
  def show
    @points = Point.where(user_id: current_user.id).sum(:amount)
  end
end
