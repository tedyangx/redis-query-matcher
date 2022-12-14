Gem::Specification.new do |s|
  s.name        = "redis_query_matcher"
  s.version     = "0.0.1"
  s.summary     = "Redis Query Matcher"
  s.description = "This gem provides a RSpec matcher make_redis_queries."
  s.authors     = ["Ted Yang"]
  s.email       = "ted.yang@procore.com"
  s.files       = ["lib/redis_query_matcher.rb"]
  s.homepage    = "https://github.com/tedyangx/redis-query-matcher"
  s.license     = "MIT"

  s.add_development_dependency "rspec", "~> 3.9"
  s.add_development_dependency "pry", "~> 0.13"
end
