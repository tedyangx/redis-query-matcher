### How to use this gem?
Latest gem is released at [RubyGems.org](https://rubygems.org/gems/redis_query_matcher)

Option 1: Add it to your `Gemfile` and run `bundle install`
```
# Gemfile

gem "redis_query_matcher"

```

Option 2:
```
gem install redis_query_matcher
```

### What does it do?
- This gem provides a RSpec matcher make_redis_queries.

### Usage Example

```
describe 'MyCode' do
  context 'when we expect 0 redis queries' do
    it 'does not make redis queries' do
      expect { subject.make_no_queries }.to make_redis_queries(0)
    end
  end

  context 'when we expect 5 redis queries' do
    it 'makes database queries' do
      expect { subject.make_some_queries }.to make_redis_queries(5)
    end
  end
end
```
