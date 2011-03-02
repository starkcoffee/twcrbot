Feature:
    Allow a code submission to be uploaded and the code reviews to be submitted for it online

@wip
Scenario: Code submitted by recruiter and code review is submitted by a dev

    Deepa is the awesome recruiter
    James is an awesome dev
    Duana is another aweseom dev
    Mark is a dubious candidate

    Given there is a new code submission to be reviewed
    Given James is logged in with username jottaway
    Given Deepa is logged in with username deepa
    When Deepa posts a code submission with the following details
        | language | ruby |
        | problem  | trains |
        | candidate name | Mark Ryall |

    And invites the following devs to do a review using their usernames
        | jottaway |
        | dstanley |
        
    Then an email is sent to the addresses jottaway@tw.com,dstanley@tw.com containing the following
    """
    Please we need you to review some code http://here.com
    """

    When James clicks on the link 
    Then James can download the code

    When James submits a code review with the following details
        | decision | strongly pursue |
        | grade | above average |
        | comments | Positives: good sense of humour. Negatives: violates the law of demeter on more than one occasion|

    Then an email is sent to deepa@tw.com containing the following
    """ 
    Here is the code review
    """
     

