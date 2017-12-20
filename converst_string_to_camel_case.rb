def to_camel_case(str)
  arr=str.split(/[_,-]/)
  d=arr.length
  for i in 1..d-1 do
    arr[i] = arr[i].capitalize
  end
  arr.join('')
end
