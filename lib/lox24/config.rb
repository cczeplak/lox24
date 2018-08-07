module Lox24
  class Config

    @debug = false

    class << self
      attr_accessor :service, :client, :password, :debug
    end

    def self.password_hash
      Digest::MD5.hexdigest @password
    end
  end
end
