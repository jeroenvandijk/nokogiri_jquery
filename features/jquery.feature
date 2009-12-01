Feature: JQuery selectors for Nokogiri
  In order to make HTML parsing easier
  As a Ruby developer
  I want to be able to use JQuery selectors when parsing HTML docs

  Scenario Outline: Nokogiri and JQuery compatibility
    Given I have a html page
    Then I should get the same results using JQuery and Nokogiri for selector "<selector>"
    
  # Jquery selectors (from http://docs.jquery.com/Selectors)
  Scenarios: Already supported selectors
    | selector                          |
    | li.date                           |
    | li:first                          |
    | li:contains('List item 2')        |
    | li:parent                         |
    | li[name]                          |
    | li[name='special']                |
    | li[name^='spec']                  |
    | li:has(p[name='nested'])          |
    | li[name!='special']               |
    | li[name!='none-existing-name']    |
    | li:has(p:contains('List item 5')) |

  Scenarios: Supported but with different behaviour
    | selector                              |
    | li:eq(3)                              |
    | li[notpresentattribute!='some value'] |
    | li:gt(3)                              |
    | li:last                               |

  Scenarios: Not yet supported
    | selector                    |
    | li:not(p[name='nested'])    |
    | li:not(li:last)             |
    | li:even                     |
    | li:odd                      |
    | li:lt(3)                    |
    | li:header                   |
    | li:empty                    |
    | li:hidden                   |
    | li:visible                  |
    
  Scenarios: Unsupported but for a good reason
    | selector                    |
    | li:animated                 |
    
  Scenarios: All mixed up
    | selector                                                               |
    | li.date fieldset:has(legend span:contains('List item 4')) ol li select |

