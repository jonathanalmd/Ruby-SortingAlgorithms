
require_relative 'sort'

# tells RSpec what code you're writing tests for
describe Sort do 
  # tests inside
  # every 'it' (method) is a test
  # takes a String as a parameter: description of the feature that are being testing
  it 'should create Sort instance' do
    # 'expect' (method) marks an assertion we are trying to make about the code we're testing
    # try to assert that the return value from 'Sort.new' meets some criteria
    expect(Sort.new).to be_a Sort
    # call 'to' (method) on the object returnd from our call to the 'expect' method
    # 'to' (method) is a matcher -> using 'be_a' matcher
    # it will run the code 'sort.is_a? Sort' where sort is the value passed to the 'expect' (method)
  end

  describe 'bubble_sort' do
    # describing bubble_sort (class method) method of the Sort class
    it 'returns sorted array' do
      expect(Sort.bubble_sort([5,2,4,3,1])).to eq([1,2,3,4,5])
      # makes sure that 'bubble-sort' returns a sorted array
    end

    it 'returns sorted array' do
      expect(Sort.bubble_sort([1,2,3,4,5])).to eq([1,2,3,4,5])
    end

  end

  describe 'recursive_bubble_sort' do
    # describing recursive_bubble_sort (class method) method of the Sort class
    it 'returns sorted array' do
      expect(Sort.recursive_bubble_sort([5,2,4,3,1],5)).to eq([1,2,3,4,5])
    end

    # describing recursive_bubble_sort (class method) method of the Sort class
    it 'returns sorted array' do
      expect(Sort.recursive_bubble_sort([1,2,3,4,5],5)).to eq([1,2,3,4,5])
    end

  end

  describe 'selection_sort' do
    # describing selection_sort (class method) method of the Sort class
    it 'returns sorted array' do
      expect(Sort.selection_sort([5,2,4,3,1])).to eq([1,2,3,4,5])
    end

    it 'returns sorted array' do
      expect(Sort.selection_sort([5,2,4,3,1])).to eq([1,2,3,4,5])
    end

  end

  describe 'recursive_selection_sort' do
    # describing selection_sort (class method) method of the Sort class
    it 'returns sorted array' do
      expect(Sort.recursive_selection_sort([5,2,4,3,1],5)).to eq([1,2,3,4,5])
    end

    it 'returns sorted array' do
      expect(Sort.recursive_selection_sort([1,2,3,4,5],5)).to eq([1,2,3,4,5])
    end

  end

  describe 'insertion_sort' do
    # describing selection_sort (class method) method of the Sort class
    it 'returns sorted array' do
      expect(Sort.insertion_sort([5,2,4,3,1])).to eq([1,2,3,4,5])
    end

    it 'returns sorted array' do
      expect(Sort.insertion_sort([1,2,3,4,5])).to eq([1,2,3,4,5])
    end

  end

  describe 'recursive_insertion_sort' do
    # describing selection_sort (class method) method of the Sort class
    it 'returns sorted array' do
      expect(Sort.recursive_insertion_sort([5,2,4,3,1],5)).to eq([1,2,3,4,5])
    end

    it 'returns sorted array' do
      expect(Sort.recursive_insertion_sort([1,2,3,4,5],5)).to eq([1,2,3,4,5])
    end

  end

end
