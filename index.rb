# 
# This module provides unit conversion.  The main public name is
# the method ratio, which gives the ratio of two dimensioned expressions, 
# or throws an exception if they do not conform.  The exceptions are also
# public, as are the BaseUnit and ConvertableUnit classes, which can be used
# to add conversion information to the module.
#
#   TxUnits.ratio(from, to)

require_relative 'unit_converter_class.rb'


print "You have: "
while from = gets
  from.chomp!
  break if from == ""

  print "You want: "
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

