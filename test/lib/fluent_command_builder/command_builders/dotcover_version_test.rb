require_relative '../../../version_test_base'

class DotCoverVersionTest < VersionTestBase

  def test_version_20
    assert_version FluentCommandBuilder::DotCover, '2.0.425.54', <<EOF
    JetBrains dotCover Console Runner v2.0.425.54. Copyright (c) 2009-2012 JetBrains s.r.o. All rights reserved.

    Version output file is not specified
    Type 'dotCover help' for usage.

EOF
  end

end


