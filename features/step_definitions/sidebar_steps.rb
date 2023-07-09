# frozen_string_literal: true
Then(/^I should see a sidebar titled "(.*?)" above sidebar titled "(.*?)"$/) do |top_title, bottom_title|
  expect(page).to have_css %Q(.sidebar_section:contains('#{top_title}') + .sidebar_section:contains('#{bottom_title}'))
end
