def score_test(tests, right, omit, wrong)
    [(tests.count(0)*right), (tests.count(1)*omit), (tests.count(2)*(-wrong))].inject(:+)
end

######

def score_test(tests, right, omit, wrong)
    c = tests.count(0) * right
    o = tests.count(1) * omit
    w = tests.count(2) * wrong
    c + o - w
end