require 'rails_helper'

RSpec.describe 'watch index', type: :feature do
  before(:each) do
    @brand_1 = Brand.create(name: "Seiko", year_founded: 1881, country: "Japan")
    @brand_2 = Brand.create(name: "Tudor", year_founded: 1926, country: "Switzerland")
    @watch_1 = Watch.create(model: "Prospex Speedtimer", bracelet: "Oyster", movement: "VK63", case_material: "Stainless Steel", case_size: 39, crown_guard: true, brand_id: Brand.find_by(name: "Seiko").id)
    @watch_2 = Watch.create(model: "Pelagos", bracelet: "Oyster", movement: "142L", case_material: "Stainless Steel", case_size: 38, crown_guard: true, brand_id: Brand.find_by(name: "Tudor").id)
  end

  describe 'as a user' do
    describe 'when I visit /watches' do
#     As a visitor
#     When I visit '/child_table_name'
#     Then I see each Child in the system including the Child's attributes
#     (data from each column that is on the child table)
      it 'shows the children with their attributes' do
        visit "/watches"
        expect(page).to have_content("All Watches")
        expect(page).to have_content(@watch_1.model)
        require 'pry'; binding.pry
        expect(page).to have_content(@watch_2.model)
      end
    end
    it 'shows the watch index page link at the top of the page' do
      visit "/watches"
      expect(page).to have_link("All Brands")
    end
  end
end