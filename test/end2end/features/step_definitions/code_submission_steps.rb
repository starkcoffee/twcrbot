Given /^there is a new code submission to be reviewed$/ do
end

When /^(\w+) posts a code submission with the following details$/ do |recruiter, table|
  details = table.rows_hash

  params = { 
      :code_submission_language => details['language'],
      :code_submission_problem => details['problem'],
      :code_submission_applicant_name => details['applicant_name'],
   }

  on_page :app, :code_submission do |page|
    page.fill_in params
    page.submit :code_submission_submit
  end
end

When /^invites the following devs to do a review using their usernames$/ do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

Then /^an email is sent to (\w+) with a link to the code submission$/ do |recipient|
  pending # express the regexp above with the code you wish you had
end

Given /^\w+ is logged in with username (\w+)$/ do |username|
  pending # express the regexp above with the code you wish you had
end

When /^\w+ clicks on the link$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^\w+ can download the code$/ do
  pending # express the regexp above with the code you wish you had
end

When /^(\w+) submits a code review with the following details$/ do |reviewer, table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

Then /^an email is sent to (.+) containing the following$/ do |email_addresses, email_body|
  pending # express the regexp above with the code you wish you had
end


Then /^there is a link created for the code submission$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^\w+ can see the details of the code submission$/ do
  pending # express the regexp above with the code you wish you had
end





When /^I enter the following coffee preferences$/ do |table|
  on_page :sample_app, :order do |page|
    page.apply_with table.rows_hash
  end
end

When /^I enter valid coffee preferences$/ do

  params = {
      'type' => 'latte',
      'num_sugars' => '2',
      'strong' => true,
      'extras' => 'extra hot'
    }

  on_page :sample_app, :order do |page|
    page.fill_in params
    page.submit :make
  end
end

Then /^I should have successfully made an order$/ do
  on_page :sample_app, :summary do |page|
    raise "Did not successfully make order" unless page.success?
  end
end

