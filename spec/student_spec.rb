require('minitest/autorun')
require('minitest/reporters')
require_relative('../student')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudent < MiniTest::Test

    def setup
        @student = Student.new("Noura", "E40")
    end

    def test_get_name
        assert_equal("Noura", @student.name())
    end

    def test_get_cohort
        assert_equal("E40", @student.cohort())
    end

    def test_set_name
        @student.set_name("Alice")
        assert_equal("Alice", @student.name())
    end

    def test_set_cohort
        @student.set_cohort("E39")
        assert_equal("E39", @student.cohort())
    end

    def test_talk
        assert_equal("I can talk", @student.talk())
    end

    def test_say_favourite_language
        assert_equal("I love Ruby", @student.say_favourite_language("Ruby"))
    end

end