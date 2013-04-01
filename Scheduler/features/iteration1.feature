Feature: iteration 1



	Scenario: Looking at calendar
		Given I am on the calendar page
		Then I should see the current month

	Scenario: Selecting a day
		Given I am on the calendar page
		And I am using the weekly view
		When I follow "Today"
		Then I should see the current day


	Scenario: Selecting a shift
		Given that I am on the calendar page
		And I have an EMT shift from 1:00 PM to 2:00 PM on the current day
		And I am using the weekly view
		When I follow the shift in the 1:00 PM to 2:00 PM slot
		Then I should be on the shift page for this time slot
		And I should see “<username>” under “username”
		And I should see “<EMT>” under “position”

	Scenario: Filling a shift
		Given that I am on the calendar page
		And there is an available EMT shift from 1:00 PM to 2:00 PM on the current day
		And I am using the weekly view
		When I follow the shift in the 1:00 PM to 2:00 PM slot
		Then I should be on the shift page for this time slot
		And I follow “Fill This Shift”
		Then I should be on the shift page for this time slot
		And I should see “<username>” under “username”
		And I should see “<EMT>” under “position”

