require 'minitest/autorun'
require './short_string_packer'

def random_string
  [*'a'..'z'].sample(rand(1..12)).join
end

describe 'Test whether ShortStringPacker works' do
  it 'should pack strings into numbers' do
    packed = ShortStringPacker.pack(random_string)
    packed.must_be_instance_of Fixnum
  end

  it 'should unpack numbers back into strings' do
    rand_packed = (rand * 10000000).to_i
    str = ShortStringPacker.unpack(rand_packed)
    str.must_be_instance_of String
  end

  30.times do
    str = random_string

    it "should pack and unpack \'#{str}\' correctly" do
      packed = ShortStringPacker.pack(str)
      unpacked = ShortStringPacker.unpack(packed)
      unpacked.must_equal str
    end
  end
end
