def pagination_text(page_number, page_size, total_products)
  last = total_products%page_size
  last == 0 ? total = total_products/page_size : total = (total_products/page_size) + 1
  last == 0 ? last_page = page_number * page_size : page_number*page_size > total_products ? last_page = (page_number-1)*page_size+last : last_page = page_number * page_size
  last == 0 ? first_page = last_page - (page_size-1) : page_number*page_size > total_products ? first_page = last_page - (last-1) : first_page = last_page - (page_size-1)
  "Showing #{first_page} to #{last_page} of #{total_products} Products."
end

pagination_text(43,15,3456)


######################

def pagination_text(page_number, page_size, total_products)    
    x = (page_number -1) * page_size 
    y = [x + page_size, total_products].min  
   
    "Showing #{x+1} to #{y} of #{total_products} Products." 
end