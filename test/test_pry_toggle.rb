require 'minitest_helper'
require 'pry'
class TestPryToggle < MiniTest::Unit::TestCase
  def test_insert_by_line_num
    test_file_path = "./test/test_files/test.rb"
    File.open(test_file_path, 'w') do |t|
      10.times { t << "test\n" }
    end

    service = PryToggle::Service.new(test_file_path, 6, '', "binding.pry\n", true)
    service.execute

    assert_equal "test\ntest\ntest\ntest\ntest\nbinding.pry\ntest\ntest\ntest\ntest\ntest\n", File.open(test_file_path, 'r').read

    FileUtils.rm(test_file_path)
  end

  def test_remove_by_line_num
    test_file_path = "./test/test_files/test.rb"
    File.open(test_file_path, 'w') do |t|
      5.times { t << "test\n" }
      t << "binding.pry\n"
      5.times { t << "test\n" }
    end

    service = PryToggle::Service.new(test_file_path, nil, '', "binding.pry\n", false)
    service.execute

    assert_equal "test\ntest\ntest\ntest\ntest\ntest\ntest\ntest\ntest\ntest\n", File.open(test_file_path, 'r').read

    FileUtils.rm(test_file_path)
  end

  def test_insert_by_mth_name
    test_file_path = "./test/test_files/test.rb"
    File.open(test_file_path, 'w') do |t|
      5.times { t << "test\n" }
      t << "def test_method\n"
      5.times { t << "test\n" }
    end

    service = PryToggle::Service.new(test_file_path, nil, "test_method", "binding.pry\n", true)
    service.execute

    assert_equal "test\ntest\ntest\ntest\ntest\ndef test_method\nbinding.pry\ntest\ntest\ntest\ntest\ntest\n", File.open(test_file_path, 'r').read

    FileUtils.rm(test_file_path)
  end
end
