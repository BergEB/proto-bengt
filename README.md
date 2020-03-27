<br />
<br />
<br />

# **=̪̻̮̹̻̭͍̦̪̗̘̣̈͑̓̄̅͋ͯ̋̾̆̊̈́̆̓ͪ͋=̰̥̦̯̻̙͋ͧ̓S̘̖̭̘̙̖̥̖͚̤̘͕̘͙̰͇̺̃͋̓̓ͯ̆ͥ͆ͅE͇̟̜̥̞̪͉̲̖̥̪̫ͧ͌̒̒ͫ͒ͤ̐ͮ͆ͪ̒͐ͯ͆̏ͮL̦͈̝̼̰͍̜̲͎̟͕͚̤͙̬ͣͮ̃̔ͫͪ̂̽͊̂͌ͮͤ̒̚D̮͙̹͍̯̼̗̤͈̦͖̱̗͇͇̺̰̔ͬ͒̇̐̏̊̂͐̇ͨ̐ͮO̟̩̙̳͑̏ͨ̆͂ͩͧ̾̓̈̀ͩ͛̓M̻̻̤̼͙̙̯̞̞͙̜̖͓͓͉̱͗͊͗ͥ̓͂=̝͖̣͖̪̯̳̱͖̥͚̖̰̠ͩ͗ͥ̎̚=̳̯̞̗̩̫̩̜̲͍̺̯̓ͩ̆̄̉̃̂̾**


<br />
<br />
<br />
<br />
<br />

***SELDOM*** is a compilation of the most appealing Processing sketches I have created this year, each of which is individually showcased within a static enviormment. These concepts are each displayed within seperate rooms, allowing for the viewer to experience each concept in it's entirety. When running *SELDOM*, the sketch shows a dimly lit room with a glowing red lightswitch upon the wall opposite the viewer. The lightswitch can be toggled off/on by clicking on it's housing platform. By interacting with the lightswitch, the viewer will eventually find that a shiny red door has appeared to the left of the lightswitch along the far wall. By toggling the lightswitch off while the door is in existance, the viewer is able to travel to the next stage of the structure. 

	NOTICE: Enviornment & excerpts are not yet integrated. This will be included in release V.1.0

### ***Impediments***
I decided midway through writing this sketch to make the original area repeat throughout the structure while varying sketch excerpts are displayed individually per each stage. This led me to format the sketch in a way which allowed me to draw only certain elements based on the viewer's progress through the sketch. I modified most classes and their methods, making each method individually accessible and dependant on the viewer's progress.

### ***Check this out, Doc***
```Java
boolean within(double x1, double y1, double x2, double y2) {
  if (mouseX >= x1 && mouseX <= x2 && mouseY >= y1 && mouseY <= y2) {
     return true;
   }
   else {
     return false;
   }
}
```
* This method returns true if the cursor is within a rectangle drawn by the parameters.
* I used this to create points of available interaction (referred to as hitboxes), indicated to the user by an alternate cursor colorway when within hitbox.
```Java
void create() {
    float yoff = 0;
    for (int y = 0; y < cols; y++) {
      float xoff = 0;
      for (int x = 0; x < rows; x++) {
        kolor[x][y] = map(noise(xoff, yoff), 0, 1, 0, 255);
        xoff += scale;
      }
      yoff += scale;
    }
    for (int y = 0; y < cols; y++) {
      for (int x = 0; x < rows; x++) {
        noStroke();
        fill(kolor[x][y]);
        rect(x * scl, y * scl, scl, scl);
      }
    }
  }
```
* This is from a non-yet implemented sketch excerpt, but it was challenging nevertheless.
* This uses the noise() method, an adaption of the Perlin Noise mathmatical function, which creates a more naturally distributed randomization than that of Math.random().
* This creates and saves a JPEG of a resolution equal to the sketch's size. They look similar to ink spots used in psychology.
* Here is an example of the resulting image: [heightmap.jpg](https://github.com/BergEB/proto-bengt/blob/master/Terrain/heightMap/heightMapCreator/heightmap.jpg)

## *Built With*
* [Processing](https://processing.org/) - *The IDE used.*
* [PeasyCam](http://mrfeinberg.com/peasycam/) - *Library with methods beginHUD() & endHUD() used to draw natural 2-dimensional entities on top of a 3-dimensional (P3D) enviornment.*
* [QueasyCam](https://github.com/jrc03c/queasycam/) - *Library for a mouse-driven P3D first-person camera.*

## *Authors*
* **Erik Bengt Berg** 
* **Erik's brain**

## *Recent Updates*
~~ poly#s (TriaFlow) ~~
 - fixed strokes
 - added central rotation
 - adjusted positioning to reduce stroke overdraw

~~ heightMap ~~
 - implemented procedural mapping
 - optimized stroke weight for windowed useage
 - disabled continuous rotation to better exemplify procedural drawing
 - (old implementation is //'d in the heightmapcopy.pde file)

~~ WormHole (WH) ~~
 - fixed positioning and rotated 90 degrees
 - has a better effect when advancing stages
 - reduced stroke weight due to proximity

~~ HUD ~~
 - added custom arrow png instead of ^ text for stage advancement
 - need to move stage variable somewhere else, it doesn't make sense to be housed in the hud class

~~ General ~~
 - reduced perspective render bounds from 5000f to 3000f (pointless)
 - removed obselete keyPressed and keyReleased methods
 - lighting is optimized for the statue
 - changed starting stage to 1 instead of 0
 - took lighting off of displayed attractions as to keep them in their original state
 - removed stage 7's sprialLow construct
 - moved WH from stage 8 to stage 7
