# ~==~ SELDOM ~==~


*SELDOM* is a compilation of the most appealing Processing sketches I have created this year, each of which is displayed sequentially within a (generally) static enviormment. These concepts are each displayed within seperate rooms, allowing for the viewer to experience each concept in it's entirety. When running *SELDOM*, the sketch show a dimly lit room with a glowing red lightswitch upon the wall opposite the viewer. The lightswitch can be toggled off/on by clicking on it's offset housing platform. By interacting with the lightswitch, the viewer will eventually find that a shiny red door has appeared to the left of, and along the same wall as, the lightswitch. By toggling the lightswitch off while the door is in existance, the viewer will find the door moving in an usual way. 

### Difficulties or opportunities you encountered along the way.

I decided midway through writing this sketch to make the original area repeat throughout the sketch while varying concepts are displayed and applied to it. This led me to format the entire sketch in a way which allowed me to draw only certain elements based on the viewer's progress through the sketch. I had to reformat most of the classes and their methods, making them individually accessible and dependant on the viewer's progress.

### Most interesting piece of your code and explanation for what it does.


This is the code that moves down the tree as decisions are made. It gets each value from both left and right and also casts the value to a String. If the progressions arrives at the leaf nodes, those values are printed.
## Built With

* [Processing](https://processing.org/) - The IDE used

## Authors

* **Billie Thompson** 

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc




*paste this into draw method*

imageMode(CENTER);
  clip((float)(Math.random() * (double)width), (float)(Math.random() * (double)height), (float)(Math.random() * (double)width) + (float)(Math.random() * 100.0), (float)(Math.random() * (double)height) + (float)(Math.random() * 100.0));
