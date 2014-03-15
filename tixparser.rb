class TixParser

  def parse
    f = File.new("./input.txt", 'r')
    balance = 0.to_f
    while line = f.gets
      cash = line.split.last
      next if cash == nil
      if cash[0] == "+"
        if cash[1] == "$"
          balance += cash[2,cash.length-1].to_f
        else
          balance += cash[1,cash.length-1].to_f
        end
      elsif
         if cash[1] == "$"
          balance -= cash[2,cash.length-1].to_f
        else
          balance -= cash[1,cash.length-1].to_f
        end
      else
        puts "Error at: #{line}"
      end     
    end
    balance
  end

end

puts TixParser.new.parse