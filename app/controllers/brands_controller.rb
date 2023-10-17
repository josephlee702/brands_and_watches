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
    @brand = Brand.find(params[:brand_id])
  end

  def edit
    @brand = Brand.find(params[:brand_id])
  end

  def brand_params
    params.permit(:name, :country, :year_founded)
  end

  def update
    brand = Brand.find(params[:brand_id])
    brand.update(brand_params)

    redirect_to "/brands/#{brand.id}"
  end

  def destroy
    Brand.find(params[:brand_id]).destroy
    redirect_to "/brands"
  end
end