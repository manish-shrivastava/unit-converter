# 
# This module provides unit conversion.
#
#   TxUnits.ratio(from, to)

require_relative 'unit_converter_class.rb'


print "Convert (i.e. 1000g): "
while from = gets
  from.chomp!
  break if from == ""

  print "You want to convert into: "
  to = gets.chomp
  break if to == ""

  begin
    result = TxUnits.ratio(from.clone, to.clone)
    print from, " = ", result, " ", to, "\n"

  rescue Exception
    #Exception isn't the default; StandardError is, which is a subclass of Exception.
    print "Failed: #{$!}\n"
  end

  print "You have: "
end

