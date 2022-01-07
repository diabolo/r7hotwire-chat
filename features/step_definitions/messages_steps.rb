module MessageSH
end
World MessageSH

When 'I add a new message' do
  click_link "New Message"
  @message_content  = Faker::Lorem.sentence
  fill_in :message_content, with: @message_content
  submit_form
end

Then 'I should see my new message' do
  expect(page).to have_css('#messages .message', text: /#{@message_content}/)
end
