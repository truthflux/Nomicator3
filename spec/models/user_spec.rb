require 'spec_helper'

describe User do

  before { @user = User.new(name: "Example User", email: "user@example.com",
                            password: "foobar", password_confirmation: "foobar") }

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:admin) }

  it { should respond_to(:authenticate) }

  it { should be_valid }

  describe "when name is not present" do
    before { @user.name = " " }
    it { should_not be_valid }
  end

  describe "when email is not present" do
    before { @user.email = " " }
    it { should_not be_valid }
  end

  describe "when name is too long" do
    before { @user.name = (0...51).map { ('a'..'z').to_a[rand(26)] }.join }
    it { should_not be_valid }
  end

  describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@expl,com foo_at_example.org athr@bad.]
      addresses.each do |invalid_address|
        @user.email = invalid_address
        expect(@user).not_to be_valid
      end
    end
  end

  describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@expl.com foo_barr-hmm@example.org athr@good.co.uk]
      addresses.each do |valid_address|
        @user.email = valid_address
        expect(@user).to be_valid
      end
    end
  end

  describe "when email address is taken" do
    before do
      duplicate_user = @user.dup
      duplicate_user.email = @user.email.upcase
      duplicate_user.save
    end

    it { should_not be_valid }
  end

  describe "when password is not present" do
    before do
      @user = User.new(name: "Captain Haddock", email: "haddock@example.com",
                       password: " ", password_confirmation: " ")
    end
    it { should_not be_valid }
  end

  describe "when password and confirm don't match" do
    before { @user.password_confirmation = "mismatch" }
    it { should_not be_valid }
  end

  describe "return from authenticate" do
    before { @user.save }
    let(:found_user) { User.find_by(email: @user.email) }

    describe "if authentic pword" do
      it { should eq found_user.authenticate(@user.password)
      }
    end

    describe "if not authentic pword" do
      let(:user_for_invalid_pword) { found_user.authenticate("moop") }
      it { should_not eq user_for_invalid_pword }
      specify { expect(user_for_invalid_pword).to be_false
      }

    end

    describe "with a password that's too short" do
      before { @user.password = @user.password_confirmation = "abcde" }
      it { should be_invalid }
    end

  end

end
