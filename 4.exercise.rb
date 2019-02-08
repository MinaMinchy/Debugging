def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars) #we want to include 'z', so 'a...z' doesn't include z and we need to change to 'a..z' We don't wantt to repeat key values, that's why we put -key.chars.
  ciphertext_chars = plaintext.chars.map do |char| #char is each character
    (65 + cipher.find_index(char)).chr
  end
  ciphertext_chars.join #i's missing print out the ciphertext_chars 'put'. It doesn't print anything.
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars) #we want to include 'z', so 'a...z' doesn't include z and we need to change to 'a..z' We don't wantt to repeat key values, that's why we put -key.chars.
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[65 - char.ord] #getting random letters when we 65 - char.otd but when we do char.ord - 65 we got the encoded letters.
  end
  plaintext_chars.join #i's missing print out the ciphertext_chars 'put'. It doesn't print anything.
end

encode("theswiftfoxjumpedoverthelazydog", "secretkey")
decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
