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
