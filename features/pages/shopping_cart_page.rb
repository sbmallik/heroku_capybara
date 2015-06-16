class ShoppingCartPage
	extend Capybara::DSL
	include Capybara::DSL

	def continue_shopping
		find("input[value='Adopt Another Puppy']").click
	end

	def go_to_checkout
		find("input[value='Complete the Adoption']").click
		CheckoutPage.new
	end

end
