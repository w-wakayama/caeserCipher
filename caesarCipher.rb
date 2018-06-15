str = "RUBY IS GOOD"
rot = 3

ans = ""

arr = ("A".."Z").to_a #AからZまでの文字配列
strs = str.chars    #文字列を一文字区切りにした配列

strs.each{|s|
  if s == " " then
    ans += s
    next
  end
  i = arr.find_index{|st| st == s}
  #Zより先になってしまった場合の処理
  if (i+rot) >= 26 then
    n = i+rot - 26
  else
    n = i+rot
  end
  ans += arr[n]
}

p(ans)
