module RoomsSH
end
World RoomsSH

Given 'I am viewing the rooms' do
  visit root_path
end

When 'I create a room' do
  binding.b
  fill_in "room_name", with: Faker::Lorem.word
end



