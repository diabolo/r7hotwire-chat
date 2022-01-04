module WelcomeSH
end
World WelcomeSH

When 'I visit the application' do
  visit root_path
end

Then 'I should see the rooms' do
  expect(page).to have_css('.rooms')
end
