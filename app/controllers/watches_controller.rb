class WatchesController < ApplicationController
  def index
    @watches = Watch.all
  end

  def new_watch
  end

  def create_watch
    watch = Watch.new({
      model: params[:watch][:model],
      bracelet: params[:watch][:bracelet],
      movement: params[:watch][:movement],
      case_material: params[:watch][:case_material],
      case_size: params[:watch][:case_size],
      crown_guard: params[:watch][:crown_guard],
      brand_id: params[:watch][Brand.find(params[:brand_id])]
    })

    watch.save

    redirect_to "/brands/#{@brand.id}/watches"
  end

  def show
    @watch = Watch.find(params[:id])
    @brand = Brand.find(@watch.brand_id)
  end 
end