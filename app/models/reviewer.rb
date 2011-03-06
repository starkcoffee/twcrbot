class Reviewer < ActiveRecord::Base
  has_and_belongs_to_many :code_submissions
end
