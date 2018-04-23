def rot13(string)
  arrayofletters = string.split("")
  alfa = ("a".."z").map { |letter| letter }
  bigAlfa = ("A".."Z").map { |letter| letter }
  mainalfa = alfa + bigAlfa

  smallrotated = alfa.rotate(13)
  bigrotated = bigAlfa.rotate(13)
  mainrotated = smallrotated + bigrotated

  finalstring = ""

  for i in 0..arrayofletters.length-1 do
    if mainalfa.include?(arrayofletters[i])
      ind = mainalfa.index(arrayofletters[i])
      finalstring = finalstring + mainrotated[ind]
    else
      finalstring = finalstring + arrayofletters[i]
    end
  end

  return  finalstring

end
