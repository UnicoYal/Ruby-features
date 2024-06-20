require 'benchmark/ips'

Benchmark.ips do |bench_mark|
  list = (0..100000).to_a

  bench_mark.report "flat_map" do
    list.flat_map do |x|
      [x, x * x]
    end
  end

  bench_mark.report "map.flatten" do
    list.map do |x|
      [x, x * x]
    end.flatten
  end

  bench_mark.compare!
end
