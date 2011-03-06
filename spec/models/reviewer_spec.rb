require 'spec_helper'

describe Reviewer do
  
  describe "find_or_create" do
    it "should return a reviewer if one exists" do
      Reviewer.make(:username => 'duana').save!
      reviewer = Reviewer.find_or_create :username => 'duana'
      reviewer.username.should == 'duana'
    end
    
    it "should create a reviewer if one doesnt exist" do
      reviewer = Reviewer.find_or_create :username => 'duana'
      reviewer.username.should == 'duana' 
      Reviewer.find_by_username('duana').should_not be(nil)
    end  
  end  
end