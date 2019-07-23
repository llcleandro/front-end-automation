Given("I acess the {string} sign in page") do |signinPage|
  visit (signinPage)
end

When("I insert email and submit create") do
  @signup_form.submit_create
end

When("I insert data form") do
  @signup_form.imput_data
end

When("I submit form") do
  @signup_form.submit_form
end

When("show user authenticated in home page") do
  @signup_form.validation_signup
end

When("I insert {string} email and submit to create") do |typeEmail|
  case typeEmail
   when "valid" 
   	@signup_form.submit_create
   when "used"
   	@signup_form.submit_invalid_email 
  end
end

Then("show message error: {string}") do |messageError|
  @signup_form.validation_message (messageError)
end