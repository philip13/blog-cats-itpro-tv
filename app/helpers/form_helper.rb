module FormHelper
  def inline_error_messages record, symbol
    htm_return = ""
    unless record.errors.messages[symbol].empty?
      record.errors.messages[symbol].each do |m|
        htm_return ="<p class='text-red-500'> #{m} </p>"
      end
    end
    htm_return
  end
end

