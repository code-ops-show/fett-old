require 'spec_helper'

describe Resume do
  it { should belong_to(:employee) }
end
