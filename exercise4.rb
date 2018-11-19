
class Paperperson

 def initialize(name)
   @name = name
   @experience = 0
   @earnings = 0
   @quota = 50
 end

 def quota
   @quota + @experience / 2
 end

 def experience
   return @experience
 end

 def deliver(start_address, end_address)
   @experience = start_address - end_address
   if @experience > @quota
     @earnings += @quota * 0.25
     @earnings += (@experience - @quota) * 0.5
   elsif @experience < @quota
     @earnings += @experience * 0.25
     @earnings -= 2
   end
 end

 def report
   puts "I'm a #{@name} and I delivered #{@experience} papers and earned $#{@earnings} so far!"
 end

  def experience
    return @experience
  end

  def earnings
    return @earnings
  end

end


sanna = Paperperson.new("Sanna")
sanna.deliver(-14, -88)
sanna.report
