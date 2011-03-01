require 'soluble/pages/app'

module Soluble::Pages::App::CodeSubmissionPage
  include Soluble::WatirHelper
  
  select_list :num_sugars
  radio_button :type
  checkbox :strong, {:name => 'strong'}
  text_field :extras, {:id => 'coffee-extras'}
  button :make

end
