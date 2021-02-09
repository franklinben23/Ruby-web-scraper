# rubocop:disable Metrics/LineLength
class Validation
  attr_accessor :options
  def initialize
    @options = ['physical therapist', 'clinic manager', 'applications engineer', 'program manager', 'accounting manager', 'finance manager', 'salesforce develper', 'operations manager', 'HR manager', 'nursing manager', 'business development manager', 'strategy manager', 'virtual cooking assistant', 'software engineer', 'data engineer', 'devops engineer', 'product manager', 'data scientist', 'java developer', 'front-end engineer']
  end

  def display
    puts @options
  end

  def validator(input)
    @options.any?(input)
  end
end
# rubocop:enable Metrics/LineLength
