Fabricator(:admin_user) do
  email "admin@example.com"
  password "password"
  id { sequence(:id) { |i| "#{i}" } }
end
