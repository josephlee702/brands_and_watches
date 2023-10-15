class Brand < ApplicationRecord
  def number_of_watches
    Watch.where(brand_id: id).count
  end
end