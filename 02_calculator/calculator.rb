def add(m,n)
	m+n
end

def subtract (m,n)
	m-n
end

def sum(arr)
	suma = 0
	arr.each {|x| suma += x}
	suma
end
	
def multiply(num)
	num.inject(:*)
end	

def power(x,y)
	x**y
end

def factorial(x)
  if x <= 1
    1
  else
    x * factorial(x-1)
  end
end