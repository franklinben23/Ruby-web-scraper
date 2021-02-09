require './lib/validation'

describe Validation do
  describe '.validator' do
    context 'the function is passed one of the supported professions'
    it 'should compare the input with the array of supported prfessions and return true' do
      al = Validation.new
      al.display
      input = 'HR manager'
      puts "Truthy input: #{input}"
      expect(al.validator(input)).to be_truthy
    end

    context 'the function is not passed one of the supported professions'
    it 'should compare the input with the array of supported prfessions and return false' do
      al = Validation.new
      input = 'architect'
      puts "Falsy input: #{input}"
      expect(al.validator(input)).to be_falsy
    end
  end
end
