# 题目：古典问题：有一对兔子，从出生后第3个月起每个月都生一对兔子，小兔子长到第三个月后每个月又生一对兔子，假如兔子都不死，问每个月的兔子对数为多少？

def fun n

  if n == 1 or n == 2
    1
  else
    fun(n - 1) + fun(n - 2)
  end

end

puts fun(10)

