def project_partners(n)
  sum = 0
  until n == 1
    n -= 1
    sum += n
  end
  sum
end

############

def project_partners(n)
  n*(n-1)/2
end

