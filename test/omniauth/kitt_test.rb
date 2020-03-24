require "test_helper"

class OmniAuth::KittTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::OmniAuth::Kitt::VERSION
  end

  def test_uid_and_info
    client = OmniAuth::Strategies::Kitt.new('KITT_KEY', 'KITT_SECRET')
    raw_info = { id: 1, name: 'George' }
    client.stub :raw_info, raw_info do
      assert_equal client.uid, 1
      assert_equal client.info, raw_info
    end
  end
end
