MORSE_CODE = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
  '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
  '..' => 'I', '.---' => 'J', '-.-'  => 'K', '.-..' => 'L',
  '--' => 'M', '-.'   => 'N', '---'  => 'O', '.--.' => 'P',
  '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
  '-.--' => 'Y', '--..' => 'Z', ' ' => ' ', '' => ' ',
  '-----' => '0', '.----' => '1', '..---' => '2', '...--' => '3',
  '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7',
  '---..' => '8', '----.' => '9'
}.freeze

def decode_char(morse)
  MORSE_CODE[morse]
end

def decode_word(morse_word)
  morse_word.split.map { |morse_char| decode_char(morse_char) }.join
end

def decode(message)
  words = message.split('   ')
  words.map { |word| decode_word(word) }.join(' ')
end

# Example usage:
treasure = '-... --- -..-   ..-. ..- .-.. .-..   --- ..-.   ....'
decoded = decode(treasure)
puts decoded
