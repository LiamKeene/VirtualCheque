require 'test_helper'

class ChequeTest < ActiveSupport::TestCase
  test "value to words" do
    @cheque = Cheque.new(payment_date: '2013-07-31', 
      recipient: 'Test Person', value: 1303.48)
    value_in_words = 'One Thousand Three Hundred and Three dollars \
      and Forty-Eight cents'

    assert_equal(value_in_words, @cheque.value_to_words, 
      'Cheque should be able to output currency values in words.')
  end
end
