require 'rails_helper'

RSpec.describe 'watch show', type: :feature do
  before(:each) do
    @brand_1 = Brand.create(name: "Seiko", year_founded: 1881, country: "Japan")
    @brand_2 = Brand.create(name: "Rolex", year_founded: 1905, country: "UK")
    @watch_1 = Watch.create(model: "Prospex Speedtimer", bracelet: "Oyster", movement: "VK63", case_material: "Stainless Steel", case_size: 39, crown_guard: true, brand_id: Brand.find_by(name: "Seiko").id)
    @watch_2 = Watch.create(model: "DateJust", bracelet: "Jubilee", movement: "3235", case_material: "Stainless Steel", case_size: 36, crown_guard: false, brand_id: Brand.find_by(name: "Rolex").id)
  end

  describe 'as a user' do
    describe 'when I visit /watches/:watch_id' do
      # As a visitor
      # When I visit '/child_table_name/:id'
      # Then I see the child with that id including the child's attributes
      # (data from each column that is on the child table)
      it 'shows the watch with its attributes' do
        visit "/watches/#{@watch_1.id}"
        expect(page).to have_content(@watch_1.model)
        expect(page).to have_content(@watch_1.bracelet)
        expect(page).to have_content(@watch_1.movement)
        expect(page).to have_content(@watch_1.case_material)
        expect(page).to have_content(@watch_1.case_size)
        expect(page).to have_content(@watch_1.crown_guard)
        expect(page).to_not have_content(@watch_2.model)
      end
    end
    it 'shows the watch index page link at the top of the page' do
      visit "/watches/#{@watch_1.id}"
      expect(page).to have_link("All Brands")
      expect(page).to have_link("All Watches")
    end
  end
end