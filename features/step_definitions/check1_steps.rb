Given(/^I am on the puppy adoption site$/) do
	@homePage = HomePage.visit('/')
end

When(/^I click the view details button for "([^"]*)"$/) do | name |
	@detailsPage = @homePage.select_puppy
end

When(/^I click the adopt me button$/) do
    @shoppingCartPage = @detailsPage.start_checkout
end

When(/^I click the complete the adoption button$/) do
    @checkoutPage = @shoppingCartPage.go_to_checkout
end

When(/^I enter "([^"]*)" in the name field$/) do | name |
    @checkoutPage.name(name)
end

When(/^I enter "([^"]*)" in the address field$/) do | address |
	@checkoutPage.address(address)
end

When(/^I enter "([^"]*)" in the email field$/) do | email |
	@checkoutPage.email(email)
end

When(/^I select "([^"]*)" from the pay type dropdown$/) do | pay_type |
	@checkoutPage.pay_type(pay_type)
end

When(/^I click the Place Order button$/) do
	@checkoutPage.place_order
end

Then(/^I should see "([^"]*)"$/) do | message |
    expect(@homePage.text).to include message
end
