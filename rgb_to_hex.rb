def rgb(r, g, b)
 return "#{convert(r)}#{convert(g)}#{convert(b)}"
end

def convert(n)
  if n < 0 then
    n = "00"
  elsif n > 255 then
    n = "FF"
  else
    n = n.to_s(16).rjust(2, '0').upcase
  end
end 
