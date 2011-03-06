class CodeSubmission < ActiveRecord::Base
  has_and_belongs_to_many :reviewers
end
