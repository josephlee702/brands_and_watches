class WatchesController < ApplicationController
  def index
    @watches = Watch.all
  end

  def show
    @watch = Watch.find(params[:id])
    @brand = Brand.find(@watch.brand_id)
  end
end