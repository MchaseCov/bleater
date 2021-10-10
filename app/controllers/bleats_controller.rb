class BleatsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def new
    @bleat = current_user.bleats.build
  end

  def create
    @bleat = current_user.bleats.build(bleat_params)
    if @bleat.save
      redirect_to profile_path(current_user.id)
    else
      render :new
    end
  end

  # def index
  #  @bleats = Bleat.all
  # end

  private

  def bleat_params
    params.require(:bleat).permit(:body)
  end
end
