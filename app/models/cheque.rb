require 'linguistics'
Linguistics::use(:en)

class Cheque < ActiveRecord::Base
  validates :payment_date, presence: true
  validates :recipient, presence: true
  validates :value, presence: true

  def value_to_words
    # Split the value and convert the dollar/cent components to plain English
    value_array = value.to_s.split('.')
    dollar_comp = value_array[0].en.numwords.delete(',')
    cents_comp = value_array[1].en.numwords

    # Capitalise important words
    def capitalise_words(sentence, split_on=nil, join_with=' ')
      sentence.split(split_on).each { 
        |word| word.capitalize! unless word == 'and'
      }.join(join_with)
    end
    
    return capitalise_words(dollar_comp) + ' dollars and ' + 
      capitalise_words(cents_comp, split_on='-', join_with='-') + ' cents'
  end
end
