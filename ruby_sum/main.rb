require 'benchmark'
require 'faster_sum'

module RubySum
  def self.sum_integers(max)
    # Max integer in ruby
    sum = 0
    (1..max).each do |i|
      sum += i
    end

    sum
  end
end

Benchmark.bmbm do |x|
  x.report {
    sum = FasterSum.sum_integers(2147483647)
    puts "The sum of all integers up to 2147483647 is #{sum} with a Rust C extension"
  }

end

Benchmark.bmbm do |x|
  x.report {
    sum = RubySum.sum_integers(2147483647)
    puts "The sum of all integers up to 2147483647 is #{sum} with pure ruby"
  }
end
