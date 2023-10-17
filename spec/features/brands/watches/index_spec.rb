require 'rails_helper'

RSpec.describe 'brands watches index', type: :feature do
  before(:each) do
    @brand_1 = Brand.create(name: "Seiko", year_founded: 1881, country: "Japan")
    @brand_2 = Brand.create(name: "Rolex", year_founded: 1905, country: "UK")
    @watch_1 = Watch.create(model: "Prospex Speedtimer", bracelet: "Oyster", movement: "VK63", case_material: "Stainless Steel", case_size: 39, crown_guard: true, brand_id: Brand.find_by(name: "Seiko").id)
    @watch_2 = Watch.create(model: "Presage", bracelet: "Oyster", movement: "WWX4", case_material: "Stainless Steel", case_size: 40, crown_guard: false, brand_id: Brand.find_by(name: "Seiko").id)
    # @watch_3 = Watch.create()
    # @watch_4 = Watch.create()
  end

  describe 'as a user' do
    describe 'when I visit /brands/:brand_id/watches' do
      # As a visitor
      # When I visit '/parents/:parent_id/child_table_name'
      # Then I see each Child that is associated with that Parent with each Child's attributes
      # (data from each column that is on the child table)
      it 'shows the name of each brand that exists and their attributes' do
        visit "/brands/#{@brand_1.id}/watches"
        expect(page).to have_content(@brand_1.name)
        expect(page).to have_content(@watch_1.model)
        expect(page).to have_content(@watch_1.bracelet)
        expect(page).to have_content(@watch_1.movement)
        expect(page).to have_content(@watch_1.case_material)
        expect(page).to have_content(@watch_1.case_size)
        expect(page).to have_content(@watch_1.crown_guard)

        expect(page).to have_content(@watch_2.model)
        expect(page).to have_content(@watch_2.bracelet)
        expect(page).to have_content(@watch_2.movement)
        expect(page).to have_content(@watch_2.case_material)
        expect(page).to have_content(@watch_2.case_size)
        expect(page).to have_content(@watch_2.crown_guard)
      end
    end

    it 'shows the watch index page link at the top of the page' do
      visit "/brands"
      expect(page).to have_link("All Watches")
    end
  end
end
