```ruby
Warming up --------------------------------------
  flat_map     5.000 i/100ms
  map.flatten  2.000 i/100ms
Calculating -------------------------------------
  flat_map     67.620 (± 8.9%) i/s -    340.000 in   5.068984s
  map.flatten  30.047 (±13.3%) i/s -    148.000 in   5.028486s

Comparison:
  flat_map:       67.6 i/s
  map.flatten:    30.0 i/s - 2.25x  slower
```
