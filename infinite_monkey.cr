class InfiniteMonkey
  def initialize(words : Array(String))
    @words = words 
  end

  def exec
    i = 1
    strs = %w()
    loop do
      generated = generate
      print generated
      strs = swap(strs, generated)
      break if correct_string == strs.join("")
      i += 1
    end
    puts
    puts
    puts "#{i}回試行しました"
  end

  def generate : String
    @words.sample
  end

  def correct_string : String
    @words.join("")
  end

  def swap(strs : Array(String), str : String) : Array(String)
    rotated = strs.dup
    rotated.shift if rotated.length > (@words.length - 1)
    rotated.push(str)
  end   
end

InfiniteMonkey.new(%w(進捗 どう です か)).exec

