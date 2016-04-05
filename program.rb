def caesar_cipher(text, offset)
	new_word = ""
	text.each_char do |letter| 
		if (letter =~ /\w/).nil?
			new_word += letter
			next
		end
		if (letter =~ /[A-Z]/).nil?
			# downcase letter
			val = ((letter.ord + offset - 'a'.ord) % 26) + 'a'.ord
		else
			#upcase letter
			val = ((letter.ord + offset - 'A'.ord) % 26) + 'A'.ord
		end
		new_word += val.chr
		puts new_word
	end
	new_word
end

s = caesar_cipher("What a string!", 5)
puts s
puts caesar_cipher(s,5)