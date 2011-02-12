require 'spec_helper'

describe "projects/edit.html.erb" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :new_record? => false
    ))
  end

  it "renders the edit project form" do
    render

    rendered.should have_selector("form", :action => project_path(@project), :method => "post") do |form|
    end
  end
end
