require 'spec_helper'

describe Item do

  it { should validate_presence_of :title }
  it { should validate_presence_of :description }
  it { should validate_presence_of :quantity }

end
