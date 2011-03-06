class CreateReviewers < ActiveRecord::Migration
  def self.up
    create_table :reviewers do |t|
      t.string :username
      
      t.timestamps
    end
    
    create_table :code_submissions_reviewers, :id => false do |t| 
      t.integer :code_submission_id 
      t.integer :reviewer_id
    end
  end
  
  

  def self.down
    drop_table :code_submissions_reviewers
    drop_table :reviewers
  end
end
