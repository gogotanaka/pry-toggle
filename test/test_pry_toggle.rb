require 'minitest_helper'
require 'pry'
class TestPryToggle < MiniTest::Unit::TestCase
  def test_general
    test_file_path = "./test/test_files/test.rb"
    test_file = File.open(test_file_path, 'w')
    10.times { test_file << "test\n" }
    test_file.close

    service = PryToggle::Service.new(test_file_path, 6, '', "binding.pry\n")
    service.execute

    assert_equal "test\ntest\ntest\ntest\ntest\nbinding.pry\ntest\ntest\ntest\ntest\ntest\n", File.open(test_file_path, 'r').read

    FileUtils.rm(test_file_path)
  end
end
