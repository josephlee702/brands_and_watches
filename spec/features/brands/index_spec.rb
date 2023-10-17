require 'rails_helper'

RSpec.describe 'brands index', type: :feature do
  before :each do
    @brand_1 = Brand.create(name: "Seiko", year_founded: 1881, country: "Japan")
    @brand_2 = Brand.create(name: "Rolex", year_founded: 1905, country: "UK")
  end

  describe 'as a user' do
    describe 'when I visit /brands' do
#       For each parent table
#       As a visitor
#       When I visit '/parents'
#       Then I see the name of each parent record in the system 
      it 'shows the name of each brand that exists' do
        visit "/brands"
        expect(page).to have_content("All Brands")
        expect(page).to have_content(@brand_1.name)
        expect(page).to have_content(@brand_2.name)
      end
    end
  end
end
