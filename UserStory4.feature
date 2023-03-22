#Mircea Diana, if22x005 
#Requirement Engineering Assignment 3
#User story 4

Feature: Set random or sequential order
As a Lecturer, I would like to be able to choose between sequential or random when it comes to 
the order of the questions


    Background: 
        Given is a Lecturer at a University
        And the questions:
            | question_id | question_title |    question_content            | question_order |
            |     1       |     "Q1"       |     "What is a User Story?"    |        1       |
            |     2       |     "Q2"       |     "What is a Feature?"       |        2       |
            |     3       |     "Q3"       | "What is an epic?"                |        3       |
        And a quiz titled "Quiz 1" with the id "1"
       


    Scenario: The Lecturer sets the order of the questions as sequential
        Given the Lecturer selected to create "Quiz 1"
            And added the quiz questions to it in the following order:
            | question_id | question_title |    question_content   | question_order |
            |     1       |     "Q1"    |     "What is BDD?"       |        1       |
            |     2       |     "Q2"    |     "What is a feature?" |        2       |
            |     3       |     "Q3"    | "What is a use-case?"    |        3       |
        When the Lecturer clicks on the create button 
        And leaves does not modify the "default "sequential" setting
        Then the new question data is:
            | question_id | question_title |    question_content       | question_order |
            |     1       |     "Q1"    |     "What is a User Story?"  |        1       |
            |     2       |     "Q2"    |     "What is a feature?"     |        2       |
            |     3       |     "Q3"    |     "What is an epic?"       |        3       |


    Scenario: the Lecturer sets the order "Random"
        Given the Lecturer selected to create "Quiz 1"
            And added the desired questions to it
        When the Lecturer selects the order of the questions "random"
            And clicks on the create button 
        Then the new question data is:
            | question_id | question_title |    question_content         | question_order |
            |     1       |     "Q1"    |     "What is a User Story?"    |        3       |
            |     2       |     "Q2"    |     "What is a feature?"       |        1       |
            |     3       |     "Q3"    |     "What is an epic?"         |        2       |
