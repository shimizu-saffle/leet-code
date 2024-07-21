def defang_ip_addr(address)
  address.gsub('.', '[.]')
end