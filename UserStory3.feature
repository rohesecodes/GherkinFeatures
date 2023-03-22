#Mircea Diana, if22x005
#Requirement Engineering Assignment 3
#User story 3

Feature: Set quiz availbality
    As a Lecturer, I would like to be able to set the date and time of quizzes, so that the students will 
not be able to access them outside class time.


    Background: 
        Given is a Lecturer at a university
        And a quiz titled "Quiz 1" with the id "1" 
        

    Scenario Outline: The Lecturer sets the date for availability at the creation of the quiz
        Given the Lecturer creates a quiz with the <id> "1"
        And sets the date attribute to <date> with the help of a calandar
        When the Lecturer clicks on the create button 
        Then the following mapping is created:
                | id |      date        |  
                | 1  |   12.06.2023     |
     Scenario Outline: The Lecturer sets the time the quiz start on the selected date
      Given the Lecturer has selected a date <date> for "Quiz 1"
      And sets the time attribute to <time> with the help of a clock
      When the Lecturer click on the create button
      Then the following mapping is created:
      | id | date       | time  |
      | 1  | 12.06.2023 | 12.05 |

    Scenario Outline: The Lecturer reschedules a quiz
        Given the Lecturer selected "Quiz 1"
            And modifies the date attribute to <new_date>  and time attribute to <new_time>
        When the Lecturer clicks on the create button 
        Then the following mapping is updated:
        | id | date       | time  |
        | 1  | 14.06.2023 | 10.30 |
    

