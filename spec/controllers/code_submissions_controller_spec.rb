require 'spec_helper'

describe CodeSubmissionsController do
  
  before(:each) do
    controller.class.skip_before_filter :authenticate_with_cas
  end
  
  it "should associate a reviewer when one is provided when posting a code submission" do 
    username = "duana"
    reviewer = Reviewer.make(:username => username)
    code_submission = CodeSubmission.make
    CodeSubmission.stub(:new).and_return(code_submission)
    Reviewer.should_receive(:find_or_create).and_return(reviewer)
    
    post :create, :reviewers => username
    
    code_submission.reviewers.should include(reviewer)
  end
end