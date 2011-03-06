require 'spec_helper'

describe CodeSubmission do
  
  [:language, :problem, :applicant_name].each do |field|
    it "should be invalid without #{field}" do
      model = CodeSubmission.make(field => nil)
      model.should_not be_valid
    end
  end
end