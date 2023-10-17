class WatchesController < ApplicationController
  def index
    @watches = Watch.all.where(crown_guard: :true)
  end

  def show
    @watch = Watch.find(params[:watch_id])
  end 

  def edit
    @watch = Watch.find(params[:watch_id])
  end

  def watch_params
    params.permit(:model, :bracelet, :movement, :case_material, :case_size, :crown_guard)
  end
  
  def update
    @watch = Watch.find(params[:watch_id])
    @watch.update(watch_params)
    redirect_to "/watches/#{@watch.id}"
  end
end