class BrandsController < ApplicationController
  def index
    @brands = Brand.all.order(created_at: :desc)
  end

  def new
  end

  def create
    brand = Brand.new({
      name: params[:brand][:name],
      country: params[:brand][:country],
      year_founded: params[:brand][:year_founded]
    })

    brand.save

    redirect_to "/brands"
  end

  def show
    @brand = Brand.find(params[:id])
  end

  def brand_watches_index
    @brand = Brand.find(params[:id])
    @watches = Watch.where(brand_id: @brand.id)
  end
end