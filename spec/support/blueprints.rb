require 'machinist/active_record'

CodeSubmission.blueprint do
    applicant_name { "applicant_#{sn}"}
    language { "java"}
    problem { "trains"}
end

Reviewer.blueprint   do
    username { "reviewer_#{sn}"}
end
