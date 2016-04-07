require 'spec_helper'

describe RubySvgImageGenerator do

  it "dummy" do
    40.times do |i|
      RubySvgImageGenerator.create_and_save_file "test_#{i}.svg" , "test_#{i}", :theme => RubySvgImageGenerator::T_HUMAN_AVATARS
    end

    RubySvgImageGenerator.create "test", :theme => RubySvgImageGenerator::T_HUMAN_AVATARS
    RubySvgImageGenerator.create "test", :theme => RubySvgImageGenerator::T_TEST_THEME

    ha = RubySvgImageGenerator::HumanAvatars.new

    p ha.get_random_matrix

    expect(1).to eq(1)
  end

end
