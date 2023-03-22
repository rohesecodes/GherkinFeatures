#Mircea Diana, if22x005
#Requirement Engineering Assignment 3
#User story 2

Feature: Set points or percentages to the questions
    As a Lecturer, I would like to be able to set points for each question.


        Background: 
            Given is a Lecturer at a Univeristy
            And  3 questions with the ids:
                | id |
                | 1  |
                | 2  |
                | 3  |


        Scenario Outline: Setting the points
            Given the Lecturer created "Quiz 1"
                And added all questions to it
            When the Lecturer selects a question
                And adds <points> as the number of points received for a correct answer
                And clicks on the apply button 
            Then the question with the id <id> weighs <points>  
        
            Scenarios:
                |   id     |   points  |
                |    1     |     5     |
                |    2     |     2     |  
                |    3     |     3     |


        Scenario Outline: Setting a percantage
            Given the Lecturer created "Quiz 1"
                And added all the questions to it
            When the Lecturer selects a question
                And adds <percantage> of the total quiz points for it
                And clicks on the apply button 
            Then the question with the id <id> has <percantage> % of the full quiz points

            Scenarios:
                | id  | percantage |
                |  1  |     50%    |
                |  2  |     20%    |  
                |  3  |     30%    |   



