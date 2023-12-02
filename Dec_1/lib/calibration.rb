f = File.open('data.txt', 'r')
a = f.readlines
nums = []
a.each do |line|
  int = line.scan(/[^a-z ]/).join.to_i.to_s
  if int.length == 2
    nums << int.to_i
  elsif int.length != 2
    nums << (int.chars.first + int.chars.last).to_i
  end
end
  puts nums
  puts nums.sum
