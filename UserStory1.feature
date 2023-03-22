#Mircea Diana, if22x005 
#Requirement Engineering Assignment 3
#User story 1

Feature: Single sign on or separate account for students
 As a student, I would like to have a user account with my university credentials set up, so that I may take the quiz from different devices without losing the results.



    Background: 
        Given is a user of type "student"
        And a university account with <user_id> and <password> 
       
    Scenario: the students signs in with the university credentials
        Given a student in one of the Lecturer's classes 
            And he has a university account
        When he types his university credentials in the sign in page
        Then he is authenticated
         And he can see all the available quizzes 


    Scenario: the student creates a separate account
        Given a student in the Lecturer's class
            And he doesn not have a university account or does not wish to use it
        When he presses the button <sign up>
        Then a new page will appear
        And he will be asked to provide <email address> <Name> <Surname> <Date of Birth> and <Password>
        And he presses the button <sign up>
        And he receives a confirmation E-mail


    Scenario: the student signs up with separate credentials
        Given a student in the Lecturer's class
            And he has a separate account for the system
        When he types his <email address> and <password>  
        Then he is authenticated
        And he can see all the available quizzes


