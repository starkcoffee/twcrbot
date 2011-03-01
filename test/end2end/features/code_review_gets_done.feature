Feature:
    Allow a code submission to be uploaded and the code reviews to be submitted for it online

@wip
Scenario: Code submitted by recruiter and code review is submitted by a dev

    Deepa is the awesome recruiter
    James is an awesome dev
    Duana is another aweseom dev
    Mark is a dubious candidate

    Given there is a new code submission to be reviewed
    When Deepa posts a code submission with the following details
        | language | ruby |
        | problem  | trains |
        | candidate name | Mark Ryall |

    And invites the following devs to do a review using their usernames
        | jottaway |
        | dstanley |
        
    Then an email is sent to James with a link to the code submission

    Given James is logged in
    When James clicks on the link 
    Then James can download the code

    When James submits a code review with the following details
        | decision | pass |
        | grade | below average |
        | comments | Positives: good separation of logic. Negatives: inappropriate choice of variable names |
    Then an email is sent to Deepa containing the code review

    Given Duana is logged in
    When Duana clicks on the link 
    When Duana submits a code review with the following details
        | decision | strongly pursue |
        | grade | above average |
        | comments | Positives: good sense of humour. Negatives: violates the law of demeter on more than one occasion|

    Then an email is sent to Deepa containing the code review
     

