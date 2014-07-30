#Shortest Detour Calculator

#####Description

The Detour Calculator solves for the following prompt:

*"Calculate the detour distance between two different rides. Given four latitude / longitude pairs, where driver one is traveling from point A to point B and driver two is traveling from point C to point D, write a function (in your language of choice) to calculate the shorter of the detour distances the drivers would need to take to pick-up and drop-off the other driver."*

#####Install and Run

Clone the repo:

```
git clone https://github.com/pdwittig/detour_calculator.git
```

Navigate into the directory:

```
cd detour_calculator
```

Run the tests: 

```
ruby test.rb
```

OR

Create your own tests:

Input:  ```DetourCalculator#get_shortest_detour``` takes two args, driver_1 and driver_2, which should each be in the following format:

```
{ start: { lat: 37.787336 , lon: -122.421184 },
  dest: { lat: 37.79164 , lon: -122.41824 } }
```

Output: ```DetourCalculator#get_shortest_detour``` returns a hash with the shortest route as a key, and the detour distance as the corresponding value:

```
{ cabd: 0.09059989390463041 }
```
