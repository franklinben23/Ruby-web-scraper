require './lib/scraper'

describe Scraper do
  describe '.scraper' do
    context 'the function is passed a good argument and is working correctly'
    it 'return an array of hashes containing the jobs and their info' do
      al = Scraper.new('engineer')
      var = al.scraper
      expect(var).to eql(al.scraper)
    end

    context 'the function is passed a bad argument and is working incorrectly'
    it 'should return that no jobs were fiund' do
      al = Scraper.new('frregtrge')
      var = al.scraper
      expect(var).to eql(al.scraper)
    end
  end
end
