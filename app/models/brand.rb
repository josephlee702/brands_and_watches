class Brand < ApplicationRecord
  has_many :watches, dependent: :destroy

  def number_of_watches
    Watch.where(brand_id: id).count
  end
end