def pig_it text
  arr=text.split(' ')
  pun=["!", "?", ".", ","]
  arr=arr.map{|x|
    if pun.include?(x) then
      x
    else
      d = x.length
      "#{x[1..d-1]}#{x[0]}ay"
    end
  }
  return arr.join(' ')
end
