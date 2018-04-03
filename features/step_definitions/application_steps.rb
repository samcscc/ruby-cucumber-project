# Given(/^I am on the auto repair financial page$/) do
#   visit(BasePage) do |page|
#     page.include_text('Log In')
#   end
# end
#
# When(/^I enter login details$/) do
#   on(BasePage) do |page|
#     page.log_in_with(USERNAME, PASSWORD)
#   end
# end
#
# Then(/^I should be landing on the see the results$/) do
#   on(HomePage) do |page|
#     page.include_text('Welcome')
#   end
# end

Given(/^I am logged in as (.*)$/) do |usertype|
  visit(BasePage) do |page|
    page.include_text('Log In')
  end
  if usertype == 'superuser'
    on(BasePage) do |page|
      page.log_in_with(USERNAME, PASSWORD)
    end
  elsif usertype == 'dealer'
    on(BasePage) do |page|
      page.log_in_with(USERNAME1, PASSWORD1)
    end
  else
    on(BasePage) do |page|
      page.log_in_with(USERNAME2, PASSWORD2)
    end
  end
end
Then(/^I should see the (.*) homepage$/) do |usertype|
  if usertype == 'superuser'
    on(SuperUserPage) do |page|
      page.include_text('Welcome')

      # verifying the "admin homepage" link in Superuser page.
      page.verify_superpage()
    end
  elsif usertype == 'dealer'
    on(DealerPage) do |page|
      page.include_text('Welcome')

      #verifying the "Calculator button" on Dealer page.
      page.verify_homepage()
    end
  else
    on(LenderPage) do |page|
      page.include_text('Welcome')

      #verify "New link/button" on lender page.
      page.verify_lederPage()

    end
  end
end