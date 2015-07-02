class EvenFibonacci

  def initialize(limit)
    @limit = limit
    @starting_sequence_array = [1,2]
  end

  def sum
    while (@starting_sequence_array[-2] + @starting_sequence_array[-1]) < @limit
     @starting_sequence_array << (@starting_sequence_array[-2] + @starting_sequence_array[-1])
    end
    @starting_sequence_array.select{|i| i.even?}.inject(:+)
  end

end
