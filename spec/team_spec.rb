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

    def test_check_player_exists__true
        assert_equal(true, @team.check_player_exists("Mohamed Salah"))
    end

    def test_check_player_exists__false
        assert_equal(false, @team.check_player_exists("Mane"))
    end

    def test_team_won
        @team.add_match_result(true)
        assert_equal(3, @team.points)
    end

    def test_team_lost
        @team.add_match_result(false)
        assert_equal(0, @team.points)
    end

    def test_team_won_or_lost__multiple_matches
        @team.add_match_result(true)
        @team.add_match_result(true)
        @team.add_match_result(false)
        @team.add_match_result(true)
        assert_equal(9, @team.points)
    end

end