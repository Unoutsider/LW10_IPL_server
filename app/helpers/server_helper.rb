# frozen_string_literal: true

# serv helper
module ServerHelper
  def self.result_array(mas)
    arr = []
    boofer = []
    cur = mas[0]
    mas.each do |i|
      if i >= cur
        boofer.push(i)
        cur = i
      else
        arr.push(boofer)
        boofer = []
        boofer.push(i)
        cur = i
      end
    end
    arr.push(boofer)
    s1 = mas.join(' ')
    s2 = composit(arr)
    s3 = maxlenseq(arr)
    [s1,s2,s3]
  end
  def self.composit(a)
    s = ""
    a.each do |i|
      s += i.join(' ')
      s += ', ' if i != a[-1]
    end
    s
  end
  def self.maxlenseq(a)
    n = []
    a.each{|i| n = i if i.length > n.length}
    n.join(' ')
  end
end
