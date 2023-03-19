// This macro opens the head image stack and reslices it to view it from different angles (side, top, front, and 3/4 view)
// Close other open images
run("Close All");

// open head image stack
open("http://imagej.net/images/t1-head.zip");
rename("Head viewed from the side");

// Reslice the head image stack to view the head from the top and from the side
run("Reslice [/]...", "output=1.500 start=Top"); // view head from the top
rename("Head viewed from the top");
run("Reslice [/]...", "output=1.500 start=Left"); // view head from the front
rename("Head viewed from the front");

// Rotate the head stack that is viewed from the top and reslice to obtain 3/4 view
selectWindow("Head viewed from the top");
run("Duplicate...", "duplicate");
run("Rotate... ", "angle=45 grid=1 interpolation=Bilinear enlarge stack"); // rotate the stack
run("Reslice [/]...", "output=1.500 start=Top");
rename("Head in 3/4 view");

run("Tile");
