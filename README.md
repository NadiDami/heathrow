#Heathrow
##Makers Academy Week 3 Test


###Aim

The aim of this test was to write software to control the flow of planes at an airport.

We were provided with a basic test suite and had to create the set of classes/modules to make the test suite pass.

###Other details

The test was set by Enrique Comba Riepenhausen, [@ecomba](http://www.github.com/ecomba)


###Features

* Planes can land and take off, given the weather is sunny
* The weather is controlled by a random number generator, and is ocasionally stormy
* Every plane must have a status indicating whether it is flying or landed

I also had to implement *the grand finale*:

* Given 6 planes, each plane must land. When the airport is full, every plane must take off again (keep in mind the weather could be stormy)
* Check when all the planes have landed that they have the right status "landed"
* Once all the planes are in the air again, check that they have the status of flying!


###To do

* Refactor, particuarly the 'grand finale' spec
* Add messages to explain what is going on, e.g. "*Stormy weather prevented the plan from landing*"

