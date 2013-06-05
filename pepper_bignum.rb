
def fact(n)
  if n == 0
    1
  else
    n * fact(n-1)
  end
end

def fact_acc(n, acc)
	if n == 0
		acc
	else
		fact_acc(n-1, n*acc)
	end
end

puts fact(400)
puts fact_acc(400,1)
