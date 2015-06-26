class SkeletonsController < ApplicationController

  def index
    @skeletons = Skeleton.all.includes(:user).first(20)
  end

  def create
      @skeleton = Skeleton.new params.require(:skeleton).permit(:content, :user_id)

      if @skeleton.save
        render :index, status: 201
      else
        render json: @skeleton.errors, status: 422
      end
  end

  def update
  end

  def delete
  end


end
