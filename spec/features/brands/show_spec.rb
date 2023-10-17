require 'rails_helper'

RSpec.describe 'brands show', type: :feature do
  before(:each) do
    @brand_1 = Brand.create(name: "Seiko", year_founded: 1881, country: "Japan")
    @brand_2 = Brand.create(name: "Rolex", year_founded: 1905, country: "UK")
    @watch_1 = Watch.create(model: "Prospex Speedtimer", bracelet: "Oyster", movement: "VK63", case_material: "Stainless Steel", case_size: 39, crown_guard: true, brand_id: Brand.find_by(name: "Seiko").id)
    @watch_2 = Watch.create(model: "DateJust", bracelet: "Jubilee", movement: "3235", case_material: "Stainless Steel", case_size: 36, crown_guard: false, brand_id: Brand.find_by(name: "Rolex").id)
    @watch_3 = Watch.create(model: "DayDate", bracelet: "Jubilee", movement: "1106", case_material: "Stainless Steel", case_size: 42, crown_guard: false, brand_id: Brand.find_by(name: "Rolex").id)
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
      it 'shows the number of watches that a brand has' do
        # As a visitor
        # When I visit a parent's show page
        # I see a count of the number of children associated with this parent
        visit "/brands/#{@brand_1.id}"
        expect(@brand_1.number_of_watches).to eq(1)
        expect(page).to have_content("Number of Watches")
        visit "/brands/#{@brand_2.id}"
        expect(@brand_2.number_of_watches).to eq(2)
        expect(page).to have_content("Number of Watches")
      end
    end

    it 'shows the watch index page link at the top of the page' do
      visit "/brands/#{@brand_1.id}"
      expect(page).to have_link("Watch Index")
      visit "/brands/#{@brand_2.id}"
      expect(page).to have_link("Watch Index")
    end

    it 'shows the watch index page link at the top of the page' do
      visit "/brands/#{@brand_1.id}"
      expect(page).to have_link("Watch Index")
      expect(page).to have_link("Brand Index")
    end
  end
end