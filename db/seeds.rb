# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Watch.destroy_all
Brand.destroy_all

Brand.create([
  {name: "Seiko", year_founded: 1881, country: "Japan"},
  {name: "Rolex", year_founded: 1905, country: "UK"},
  {name: "Tudor", year_founded: 1926, country: "Switzerland"},
  {name: "Omega", year_founded: 1848, country: "Switzerland"}]
)

Watch.create([
  {model: "Prospex Speedtimer", bracelet: "Oyster", movement: "VK63", case_material: "Stainless Steel", case_size: 39, crown_guard: true, brand_id: Brand.find_by(name: "Seiko").id},

  {model: "Presage", bracelet: "Oyster", movement: "WWX4", case_material: "Stainless Steel", case_size: 40, crown_guard: false, brand_id: Brand.find_by(name: "Seiko").id},

  {model: "DateJust", bracelet: "Jubilee", movement: "3235", case_material: "Stainless Steel", case_size: 36, crown_guard: false, brand_id: Brand.find_by(name: "Rolex").id},

  {model: "DayDate", bracelet: "Jubilee", movement: "1106", case_material: "Stainless Steel", case_size: 42, crown_guard: false, brand_id: Brand.find_by(name: "Rolex").id},

  {model: "Black Bay Heritage 58", bracelet: "Oyster", movement: "3235", case_material: "316L", case_size: 39, crown_guard: false, brand_id: Brand.find_by(name: "Tudor").id},

  {model: "Pelagos", bracelet: "Oyster", movement: "142L", case_material: "Stainless Steel", case_size: 38, crown_guard: true, brand_id: Brand.find_by(name: "Tudor").id},

  {model: "Seamaster 300m", bracelet: "Oyster", movement: "A8900", case_material: "316L", case_size: 43, crown_guard: false, brand_id: Brand.find_by(name: "Omega").id},

  {model: "SpeedMaster", bracelet: "Oyster", movement: "4KZ2", case_material: "Stainless Steel", case_size: 41, crown_guard: false, brand_id: Brand.find_by(name: "Omega").id}
])

