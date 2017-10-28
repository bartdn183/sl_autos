require 'rails_helper'

RSpec.describe CarPicture, type: :model do
 	it 'is invalid without an car id' do
 		car_pic = build(:invalid_car_picture)
 		expect(car_pic).not_to be_valid
 		#expect(car_pic.save).to eq(false)
 		#expect(car_pic.errors[:car_id]).to include("Can't be blank")
 	end

 	it 'is valid with a car id' do
 		car_pic = CarPicture.new(car_id: 1)
 		expect(car_pic).to be_valid
 	end

 	it 'has a valid Car Picture factory' do 
 		expect(FactoryBot.build(:valid_car_picture)).to be_valid
 	end
end
