def pet_shop_name (name)
  name[:name]
end

def total_cash (cash)
  cash[:admin][:total_cash]
end

def add_or_remove_cash (store, amount)
  store[:admin][:total_cash] += amount
end

def pets_sold (amount)
  amount[:admin][:pets_sold]
end

def increase_pets_sold (name_of_shop, amount)
  name_of_shop[:admin][:pets_sold] += amount
end

def stock_count (stock)
  stock[:pets].count
end

def pets_by_breed (shop, breed)
  specific_breed = []
  for pet in shop[:pets]
    if pet[:breed] == breed
      specific_breed << pet
    end
  end
  return specific_breed
end

def find_pet_by_name (shop, name)

  for pet in shop[:pets]
    if pet[:name] == name
      return pet
    else return nil
    end
  end
end

# def remove_pet_by_name (shop, name)
#   for pet in shop[:pets]
#     if pet[:name] == name
#       pet.delete_if { |word| word = name }
#     end
#   end
# end
# i dont think this is correct?

def remove_pet_by_name (shop, name)
  for pet in shop[:pets]
    if pet[:name] == name
      shop[:pets].delete(pet)
    end
    return shop[:pets]
  end
end
