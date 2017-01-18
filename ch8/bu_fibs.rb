def fibs(n)
  return 0 if n == 0
  a = 0
  b = 1
  (2..n).each do |i|
    c = a + b
    a = b
    b = c
  end
  return a + b
end

p fibs(5)
