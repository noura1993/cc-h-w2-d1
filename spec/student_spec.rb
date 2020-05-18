require('minitest/autorun')
require('minitest/reporters')
require_relative('../student')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudent < MiniTest::Test

    def test_get_name
        student = Student.new("Noura", "E40")
        assert_equal("Noura", student.name())
    end

    def test_get_cohort
        student = Student.new("Noura", "E40")
        assert_equal("E40", student.cohort())
    end


end