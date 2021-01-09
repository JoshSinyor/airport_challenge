This file documents the process of designing, coding and testing this project.

User Stories:

1.  I would like a default airport capacity that can be overridden as appropriate.
2.  I want to instruct a plane to land at an airport.
3.  I want to prevent landing when the airport is full .
4.  I want to prevent landing when weather is stormy
5.  I want to instruct a plane to take off from an airport and confirm that it is no longer in the airport
6.  I want to prevent takeoff when weather is stormy.

Objects and their Attributes:

1.  Airport
  1.  @capacity
  2.  @apron []
2.  Plane
  1.  @taken_off
3.  Storm
  1.  @storm_state

Messages:

1.  land
2.  takeoff
3.  stormy?
