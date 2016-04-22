require 'spec_helper'
describe RubySvgImageGenerator do

  it "dummy" do
    40.times do |i|
      RubySvgImageGenerator.create_random_and_save "test_#{i}.svg" , "test_#{i}", :theme => RubySvgImageGenerator::T_HUMAN_AVATARS
    end
  end

  describe "create_random" do
    it "creates a svg string with a random picture of a theme" do
      RubySvgImageGenerator::THEMES.each do |theme|
        svg = RubySvgImageGenerator.create_random "test_image", :theme => theme
        expect(svg).to be_a(String)
        expect(svg).to include('<svg')
      end
    end
  end

  describe "create_random_and_save" do
    it "creates a svg string with a selected picture of a theme" do
      RubySvgImageGenerator::THEMES.each do |theme|
        result = RubySvgImageGenerator.create_random_and_save "test_file.svg", "test_image", :theme => theme
        expect(result).to be_truthy
      end
    end
  end

  describe "create" do
    it "creates a svg string with a selected picture of a theme" do
      RubySvgImageGenerator::THEMES.each do |theme|
        theme_inst = RubySvgImageGenerator.get_theme_instance theme
        parts = theme_inst.collect{|part| 0 }
        svg = RubySvgImageGenerator.create "test_image", :theme => theme, :parts=>parts
        expect(svg).to be_a(String)
        expect(svg).to include('<svg')
      end
    end
  end

  describe "create_and_save" do
    it "creates a svg string with a selected picture of a theme" do
      RubySvgImageGenerator::THEMES.each do |theme|
        theme_inst = RubySvgImageGenerator.get_theme_instance theme
        parts = theme_inst.collect{|part| 0 }
        result = RubySvgImageGenerator.create_and_save "test_file.svg", "test_image", :theme => theme, :parts=>parts
        expect(result).to be_truthy
      end
    end
  end

end
