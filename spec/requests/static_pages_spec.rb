require 'spec_helper'

describe "StaticPages" do
  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Nomicator') }
    it { should have_title('Welcome') }

  end

  describe "About" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title('Nomicator | About') }
  end

end
