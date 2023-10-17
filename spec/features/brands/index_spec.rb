require 'rails_helper'

RSpec.describe 'brands index', type: :feature do
  before(:each) do
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

        # See created_at next to each brand
        
        expect(page).to have_content(@brand_1.created_at)
        expect(page).to have_content(@brand_1.created_at)
      end

      it 'shows brands ordered by most recently created' do
        # As a visitor
        # When I visit the parent index,
        # I see that records are ordered by most recently created first
        
        visit "/brands"
        expect(@brand_2.name).to appear_before(@brand_1.name)
        expect(@brand_1.name).to_not appear_before(@brand_2.name)
      end
    #   As a visitor
    #   When I visit any page on the site
    #   Then I see a link at the top of the page that takes me to the Child Index
      it 'shows the watch index page link at the top of the page' do
        visit "/brands"
        expect(page).to have_link("All Watches")
      end
    end
  end
end
