class Numeric
 @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1}#conversion rates are standard and given with base of dollars
 def method_missing(method_id)
   singular_currency = method_id.to_s.gsub( /s$/, '')
   if @@currencies.has_key?(singular_currency)
     self * @@currencies[singular_currency]# currency in dollars
   else
     super
   end
 end
 def in(val)#operating on second part of method .in to convert the dollars to required currency
 singular_currency = val.to_s.gsub( /s$/, '')
   if @@currencies.has_key?(singular_currency)
     self * (1/@@currencies[singular_currency])
    else
     super
   end
 end
end

puts 5.euros.in(:yen)
puts 5.dollars.in(:euros)
puts 10.euros.in(:rupees)
puts 100.dollars.in(:rupees)