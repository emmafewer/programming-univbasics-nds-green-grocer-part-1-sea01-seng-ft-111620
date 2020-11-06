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
  while i < new_cart.length do
    new_cart[i][:count] = cart.count(include? new_cart[i][:item])
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