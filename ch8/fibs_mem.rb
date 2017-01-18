def fibs(n)
  return mem_fib(n, Array.new(n + 1))
end

def mem_fib(n, arr)
  return n if (n == 0 || n == 1)
  if arr[n] == nil
    arr[n] = mem_fib(n - 1, arr) + mem_fib(n - 2, arr)
  end
  return arr[n]
end

p fibs(7)
