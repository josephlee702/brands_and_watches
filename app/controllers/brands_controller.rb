class BrandsController < ApplicationController
  def index
    @brands = Brand.all.order(created_at: :desc)
  end

  def show
    @brand = Brand.find(params[:id])
  end

  def show_watches
    @brand = Brand.find(params[:id])
    @watches = Watch.where(brand_id: @brand.id)
  end

end