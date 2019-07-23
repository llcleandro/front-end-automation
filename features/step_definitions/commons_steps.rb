Given("I acess the {string}") do |page|
	visit ENVIRONMENT[page]
end

Then("I should see the page loaded") do
  page.should have_css(".logo.img-responsive")
end