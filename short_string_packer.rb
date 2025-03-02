# frozen_string_literal: true

# Packs/Unpacks a String to and from an Integer
module ShortStringPacker
  ## Packs a short string into a Integer
  # Arguments:
  #   str - String object
  # Returns: a Integer object
  def self.pack(str)
    # IMPLEMENT THIS METHOD
    bits_required = Math.log2(26).ceil
    packed = 0
    str.each_char.with_index do |char, index|
      num = char.ord - 'a'.ord + 1 # covert lowercase letters to 1~26
      packed |= num << (index * bits_required)
    end
    packed
  end

  ## Unpacks a Integer from pack() method into a short string
  # Arguments:
  #   packed - a Integer object
  # Returns: a String object
  def self.unpack(packed)
    # IMPLEMENT THIS METHOD
    mask = (1 << 5) - 1 # Math.log2(26).ceil = 5
    str = ''
    while packed.positive?
      num = packed & mask
      str += (num + 'a'.ord - 1).chr # covert integer back to lowercase letter
      packed >>= 5 # shift to next character
    end
    str
  end
end
