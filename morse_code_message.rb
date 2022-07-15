def decode_char(str)
  collection = {
    'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.', 'F' => '..-.',
    'G' => '--.', 'H' => '....', 'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..',
    'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.', 'Q' => '--.-', 'R' => '.-.',
    'S' => '...', 'T' => '-', 'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-',
    'Y' => '-.--', 'Z' => '--..'
  }

  collection.key(str) || ''
end

def decode_word(str)
  new_str = ''
  str.split.each do |char|
    new_str += decode_char(char)
  end
  new_str
end

def decode_result(str)
  result = ''
  str.split('  ').each do |word|
    result += "#{decode_word(word)} "
  end
  result
end

puts decode_char('.-')
puts decode_word('-- -.--')
puts decode_result('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
