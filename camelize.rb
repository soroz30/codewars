def camelize(str)
  str.split(/\W|_/).map(&:capitalize).join
end