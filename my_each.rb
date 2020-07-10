require_relative

class Array
  def my_each
    if block_given?
      i = self.count-1
      n = 0
      while n <= i
        yield(self[n])
        n += 1
      end
    else return self
  end
end

array = [1,2,3,4,5,6]
array.my_each { |element| puts element + 1 }