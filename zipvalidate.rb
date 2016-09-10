def zipvalidate(postcode)
  /\A(?![05789])\d+{6}\z/ === postcode
end

