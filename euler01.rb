def mod_3_or_5(n)
  "Is number divisible by 3 or 5?"
  (n.modulo 3) == 0 or (n.modulo 5) == 0
end

def euler_01
  (1..999).select {|i| mod_3_or_5 i}.inject(:+)
end








