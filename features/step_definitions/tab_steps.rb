# frozen_string_literal: true
Then(/^the "([^"]*)" tab should be selected$/) do |name|
  step %{I should see "#{name}" within "ul#tabs li.current"}
end

Then("I should see tabs:") do |table|
  table.rows.each do |title, _|
    step %{I should see "#{title}" within ".page-content-container .tabs .nav"}
  end
end

Then("I should see tab content {string}") do |string|
  step %{I should see "#{string}" within ".page-content-container .tabs .tab-content"}
end

Then("I should not see tab content {string}") do |string|
  step %{I should not see "#{string}" within ".page-content-container .tabs .tab-content"}
end
