require 'spec_helper'

describe ProjectsController do
	render_views

	before do
		@project = Factory(:project)
	end

	describe "GET index" do
		it "should be successful" do
			get :index
			response.should be_success
		end
	end

	describe "GET show" do
		it "should be successful" do
			get :show, :id => 1
			assigns(:project).should eq(@project)
			response.should be_success
		end
	end

	describe "GET new" do
		it "should be successful" do
			get :new
			response.should be_success
		end
	end
end

