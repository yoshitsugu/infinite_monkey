class InfiniteMonkey
  def initialize(words : Array(String))
    @words = words 
  end

  def exec
    i = 1
    loop do 
      generated_string = generate
      print generated_string
      print ' '
      break if correct_string == generated_string
      i += 1
    end
    puts
    puts "#{i}回試行しました"
  end

  def generate : String
    result = ""
    @words.length.times do 
      result += @words.sample
    end
    result
  end

  def correct_string : String
   @words.join("")
  end
end

InfiniteMonkey.new(%w(進捗 どう です か)).exec

