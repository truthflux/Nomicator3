require 'spec_helper'

describe "UserPages" do

  subject { page }

  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { should have_content(user.name) }
    it { should have_title(user.name) }
  end


  describe "signup page" do
    before { visit signup_path }

    it { should have_content('Sign up') }
    it { should have_title('Sign up') }

  end

  describe "signup" do
    before { visit signup_path }

    let(:submit) { "Create account" }

    describe "with no info" do
      it "should not create an account" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid sample info" do


      before do
        fill_in "Name", with: "Ernst Haddock"
        fill_in "user_email", with: "haddock@example.com"
        fill_in "user_password", with: "foobar"
        fill_in "user_password_confirmation", with: "foobar"
      end

      it "should create an account" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
    end
  end
end
