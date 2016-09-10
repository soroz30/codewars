def is_valid_HK_phone_number(number)
  number.match(/^\d{4} \d{4}\z/) != nil
end
def has_valid_HK_phone_number(number)
  number.match(/\d{4} \d{4}/) != nil
end

##########

HK_PHONE_NUMBER = /\d{4} \d{4}/

def is_valid_HK_phone_number(number)
  /\A#{HK_PHONE_NUMBER}\z/ === number
end

def has_valid_HK_phone_number(number)
  HK_PHONE_NUMBER === number
end