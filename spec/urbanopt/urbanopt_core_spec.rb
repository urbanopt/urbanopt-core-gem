# *********************************************************************************
# URBANopt™, Copyright © Alliance for Sustainable Energy, LLC.
# See also https://github.com/urbanopt/urbanopt-core-gem/blob/develop/LICENSE.md
# *********************************************************************************

require_relative '../spec_helper'

RSpec.describe URBANopt::Core do
  it 'has a version number' do
    expect(URBANopt::Core::VERSION).not_to be nil
  end
end
