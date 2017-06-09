#write your code here
def add(first, second)
  first + second
end

def subtract(first, second)
  first - second
end

def sum(sum_this)
  sum_this.inject(0) {|x, y| x + y}
end
