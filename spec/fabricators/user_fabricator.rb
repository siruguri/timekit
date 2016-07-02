class User; end

Fabricator(:user) do
  first_name { Faker::Name.first_name }
  last_name { Faker::Name.last_name }
  email do |attrs|
    "#{attrs[:first_name].parameterize}-"\
      "#{attrs[:last_name].parameterize}@example.com"
  end
  timezone { %w(America/Toronto America/Los_Angeles).sample }
end
