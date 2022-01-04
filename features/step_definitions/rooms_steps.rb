module RoomsSH
end
World RoomsSH

module FormSH
  def submit_form
    find('input[type="submit"]').click
  end
end
World FormSH

Given 'I am viewing the rooms' do
  visit root_path
end

When 'I create a room' do
  click_link "New"
  fill_in "room_name", with: Faker::Name.name
  submit_form
end

Then 'I should see the new room' do
  expect(page).to have_css("#room_#{Room.last.id}")
end



