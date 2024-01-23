class Cipher
  def caesar_cipher(string, key)
    alphabet = ('a'..'z').to_a
    key_rotated_alphabet = alphabet.rotate(key)
    string.split('').map do |char|
      if alphabet.include?(char.downcase)
        new_char = key_rotated_alphabet[alphabet.index(char.downcase)]
        char == char.upcase ? new_char.upcase : new_char
      else
        char
      end
    end.join
  end
end
my_cipher = Cipher.new
