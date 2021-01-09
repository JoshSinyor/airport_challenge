# Airport Challenge

This file documents the process of designing, coding and testing this project. This process will use the TDD process, divided into several steps. These steps are:

1.  Identifying User Stories, and sorting them into:
    * Objects and their Attributes, and
    * the Messages to be sent between them.
2.  Identifying Features
3.  Creating individual files for each Class.
3. Creating

## 1. User Stories, Objects, Attributes & Messages:

Narrowed, the six User Stories are:

> 1.  I would like a default airport capacity that can be overridden as appropriate.
> 2.  I want to instruct a plane to land at an airport.
> 3.  I want to prevent landing when the airport is full .
> 4.  I want to prevent landing when weather is stormy
> 5.  I want to instruct a plane to take off from an airport and confirm that it is no longer in the airport
> 6.  I want to prevent takeoff when weather is stormy.

The User Stories can be sorted into the following Objects and their Attributes:

*  <Airport>
  *  <@capacity>
  *  <@apron []>
*  <Plane>
*  <Storm>
  *  <@storm_state>

The Messages to be sent between these Objects will be:

1.  <land>
2.  <takeoff>
3.  <stormy?>
4.  <full?>
5.  <taken_off?>

The relationships between the Objects, Attributes, and Messages are:

Object | Attribute | Message
<Airport> | <@capacity> |
| <@apron> | <land>, <takeoff>, <taken_off?>
<Plane> ||
<Storm> || <stormy?>

## 2. Features

### Setting Up the Environment

1.  Create the <Airport> Class.
    1.  Set <Airport> instance attribute <@capacity>.
        1.  Set <@capacity> constant <DEFAULT_CAPACITY>.
        2.  Allow manual overriding of <@capacity>.
    3.  Set <Airport> instance attribute <@apron> as array.
    4.  Create an instance of the <Airport> Class.

2.  Create the <Plane> Class.
    1.  Create an instance of the <Plane> Class.

3.  Create the <Storm> Class.
    1.  Set <Storm> instance attribute <@storm_state>.

### Interacting with the Environment

5.  Tell the <#plane> to <land> at the <#airport> (<#airport.land(#plane)>).
6.  If <#storm != "true">, add <#plane> to the <#apron>.
