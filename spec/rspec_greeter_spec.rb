require 'spec_helper'
 
describe 'RSpecGreeter' do
  it 'RSpecGreeter#greet()' do
    greeter  = RSpecGreeter.new         # Given
    greeting = greeter.greet            # When
    expect(greeting).to eq('Hello RSpec!')  # Then
  end

  context 'when hash is empty' do
    let(:my_hash) { Hash.new }

    it 'has 0 size' do
      expect(my_hash.size).to eq(0)
    end 
  end

  context 'when hash contains 2 elements' do
    let(:my_hash) { {"a" => 1, "b" =>2} }

    it 'has a size of 2' do
      expect(my_hash.size).to eq(2)
    end 
  end

  context 'when there are two hashes with the same elements' do
    let(:hash_one) { {"a" => 1, "b" =>2} }
    let(:hash_two) { {"a" => 1, "b" =>2} }

    it 'they are equal' do
      expect(hash_one == hash_two).to be_truthy
    end 
  end

  context 'when there are two hashes with differing elements' do
    let(:hash_one) { {"a" => 1, "b" =>2} }
    let(:hash_two) { {"a" => 1, "c" =>3} }

    it 'they are equal' do
      expect(hash_one == hash_two).to be_falsy
    end 
  end
end
