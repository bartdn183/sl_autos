FactoryBot.define do
  factory :valid_car_picture, class: CarPicture do
    car_id 1
  end

   factory :invalid_car_picture, class: CarPicture do
    car_id nil
  end
end
