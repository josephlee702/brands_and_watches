require 'rails_helper'

RSpec.describe 'artist show', type: :feature do
  before(:each) do
    @brand_1 = Brand.create(name: "Seiko", year_founded: 1881, country: "Japan")
    @brand_2 = Brand.create(name: "Rolex", year_founded: 1905, country: "UK")
    @watch_1 = Watch.create(model: "Prospex Speedtimer", bracelet: "Oyster", movement: "VK63", case_material: "Stainless Steel", case_size: 39, crown_guard: true, brand_id: Brand.find_by(name: "Seiko").id)
    @watch_2 = Watch.create(model: "DateJust", bracelet: "Jubilee", movement: "3235", case_material: "Stainless Steel", case_size: 36, crown_guard: false, brand_id: Brand.find_by(name: "Rolex").id)
  end

  describe 'as a user' do
    describe 'when I visit /brands/:brand_id' do
#     As a visitor
#     When I visit '/parents/:id'
#     Then I see the parent with that id including the parent's attributes
#     (data from each column that is on the parent table)
      it 'shows the brand with the brand attributes' do
        visit "/brands/#{@brand_1.id}"
        expect(page).to have_content(@brand_1.name)
        expect(page).to have_content(@brand_1.year_founded)
        expect(page).to have_content(@brand_1.country)
        expect(page).to_not have_content(@brand_2.name)
      end
    end
  end
end