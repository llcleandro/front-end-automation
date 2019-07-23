
Before do
  @signup_form = Signup_Form.new
end

After do |scenario|
  Capybara.reset_sessions!
end