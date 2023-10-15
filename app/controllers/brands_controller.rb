class BrandsController < ApplicationController
  def index
    @brands = Brand.all.order(created_at: :desc)
  end

  def show
    @brand = Brand.find(params[:id])
  end

  def brand_watches_index
    @brand = Brand.find(params[:id])
    @watches = Watch.where(brand_id: @brand.id)
  end
end