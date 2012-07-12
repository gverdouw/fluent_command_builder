require 'test/unit'
require_relative '../../lib/fluent_command_builder'
include FluentCommandBuilder

class Example3Test < Test::Unit::TestCase

  def test_msbuild_example
    expected = 'MSBuild sample.proj /target:rebuild /property:configuration=release'
    actual = msbuild_40('sample.proj').target(:rebuild).property(configuration: 'release').to_s
    assert_equal expected, actual
  end

  def test_nunit_example
    expected = 'nunit-console sample.dll /include:unit_tests /exclude:integration_tests'
    actual = nunit_25('sample.dll').include(:unit_tests).exclude(:integration_tests).to_s
    assert_equal expected, actual
  end

end


