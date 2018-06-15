str = "Ruby Is Good"
rot = 3

ans = ""

arr = ("A".."Z").to_a #AからZまでの文字配列
arr2 = ("a".."z").to_a

strs = str.chars    #文字列を一文字区切りにした配列

def caesarCipher(s,rot,arr)
  i = arr.find_index{|st| st == s}
  #Zより先になってしまった場合の処理
  if (i+rot) >= 26 then
    n = i+rot - 26
  else
    n = i+rot
  end
  return arr[n]
end

strs.each{|s|
  if s == " " then
    ans += s
    next
  end

  if s == s.upcase then
    ans += caesarCipher(s,rot,arr)
  else
    ans += caesarCipher(s,rot,arr2)
  end
}

p(ans)
