require 'spec_helper'

describe "StaticPages" do
  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Nomicator') }
    it { should have_title('Nomicator | Welcome') }

  end

  describe "About" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title('Nomicator | About') }
  end

  it "should have the right links in the navbar" do
    visit root_path
    click_link "About"
    expect(page).to have_title('Nomicator | About')
    click_link "Sign in"
    expect(page).to have_title('Nomicator | Sign up')
  end

end


