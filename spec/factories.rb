FactoryGirl.define do
  factory :user do
    name "Captain Haddock"
    email "haddock@example.com"
    password "foobar"
    password_confirmation "foobar"
    admin false
  end
end