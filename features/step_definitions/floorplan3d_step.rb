# frozen_string_literal: true

When('I click on Preview in 3D button') do
  click_on('Preview in 3D')
  switch_to_window(windows.last)
  sleep 3
end

When('I click on Add Items') do
  find('#items_tab a').click
end

When('I click on the {string} item on the add items page') do |string|
  item = find("[model-name='#{string}']", wait: 10)
  item.click
  sleep 3
end

Then('I should see {string} added to the db') do |string|
  item = Item.find_by(name: string)
  print(item)
  expect(item).not_to be_nil
end
