
class Debug

  def self.print(msg)
    File.open('debug.txt', 'a') do | f |
      f.puts '@@@@@@@@@@'
      f.puts msg
      f.puts '@@@@@@@@@@'
    end
  end

end
