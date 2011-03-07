require 'spec_helper'

describe CodeSubmission do
  
  [:language, :problem, :applicant_name].each do |field|
    it "should be invalid without #{field}" do
      model = CodeSubmission.make(field => nil)
      model.should_not be_valid
    end
  end
    
  it "can have no reviewers against it" do
    code_submission = CodeSubmission.make
    code_submission.reviewers.should be_empty
    p code_submission.inspect
    code_submission.should be_valid 
  end
end
