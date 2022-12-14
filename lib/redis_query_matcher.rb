require "redis_commands_recorder"

RSpec::Matchers.define :make_redis_queries do |num_of_expected_queries|
  supports_block_expectations

  actual_queries = []

  match do |actual_block|
    RedisCommandsRecorder.clear

    actual_block.call

    actual_queries = RedisCommandsRecorder.redis_commands

    @actual_num_of_queries = actual_queries.size
    @expected_num_of_queries = num_of_expected_queries

    expect(@actual_num_of_queries).to eq(@expected_num_of_queries)
  end

  failure_message do
    <<~HEREDOC
      Mismtach in number of redis queries!!!
      Expected numbere of redis queries: #{@expected_num_of_queries}
      Actual number of redis queries: #{@actual_num_of_queries}

      Here are the #{@actual_num_of_queries} actual redis queries:
        #{actual_queries.map(&:to_s).join(",\n  ") },
    HEREDOC
  end
end
