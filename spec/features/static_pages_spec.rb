require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
#      expect(page).to have_text("Sample App")
      expect(page).to have_selector('h1', :text => "Sample App")
    end

    it "should have the right title" do
      visit '/static_pages/home'
#      expect(page).to have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Home")
      expect(first('title').native.text).to eq "Ruby on Rails Tutorial Sample App | Home"
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
#      expect(page).to have_text("Help")
      expect(page).to have_selector('h1', :text => "Help")
    end

    it "should have the right title" do
      visit '/static_pages/help'
#      expect(page).to have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")
      expect(first('title').native.text).to eq "Ruby on Rails Tutorial Sample App | Help"
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
#      expect(page).to have_text("About Us")
      expect(page).to have_selector('h1', :text => "About Us")
    end

    it "should have the right title" do
      visit '/static_pages/about'
#      expect(page).to have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About")
      expect(first('title').native.text).to eq "Ruby on Rails Tutorial Sample App | About Us"
    end
  end



end