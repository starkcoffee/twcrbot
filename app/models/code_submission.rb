class CodeSubmission < ActiveRecord::Base
  has_and_belongs_to_many :reviewers
  validates_presence_of :applicant_name, :language, :problem
  has_attached_file :code, :storage => :s3, :s3_credentials => "#{RAILS_ROOT}/config/s3.yml", :path => "/:filename"
end
