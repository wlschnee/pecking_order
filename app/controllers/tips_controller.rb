class TipsController < ApplicationController

  def new
    @tip = Tip.new
  end

  def create
    @tip = Tip.new(tip_params)
    @tip.user_id = current_user.id
    @tip.save
    redirect_to location_path(@tip.location)
  end

  def edit
  end

  def destroy
  end

  private
    def tip_params
      params.require(:tip).permit(:id, :content, :location_id, :event_id)
    end

end
