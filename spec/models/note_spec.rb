require 'spec_helper'

describe Note do
  
  context "Note not assigned to project" do
    before(:each) do
      @note = Factory(:note)
    end
    
    it "should be valid with valid attributes" do
      @note.should be_valid
    end
    
    it "should not be valid without body" do
      @note.body = nil
      @note.should_not be_valid
    end
  end
  
  context "Note assigned to project" do
    before(:each) do
      @project = Factory(:project)
      @note = Factory(:note, :project => @project)
    end
    
    it "should be valid with valid attributes" do
      @note.should be_valid
    end
    
    it "should belongs to project" do
      @note.project.should eq(@project)
    end
  end
end
