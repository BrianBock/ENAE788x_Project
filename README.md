# ENAE788x Project

![Mission Logo](https://github.com/BrianBock/ENAE788x_Project/blob/main/logo/courage_mission.png)

## SolidWorks Files
All of the CAD files associated with this project are in the [CAD folder](https://github.com/BrianBock/ENAE788x_Project/tree/main/CAD).The main Solidworks assembly is `rover.sldasm`. This file contains the completed/finalized rover, comprised of several rover subassemblies (`front_chassis_assembly`, `rear_chassis_assembly`, `sensor_arch`, `seat_and_restraint`) and the life support payload, as well as several obstacles, Z2 astronauts, and "Lego" astronauts. The easiest way to navigate this collection of files is to start at the `rover.sldasm` file and navigate through the part tree, selecting and opening whichever subassembly (or subsubassembly) you wish to take a closer look at. 

There are some SketchUp models in this folder as well, which are mostly sketches and concept drafts. If you want to view these, you'll need to download [Sketchup Make 2017](https://help.sketchup.com/en/downloading-older-versions) or later. 

### Wheels and Suspension
There is a separate wheel/suspension subassembly for each wheel (FR, FL, RR, RL). The left and right assemblies ((FR, FL), & (RR, RL)) are identical in nearly every way, differing only in a unique spring, whose length is a function of the that wheel's wishbone positions. The front and rear suspensions differ only in the way they mate to the assembly. The front two wheels have a cylindrical mate (placeholder for a steering motor), while the rear two wheels (which do not turn) mate via a rectangular prism. They all share the same wishbone, motor, motor hub, mudguard, and wheel files. You can manually adjust the position of a wheel (up/down) in either the rear or front chassis subassembly, and the spring inside will correspondingly compress or stretch (after you rebuild the document).

### Extended/Unextended Configurations
There are two concentric mates in the rover assembly that determine if the rover is in the extended or unextended configuration. To switch from one configuration to another, you must supress the active concentric mate and then unsuppress the other. These mates conflict and are mutually exclusive - only one can be enabled at once. The seat assembly is flexible - just drag the second seat into it's proper configuration. 


### Trafficability Rover
There is a file (`trafficability rover + obstacles.sladsm`) which is the same as the final rover file, but with completely different mates. This version is used to generate the trafficability analysis and renders, while still preserving the original final rover. 



## Credits
Moon image used in Courage Mission logo from [https://en.wikipedia.org/wiki/Moon](https://en.wikipedia.org/wiki/Moon)

Z2 Astronaut from [https://nasa3d.arc.nasa.gov/detail/nmss-z2](https://nasa3d.arc.nasa.gov/detail/nmss-z2)

8020 Beam Profiles from [8020.net](8020.net) and [https://www.3dcontentcentral.com](https://www.3dcontentcentral.com)

Velodyne LiDAR Puck LITE from [https://velodynelidar.com/products/puck-lite/](https://velodynelidar.com/products/puck-lite/)

