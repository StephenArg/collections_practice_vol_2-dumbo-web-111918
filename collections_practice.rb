def begins_with_r(array)
  yes = true
  array.each {|i|
  if i.start_with?("r")
    yes = true
  else
    yes = false
    break
  end}
  return yes
end

def contain_a(array)
  new = []
  array.each { |i|
  if i =~ /a/
    new.push(i)
  end}
  return new
end

def first_wa(array)
  word = array.find {|i|
    i[0] == "w" and i[1] == "a"}
  return word
end

def remove_non_strings(array)
  list = []
  array.each {|i|
  if i.is_a?(String)
    list.push(i)
  end}
  return list
end

def count_elements(array)
  list = []
  holder = {}
  array.each {|i|
  if holder.has_key?(i[:name])
    holder[i[:name]] += 1
  else
    holder[i[:name]] = 1
  end}
  holder.each {|name, count|
    list.push({name: name, count: count})
  }
  return list
end

def merge_data(keys, items)
  binding.pry
  merged = keys.merge(items)
  merged
end
