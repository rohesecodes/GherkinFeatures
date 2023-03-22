#Mircea Diana, if22x005
#Requirement Engineering Assignment 3
#User story 5

Feature: Search old quiz questions
     As a Lecturer, I would like to be able to search the quiz categories for older older questions.


    Rule: The quiz categories can be visualised as list AND a user authenticated as "Lecturer" can search through them


        Background: 
            Given is a lecturer at a University
            And questions from previous quizzes 
            And categories for quiz questions

        Scenario Outline: Search questions
            Given the Lecturer is on the scene "Create new Quiz"
                And she adds a new question
            When Lecturer selects <Browse old Questions>
                And clicks on the search button 
            Then an input cell appears on the page 
                And she writes the name of the question

            Scenarios:
                |   Question found                             |      Question not found            |
                |   Multiple questions that fit the input given|      Suggest similar questions     |
                |   One question that fits the input given     |      Suggest creating a question   |  