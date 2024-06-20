require 'benchmark/ips'

Benchmark.ips do |bench_mark|
  arr = (0..100000).to_a

  bench_mark.report "flat_map" do
    arr.flat_map { |x| [x, x * x] }
  end

  bench_mark.report "map.flatten" do
    arr.map { |x| [x, x * x] }.flatten
  end

  bench_mark.compare!
end
