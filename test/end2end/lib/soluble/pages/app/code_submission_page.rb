require 'soluble/pages/app'

module Soluble::Pages::App::CodeSubmissionPage
  include Soluble::WatirHelper
  
  select_list :code_submission_language
  select_list :code_submission_problem
  text_field :code_submission_applicant_name
  button :code_submission_submit

end
