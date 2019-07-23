
When("I insert {string} in search field") do |searchWord|
  fill_in('search_query', :with => searchWord)
end

When("I click in search button") do
  click_button('submit_search')
end

Then("I see the message {string}") do |message|
  page.has_content?(message)
end

Then("I see the message {string}{string}") do |message, term|
  page.has_content?(message+term)
end

Then("I see in the list of results the item {string}") do |item|
  within (".product_list") do
  	page.has_content?(item)	
  end
end

Then("I see in the list of results items with color {string} available") do |collor|
  within (".product_list") do
  	has_xpath? ('//*[@id="color_19"]')	
  end
end

Then("I click in item of result") do
  within (".product_list") do
  	find(".product-image-container").click
  end
end

Then("I see in the description of item the term {string}") do |term|
  within ("#short_description_content") do
  	expect(page).to have_text term
  end
end

When("I click in suggestion of search field") do	
  sleep 1
  within (".ac_results") do
  	@clicked_item = find(".ac_even").text
  	find(".ac_even").click
  	print "Clicked item: #{@clicked_item}"
  end
end

Then("I see the productPage of clicked item") do
  within (".breadcrumb") do
  	expect(page).to have_text "Women>Tops>Blouses>Blouse"
  end
end