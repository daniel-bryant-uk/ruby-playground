require 'spec_helper'

describe 'Car' do

  subject do
    Car.new('my car', '2L')
  end

  describe 'the accessors for Car' do

    it 'should allow the retrieval of name' do
      expect(subject.name).to eq('my car')
    end
  end

  describe 'two cars with the same properties are equal' do
    it 'should be equal' do
      my_second_car = Car.new('my car', '2L')
      expect(my_second_car == subject).to be true
    end
  end

end