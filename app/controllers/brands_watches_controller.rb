class BrandsWatchesController < ApplicationController
  def index
    @brand = Brand.find(params[:brand_id])
    @watches = Watch.where(brand_id: @brand.id)
  end

  def new
    @brand = Brand.find(params[:brand_id])
  end

  def create
    @brand = Brand.find(params[:brand_id])
    @brand.watches.create({
      model: params[:watch][:model],
      bracelet: params[:watch][:bracelet],
      movement: params[:watch][:movement],
      case_material: params[:watch][:case_material],
      case_size: params[:watch][:case_size],
      crown_guard: params[:watch][:crown_guard]
    })

    redirect_to "/brands/#{@brand.id}/watches"
  end
end