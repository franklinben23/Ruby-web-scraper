require_relative '../lib/scraper'

describe Scraper do
  describe '.scraper' do
    context 'the class is instantiated correctly'
    it 'runs the program correctly, makes it a instance of scraper' do
      profession = 'developer'
      ar = Scraper.new(profession)
      expect(ar).to be_instance_of(Scraper)
    end

    context 'the class is instantiated incorrectly'
    it 'does not run the program, there is nothing to instantiate' do
      profession = 'developer'
      expect(profession).not_to be_instance_of(Scraper)
    end
  end
end
