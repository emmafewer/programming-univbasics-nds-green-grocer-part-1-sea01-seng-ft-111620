require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.each do |hash|
    hash.each do |k, v|
      if v==name
        return hash
      end
    end
  end 
  if name !=collection
    return nil 
  end
end

def consolidate_cart(cart)
  new_cart = []
  i = 0
  while i < cart.length do
    new_cart_item = find_item_by_name_in_collection(cart[i][:item], new_cart)
    if new_cart_item != nil
      new_cart_item[:count] += 1
    else
      cart[i][:count] = 1
      new_cart << cart[i]
    end   
    i += 1
  end  
  new_cart
end


=begin
    i = 0
  while i < cart.length do
    cart[i][:count] = cart.count(i)
    i += 1 
  end
  
  
    new_array = cart.uniq
  i = 0
  while i < new_array.length do
    new_array[i][:count] = cart.count(include? new_array[i][:item])
    i += 1 
  end
  
  
  
   :count = Hash.new(0)
names.each { |name| counts[name] += 1 }
  new_cart = []
  i = 0 
  while i < cart.length do 
    if new_cart =! i
      new_cart[i][:count] += 1 
    else 
      new_cart << i 
      new_cart[i]
        end
 [:count] = 1 
=end