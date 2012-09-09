require "test/unit"
require "./about_method"

class MethodMissingTest < Test::Unit::TestCase

    # Called before every test method runs. Can be used
    # to set up fixture information.
    def setup
        @obj = AboutMethod.new
    end

    # Called after every test method runs. Can be used to tear
    # down fixture information.

    def teardown
        # Do nothing
    end

    def test_load_data_source
        ds = DataSource.new
        ds.get_cpu_info(1)
        fail ds.get_cpu_info(1) if !ds
    end

    def test_about_method_cpu
        fail "CPU method not exists" if @obj.cpu()
    end

    def test_about_method_memory
        fail "Memory method not exists" if @obj.memory
    end

end