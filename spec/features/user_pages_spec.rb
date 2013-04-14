require 'spec_helper'

describe "User pages" do

  describe "signup page" do
    before { visit signup_path }

    it "should have the content 'Sign up'" do
      expect(page).to have_selector('h1', text: 'Sign up');
    end

    it "should have right title" do
      expect(first('title').native.text).to eq full_title('Sign up')
    end

  end
end
