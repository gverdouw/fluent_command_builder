# Note: Tests do not represent valid command line usage.

require_relative '../../../command_test_base'

class Cucumber12Test < CommandTestBase
  include FluentCommandBuilder::Cucumber::V12

  def test_cucumber_full_command
    expected = 'cucumber feature --require library --i18n lang --format format --out file --tags tagExpression1,tagExpression2 --name name --exclude pattern --profile profile --no-profile --color --no-color --dry-run --autoformat dir --no-multiline --no-source --no-snippets --quiet --backtrace --strict --wip --verbose --guess --lines lines --expand --drb --no-drb --port port --dotcucumber dir --version --help'
    actual = cucumber('feature').require('library').i18n('lang').format('format').out('file').tags(%w(tagExpression1 tagExpression2)).name('name').exclude('pattern').profile('profile').no_profile.color.no_color.dry_run.autoformat('dir').no_multiline.no_source.no_snippets.quiet.backtrace.strict.wip.verbose.guess.lines('lines').expand.drb.no_drb.port('port').dotcucumber('dir').version.help
    assert_command expected, actual
  end

  def test_feature_is_optional
    expected = 'cucumber'
    actual = cucumber
    assert_command expected, actual
  end

end
