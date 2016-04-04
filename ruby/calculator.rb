def calculate(x, op, y)
  p x.send(op, y)
end

calculate(2, '+', 4)
calculate(2, '-', 4)
calculate(2, '*', 4)
calculate(2, '/', 4)