def caesar_cipher(string, shift)
  ascii_str = string.codepoints
  cipher = []
 
  ascii_str.each do |value|
    if value.between?(65,90) || value.between?(97, 122)
      shifted_value = value + shift
      if shifted_value.between?(97, 122) || shifted_value.between?(65,90)
        cipher << shifted_value.chr
      else
        cipher << (value - (26 - shift)).chr
      end
  else 
    cipher << value.chr
    end
  end
  return cipher.join
end

message = "Hotel Echo Lima Lima Oscar"
puts caesar_cipher(message, 10)