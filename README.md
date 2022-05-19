# Millitome Generator

"Millitome Generator" was programmed in OpenScad 2021.1 on MacOS.

OpenScad is open source software https://openscad.org.

<h3>Function overview</h3>

A millitome is a device designed to hold a freshly procured organ and facilitate cutting it into many small tissue blocks for usage in single cell analysis. A millitome has discrete, equally placed cutting grooves in both the x and y directions to guide a carbon steel cutting knife. The millitome is used to produce uniformly sized slices or cubes of tissue material that can be registered to organs from the CCF 3D Reference Object Library.

Millitome Generator uses modified 3D-models from the HuBMAP organ repository to generate 3D-printable millitomes, delivered as STL files. The exact shape, proportions and dimensions of the generated millitome depend directly on the properties of the organ model used.

Unlike regular 3D modelers, which rely on a visual point-and-click interface, OpenScad is fully code based. That means, the 3D geometry is only created after the user executes the text-based code. This makes it easy to create variations of a 3D object (e.g., millitomes for different organ sizes or tissue block sizes) by changing relevant parameters in the code.

The user adjusts a handfull of variables, such as organ type, gender, block size and selects which part of the millitome (top, bottom) should be generated. OpenScad will build the requested geometry, which can then be exported as an STL file for 3D-printing.

<h3>Folder content</h3>

Millitome Generator is currently in version 10. The OpenScad code can be found in "OpenScad Code/V10/". Also in this folder is a directory called "organs". This folder contains 24 STL files with modified/simplified geometry of the respective organs from the HuBMAP repository. When Millitome Generator runs in OpenScad it will look for the specified STL organ files in the "organs" folder.

