class CheckoutPage
	extend Capybara::DSL
	include Capybara::DSL

	def name(name)
		fill_in("order_name", with: name)
	end

	def address(address)
		fill_in("order_address", with: address)
	end

	def email(email)
		fill_in("order_email", with: email)
	end

	def pay_type(pay_type)
		select(pay_type, from: 'order_pay_type')
	end

	def place_order
		find("input[value='Place Order']").click
	end

end
