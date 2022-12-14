class RedisCommandsRecorder
  class_attribute :redis_commands
  self.redis_commands = []

  def self.clear
    redis_commands.clear
  end
end

module RedisClientShim
  def call(command)
    RedisCommandsRecorder.redis_commands << command
    super
  end
end
::Redis::Client.prepend(RedisClientShim)
