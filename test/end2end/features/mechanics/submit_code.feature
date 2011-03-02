Feature: Recruiter can upload candidate's solution to coding exercise

Scenario: Candidate's solution to coding exercise is successfully uploaded by recruiter

    When Deepa posts a code submission with the following details
    | language | ruby |
    | problem  | trains |
    | candidate name | Mark Ryall |
    Then there is a link created for the code submission

    When James clicks on the link 
    Then James can see the details of the code submission







