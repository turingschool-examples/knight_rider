require 'minitest/autorun'
require 'minitest/pride'
require 'faraday'
require './lib/server'

class ServerTest < Minitest::Test

  attr_accessor :ser, :conn

    def setupp(port)
      @ser = Server.new(port)
      @conn = Faraday.new(:url => "http://127.0.0.1:#{port}")
    end

    def test_server_exists
    setupp(9290)

    assert_instance_of Server, ser
  end

  def test_header
    skip
    setupp(9291)

    threads = []
    threads << Thread.new {ser.run_server}
    threads << Thread.new do

    end
    threads.each {|thread| thread.join}
  end
end
