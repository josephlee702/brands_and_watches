require 'rails_helper'

RSpec.describe 'the watches show page' do
#   User Story 1, Parent Index 

#   For each parent table
#   As a visitor
#   When I visit '/parents'
#   Then I see the name of each parent record in the system

    it 'displays the watch model' do
      watch = Watch.create(brand_id:1, model: "Prospex Speed Timer", bracelet: "Jubilee", movement: "Solar Quartz", case_material: "Stainless Steel", case_size: 39, crown_guard: false)
      visit "/watches/#{watch.id}"
  end

  describe '#method_name' do
    it 'displays the brand of the watch' do
    end
  end
end