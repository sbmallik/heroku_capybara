class HomePage
	extend Capybara::DSL
	include Capybara::DSL

	def self.visit(path_name)
		page.visit ui_url path_name
		new
	end

	def select_puppy(name = 'Brook')
		index = puppy_names.index(name)
		all("input[value='View Details']")[index].click
		DetailsPage.new
	end

	private

	def puppy_names
		all('.name').map(&:text)
	end

end
