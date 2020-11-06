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
  new_array = cart.uniq
  i = 0
  while i < new_array.length do
    new_array[i][:count] = cart.count(include? new_array[i][:item])
    i += 1 
  end
  
  binding.pry
end


=begin
    i = 0
  while i < cart.length do
    cart[i][:count] = cart.count(:item)
    i += 1 
  end
  
=end