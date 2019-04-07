def get_name(person)
  return person[:name]
end


def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end


def likes_to_eat?(person, snack)
  return person[:favourites][:snacks].include?(snack)
end


def add_friend(person, friend)
  person[:friends] << friend
end


def remove_friend(person, friend)
  person[:friends].delete(friend)
end


def total_friends_monies(peoples)
  total_monies = 0
  for person in peoples
    total_monies += person[:monies]
  end
  return total_monies
end


def lend_money_to_friend(lender, lendee, amount)
  lendee[:monies] += amount
  lender[:monies] -= amount
end


def add_friends_snacks_together(peoples)
  all_snacks = []
  for friend in peoples
    all_snacks.concat(friend[:favourites][:snacks])
  end
  return all_snacks
end


def friends_with_no_mates(peoples)
  no_mates = []
  for friend in peoples
    if friend[:friends].count == 0
      no_mates << friend
    end
  end
  return no_mates
end
