require 'rails_helper'

describe Image do
  it {should validate_presence_of :caption}
  it {should validate_presence_of :avatar}
  it {should belong_to :property}

end
