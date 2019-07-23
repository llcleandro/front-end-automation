class Signup_Form < SitePrism::Page
  element :email_create, '#email_create'
  element :create_account_button, '#SubmitCreate'
  element :my_title, '#id_gender1'
  element :my_first_name, '#customer_firstname'
  element :my_last_name, '#customer_lastname'
  element :my_email, '#email'
  element :my_password, '#passwd'
  element :my_address, '#address1'
  element :my_city, '#city'
  element :my_state, '#uniform-id_state'
  element :my_zip, '#postcode'
  element :my_mobile_phone, '#phone_mobile'
  element :register_button, '#submitAccount'

  def initialize
    @signup_data = DEFAULT_DATA['signup']
    @messages = DEFAULT_DATA['messages']
  end

  def submit_create
  	@timestamp = DateTime.now.strftime('%Q').to_s #for generate mock email
  	@fake_email = @timestamp + @signup_data["email"]
  	email_create.set @fake_email
    create_account_button.click
    puts "ATENTION! Generate mock email: #{@fake_email}"
    puts "Use password: #{@signup_data["password"]}"
  end

  def submit_invalid_email
    email_create.set @signup_data["email"]
    create_account_button.click
  end

  def imput_data
    my_title.click
    my_first_name.set @signup_data["first-name"]
    my_last_name.set @signup_data["last-name"]
    my_password.set @signup_data["password"]
    my_address.set @signup_data["adress"]
    my_city.set @signup_data["city"]
    my_state.select @signup_data["state"]
    my_zip.set @signup_data["zip"]
    my_mobile_phone.set @signup_data["phone-mobile"]
  end

  def submit_form
  	register_button.click
  end

  def validation_signup
  	@user_name = @signup_data["first-name"] + " " + @signup_data["last-name"]
  	within (".account") do
	    page.has_content?(@user_name)	
    end
  end

  def validation_message (messageError)
    @output_message = @messages["email-already"]
    within ('#create_account_error') do
      page.has_content? (@output_message)
    end
  end
end