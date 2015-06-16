class DetailsPage
	extend Capybara::DSL
	include Capybara::DSL

	def start_checkout
		find("input[value='Adopt Me!']").click
		ShoppingCartPage.new
	end

end
