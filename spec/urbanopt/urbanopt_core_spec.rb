# *********************************************************************************
# URBANopt (tm), Copyright (c) Alliance for Sustainable Energy, LLC.
# See also https://github.com/urbanopt/urbanopt-reopt-gem/blob/develop/LICENSE.md
# *********************************************************************************

require_relative '../spec_helper'

RSpec.describe URBANopt::Core do
  it 'has a version number' do
    expect(URBANopt::Core::VERSION).not_to be nil
  end
end
