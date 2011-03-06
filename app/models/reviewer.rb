class Reviewer < ActiveRecord::Base
  has_and_belongs_to_many :code_submissions
  
  def self.find_or_create params 
    reviewer = Reviewer.find_by_username params[:username] 
    if reviewer == nil
      reviewer = Reviewer.new(params)
      reviewer.save!
    end
    reviewer
  end  
end
