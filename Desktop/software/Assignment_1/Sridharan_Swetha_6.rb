class Dessert
 def initialize(na, cal)
   @name = na
   @calories = cal
 end

 def name=(new_name)
   @name = new_name
 end

 def name
  @name
 end

 def calories=(new_calories)
   @calories = new_calories
 end

 def calories
  @calories
 end

 def healthy?
if @calories < 200
  return true
else 
  return false
 end
end

 def delicious?
return true
 end
end

class JellyBean < Dessert
 def initialize(na,cal,flav)
   super(na,cal)
   @flavor = flav
 end

def flavor=(new_flavor)
   @flavor = new_flavor
end
 
def flavor
@flavor
end

def delicious?
   if @flavor == "black licorice"
return false
   else
return true
   end
 end
end

jel = JellyBean.new("Sundae",450,"Vanilla")
puts jel.delicious?
