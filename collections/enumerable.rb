class Colors
  include Enumerable

  def each
    yield "red"
    yield "blue"
    yield "yellow"
  end

end

c = Colors.new

puts c.map{ |i| i.reverse }
