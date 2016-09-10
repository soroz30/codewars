def show_me(name)
  name.match(/\A([A-Z][a-z]+|[A-Z][a-z]+-([A-Z][a-z]+-)*[A-Z][a-z]+)\z/) != nil
end

######################

def show_me(name)
  /^[A-Z][a-z]+(-[A-Z][a-z]+)*$/ === name
end