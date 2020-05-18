require('minitest/autorun')
require('minitest/reporters')
require_relative('../student')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudent < MiniTest::Test


end