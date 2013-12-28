def euler_02
  a,b = 1,1
  result = 0
  while a < 4000000
    a,b = b, a+b
    if (a.modulo 2) == 0
      result += a
    end
  end
  return result
end
      
