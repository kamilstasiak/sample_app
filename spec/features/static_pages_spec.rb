require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    before { visit root_path }
    it "should have the content 'Sample App'" do
      expect(page).to have_selector('h1', :text => "Sample App")
    end

    it "should have the right title" do
      expect(first('title').native.text).to eq full_title('')
    end

    it "should not have a custom page title" do
      expect(first('title').native.text).not_to include "| Home"
    end
  end

  describe "Help page" do
    before { visit help_path }
    it "should have the content 'Help'" do
      expect(page).to have_selector('h1', :text => "Help")
    end

    it "should have the right title" do
      expect(first('title').native.text).to eq full_title("Help")
    end
  end

  describe "About page" do
    before { visit about_path }
    it "should have the content 'About Us'" do
      expect(page).to have_selector('h1', :text => "About Us")
    end

    it "should have the right title" do
      expect(first('title').native.text).to eq full_title("About Us")
    end
  end

  describe "Contact page" do
    before { visit contact_path }
    it "should have the content 'Contact'" do
      expect(page).to have_selector('h1', :text => "Contact")
    end

    it "should have the right title" do
      expect(first('title').native.text).to eq full_title("Contact")
    end
  end

end