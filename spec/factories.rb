FactoryGirl.define do
  factory :user do
    username "Raipe"
    password "Timo"
    password_confirmation "Timo"
  end


  factory :event do
    name "Jalkapalloa"
    preview "Pelataan jalkapalloa keravan asemalla."
  end


end