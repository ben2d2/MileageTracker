Fabricator(:subcontractor) do
  email { sequence(:email) { |i| "subcontractor#{i}@example.com" } }
  password "password"
  password_confirmation "password"
  first_name "Ben"
  last_name "Bridges"
  phone "555-555-5555"
  id { sequence(:id) { |i| "#{i}" } }
end
