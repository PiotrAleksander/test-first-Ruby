def reverser
  yield.split(' ').map(&:reverse).join(' ')
end

def adder(num=1)
  yield + num
end

def repeater(n=1)
  n.times do 
  yield
  end
end