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
# works but i dont understand
# shout out to christina for the solution below

def remove_pet_by_name (shop, name)
  for pet in shop[:pets]
    if pet[:name] == name
      shop[:pets].delete(pet)
    end
    return shop[:pets]
  end
end

def add_pet_to_stock (shop, new_pet)
  shop[:pets] << new_pet
  for pet in shop[:pets]
    return  pet.count
  end
end

def customer_cash (customer)
  return customer[:cash]
end


def remove_customer_cash (person, cash_amount)
  person[:cash] -= cash_amount
end

def customer_pet_count (person)
  return person[:pets].count
end

def add_pet_to_customer (customer, new_pet)
  customer[:pets] << new_pet
  return customer[:pets].count
end

def customer_can_afford_pet (customer, new_pet)
  if new_pet[:price] > customer[:cash]
    return false
  elsif new_pet[:price] < customer[:cash]
    return true
  end
end
