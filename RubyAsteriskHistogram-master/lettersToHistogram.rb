class MyString

  def initialize (inString="hello, World!")
    @str=inString
  end

  def frequency
    @letters = @str.downcase.each_char.reduce(Hash.new(0)) { |h,w| h[w]+=1; h}
  end

  def histogram
    frequency()
    ("a".."z").each do |letter|
      i=0
      lineDown=""
      while i<@letters[letter]
        lineDown="#{lineDown}*"
        i = i + 1
      end
      puts "#{letter}: #{lineDown}"
    end
  end
  private:frequency
  attr_accessor :str
  attr_reader :letters
end
mstr = MyString.new("This is an example of a string, there are a lot of characters so there should be alot of asterisks. Thank you for reading this string");
mstr.histogram()
