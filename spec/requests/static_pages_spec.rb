require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do

    it "should contain text 'Nomicator'" do
      visit '/static_pages/home'
      expect(page).to have_content('Nomicator')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("Nomicator")
    end
  end

  describe "Help page" do

    it "should contain text 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("Help")
    end

  end

  describe "About page" do

    it "should contain text 'About Nomicator'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Nomicator')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("About")
    end
  end

end
