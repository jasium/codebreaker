require 'spec_helper'
include Codebreaker

describe "Marker" do
  describe "#exactmatchcount" do
    context "with no matches" do
      it "returns 0" do
        marker = Marker.new('1234','5555')
        marker.exact_match_count.should  == 0
      end
    end

    context "with 1 exact match" do
      it "returns 1" do
        marker = Marker.new('1234', '1555')
        marker.exact_match_count.should == 1
      end
    end

    context "with 1 exact match and 1 number match" do
      it "returns 1" do
        marker = Marker.new('1234','1355')
        marker.exact_match_count.should == 1
      end
    end
  end

  describe "#numbermatchcount" do

    context "with 0 number matches" do
      it "returns 0" do
        marker = Marker.new('1234','5555')
        marker.number_match_count.should == 0
      end
    end

    context "with 1 number match" do
      it "returns 1" do
        marker = Marker.new('1234','5551')
        marker.number_match_count.should == 1
      end
    end

    context "with 2 number matches" do
      it "returns 2" do
        marker = Marker.new('1234','5512')
        marker.number_match_count.should == 2
      end
    end

    context "with 1 exact match" do
      it "returns 0" do
        marker = Marker.new('1234','1555')
        marker.number_match_count.should == 0
      end
    end

    context "with 1 number match and 1 exact match (in that order)" do
      it "returns 1" do
        marker = Marker.new('1234','5215')
        marker.number_match_count.should == 1
      end
    end
  end
end