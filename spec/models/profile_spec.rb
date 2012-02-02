require 'spec_helper'

describe Profile do
  it { should belong_to(:employer) }
end
