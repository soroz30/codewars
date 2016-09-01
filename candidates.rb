def match(job, candidates)
  candidates.select do |candidate|
    (job['locations'] & (candidate['desired_locations'] << candidate['current_location'])).length > 0 &&
    (!candidate['desires_equity'] || job['equity_max'] > 0)
  end
end