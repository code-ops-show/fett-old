require 'spec_helper'

describe Employee do
  it { should have_one(:resume) }
end
