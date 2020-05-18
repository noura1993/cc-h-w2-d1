require('minitest/autorun')
require('minitest/reporters')
require_relative('../team')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestTeam < MiniTest::Test

    def setup
        @team = Team.new("Liverpool", ["Mohamed Salah"], "Jurgen Klopp")
    end

    def test_get_team_name
        assert_equal("Liverpool", @team.name())
    end

    def test_get_team_players
        assert_equal(["Mohamed Salah"], @team.players())
    end

    def test_get_team_coach
        assert_equal("Jurgen Klopp", @team.coach())
    end

    def test_update_team_coach
        @team.coach = "Noura"
        assert_equal("Noura", @team.coach())
    end

    def test_add_new_player
        @team.add_player("Roberto Firmino")
        assert_equal(["Mohamed Salah", "Roberto Firmino"], @team.players())
    end

end