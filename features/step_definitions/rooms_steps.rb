module RoomsSH
  def create_room(name: nil)
    name ||= Faker::Name.name
    Room.create!(name: name)
  end
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

Given 'I am in the room' do
  visit room_path @room
end

Given 'there is a room' do
  @room = create_room
end

Given 'I am editing the room' do
  visit edit_room_path(@room)
end

Given 'there is a room foo' do
  @room = create_room(name: 'foo')
end

When 'I create a room' do
  click_link "New"
  fill_in "room_name", with: Faker::Name.name
  submit_form
end

When 'I change the room name to bar' do
  fill_in "room_name", with: 'bar'
  submit_form
end

Then 'I should see the new room' do
  expect(page).to have_css("#room_#{Room.last.id}")
end

Then 'the room should be named bar' do
  expect(page).to have_css('.room__name', text: 'bar')
end



