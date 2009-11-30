Feature: JQuery selectors for Nokogiri
  In order to make HTML parsing easier
  As a Ruby developer
  I want to be able to use JQuery selectors when parsing HTML docs

  Scenario Outline: Nokogiri and JQuery compatibility
    Given I have a html page
    Then I should get the same results using JQuery and Nokogiri for selector "<selector>"
    
  Scenarios: css3 selectors
    | selector |
    | li.date  |
    
  Scenarios: Jquery selectors
    | selector |
    | li:has(hello)  |
    
    
    

