# 第 1 問: ABC 086 A - Product (100 点)
a,b = 2.times.map{gets.to_i}
c = a * b
if c.odd?
  puts "odd"
else
  puts "even"
end

# # 第 2 問: ABC 081 A - Placing Marbles (100 点)
a = gets.to_s
c = a.split("").map(&:to_i).inject{|result, n| result+n}
puts c

# 第 3 問: ABC 081 B - Shift Only (200 点)
a = gets.split.map(&:to_i)
cnt = 0

 while a.all?(&:even?) do
  cnt += 1
  a = a.map{|a| a / 2}
 end

puts cnt

# 第 4 問: ABC 087 B - Coins (200 点)
a, b, c, x = 4.times.map {gets.to_i}
cnt = 0
(0..a).each do |i|
    (0..b).each do |j|
        (0..c).each do |k|
            cnt += 1 if i * 500 + j * 100 + k * 50 == x
        end
    end
end

puts cnt

# 第 5 問: ABC 083 B - Some Sums (200 点)
    def sum_of_digits(n)
      n.to_s.split("").map(&:to_i).inject{|result, n| result+n}
    end

  N, A, B = 3.times.map{gets.to_i}
  sum = 0

  (0..N).each do |i|
   if sum_of_digits(i)>=A && sum_of_digits(i)<=B
     sum += i
   end
  end

  puts sum
