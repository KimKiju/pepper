class PointsController < ApplicationController

  def new
  end

  def create
    if params[:pass] == "abc123"
    point = point_params[:amount].to_i * 0.1
    add_points = point.floor
    Point.create(amount:add_points,store_id:point_params[:store_id],nickname:point_params[:nickname])
    @point = add_points
    @nickname = point_params[:nickname]
    else
      redirect_to action: 'unmatch'
    end
  end

  def unmatch
  end

  private
  def point_params
    params.permit(:amount,:store_id,:nickname)
  end

end
