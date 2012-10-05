require 'spec_helper'
 
describe "StaticPages" do

	let (:base_title) {"Ruby on Rails Tutorial Sample App"}

	describe "Home Page" do

		it "Should have the h1 'Sample App'" do
			visit '/static_pages/home'
			page.should have_selector('h1', :text => 'Sample App')
		end

		it "Should have the right title 'Home'"do
			visit '/static_pages/home'
			page.should have_selector('title', :text =>
				"#{base_title}")
		end

		it "Should not have a custom page title"do
			visit '/static_pages/home'
			page.should_not have_selector('title', :text => '| Home')
		end
	end

	describe "Help Page"do
		it "Should have the h1 'Help'"do
			visit '/static_pages/help'
			page.should have_selector('h1', :text => 'Help')
		end

		it "Should have the right title 'Help'"do
			visit '/static_pages/help'
			page.should have_selector('title', :text => 
				"#{base_title} | Help")
		end
	end

	describe "About Page"do
		it "Should have the h1 'About Us'"do
			visit '/static_pages/about'
			page.should have_selector('h1', :text => 'About Us')
		end

		it "Should have the right title 'About Us'"do
			visit '/static_pages/about'
			page.should have_selector('title', :text => 
				"#{base_title} | About Us")
		end
	end

	describe "Contact Page"do
		it "Should have the h1 'Contact Us'"do
			visit '/static_pages/contact'
			page.should have_selector('h1', :text => 'Contact Us')
		end

		it "Should have the right title 'Contact Us'"do
			visit '/static_pages/contact'
			page.should have_selector('title', :text => 
				"#{base_title} | Contact Us")
		end
	end
end
