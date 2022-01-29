# frozen_string_literal: true

module Enumerable
  # Your code goes here
  def my_each_with_index
    for i in 0...size
      yield(self[i], i)
    end

    self
  end

  def my_select
    arr = []

    for i in 0...size
      arr << self[i] if yield(self[i])
    end

    arr
  end

  def my_all?
    result = true

    for i in 0...size
      result = false unless yield(self[i])
    end

    result
  end

  def my_any?
    result = false

    for i in 0...size
      result = true if yield(self[i])
    end

    result
  end

  def my_none?
    result = true

    for i in 0...size
      result = false if yield(self[i])
    end

    result
  end

  def my_count
    return size unless block_given?

    count = 0

    for i in 0...size
      count += 1 if yield(self[i])
    end

    count
  end

  def my_map
    arr = []

    for i in 0...size
      arr << yield(self[i])
    end

    arr
  end

  def my_inject(initial_value = 0)
    value = initial_value

    for i in 0...size
      value = yield(self[i], value)
    end

    value
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    for i in 0...size
      yield(self[i])
    end

    self
  end
end
