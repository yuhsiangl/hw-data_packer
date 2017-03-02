require 'benchmark'
require './short_string_packer'

bench_results = Benchmark.bm do |bench|
  letters = ('a'..'j').to_a.join
  packed = ShortStringPacker.pack(letters)

  bench.report "pack" do
    100_000.times {
      ShortStringPacker.pack(letters)
    }
  end

  bench.report "unpack" do
    100_000.times {
      ShortStringPacker.unpack(packed)
    }
  end
end
