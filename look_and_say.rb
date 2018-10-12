# @param [String] str
# @return [String]
def look_and_say(str)
  return '1' + str if str.length < 2

  result = ''
  times = 1
  repeatable = str[0]
  str = str.slice(1..-1) + ' '
  str.each_char do |c|
    if c == repeatable
      times += 1
    else
      result += times.to_s + repeatable
      times = 1
      repeatable = c
    end
  end
  result
end

str = '1'
10.times do
  puts str
  str = look_and_say(str)
end
