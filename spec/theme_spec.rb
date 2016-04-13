require 'spec_helper'

shared_examples_for "theme" do

  let(:theme) { described_class.new } # the class tthemet includes the concern

  describe "Theme" do

    context "get_random_matrix" do

      it "returns a random matrix" do
        matrix = theme.get_random_matrix
        expect(matrix.class.name).to eq("Array")
        expect(matrix[0].class.name).to eq("Array")
      end
    end

    context "get_matrix" do

      it "returns a matrix" do
        matrix = theme.get_matrix(:parts => theme.collect{|part| 0 } )
        p matrix
        expect(matrix.class.name).to eq("Array")
        expect(matrix[0].class.name).to eq("Array")
      end
    end

    it "has a name" do
      expect(theme.name.class).to be(String)
      expect(theme.name).to_not be_empty
    end

    it "has a n_cols greater than zero " do
      expect(theme.n_cols).to be > 0
    end

    it "has a n_rows greater than zero" do
      expect(theme.n_rows).to be > 0
    end

    it "responds to each" do
      expect(theme.respond_to?(:each)).to be(true)
    end

    it "responds to count" do
      expect(theme.count).to be >0
    end

    it "responds to []" do
      expect(theme.respond_to?(:[])).to be(true)
    end

    it "[] returns a Part" do
      expect(theme[0].class).to be < RubySvgImageGenerator::Theme::Part
    end

    describe "Part" do

      context "get_random_matrix" do
        it "returns a random matrix" do
          theme.each do |part|
            matrix = part.get_random_matrix
            expect(matrix.class.name).to eq("Array")
            expect(matrix[0].class.name).to eq("Array")
          end
        end
      end

      context "get_matrix" do
        it "returns a matrix" do
          theme.each do |part|
            matrix = part.get_matrix(0)
            expect(matrix.class.name).to eq("Array")
            expect(matrix[0].class.name).to eq("Array")
          end
        end
      end

      it "has a name" do
        theme.each do |part|
          matrix = part.get_matrix(0)
          expect(part.name.class).to be(String)
          expect(part.name).to_not be_empty
        end
      end

      it "responds to each" do
        theme.each do |part|
          expect(part.respond_to?(:each)).to be(true)
        end
      end

      it "responds to count" do
        theme.each do |part|
          expect(theme.count).to be >0
        end
      end

      it "responds to []" do
        theme.each do |part|
          expect(part.respond_to?(:[])).to be(true)
        end
      end

      it "[] returns a Matrix" do
        theme.each do |part|
          expect(part[0].class).to be Array
          expect(part[0][0].class).to be Array
        end
      end

    end
  end
end
