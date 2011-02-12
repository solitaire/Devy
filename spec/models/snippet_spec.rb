require 'spec_helper'

describe Snippet do
  context "Snippet not assigned to project" do
    before(:each) do
      @snippet = Factory(:snippet)
    end
    
    it "should be valid with valid attributes" do
      @snippet.should be_valid
    end
    
    it "should not be valid without body" do
      @snippet.body = nil
      @snippet.should_not be_valid
    end
  end
  
  context "Snippet assigned to project" do
    before(:each) do
      @project = Factory(:project)
      @snippet = Factory(:snippet, :project => @project)
    end
    
    it "should be assigned to project" do
      @snippet.project.should eq(@project)
    end
  end
end
