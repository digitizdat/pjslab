int i = 0; 

void setup() {  // this is run once.   
    doResize();

    // set the background color
    background(255);

    // smooth edges
    smooth();

    // limit the number of frames per second
    frameRate(5000);

    // set the width of the line. 
    strokeWeight(1);
} 

void draw() {  // this is run repeatedly.  
    int skipwidth = 5;
    int destination = 0;

    // set the line color
    stroke(random(10), random(255), random(255), 10);

    destination = floor(random(0, width));
    while (destination > 0 && ((destination % 5) != 0)) {
        destination -= 1;
    }

    // draw the line
    line(i, 0, destination, height);

    // move over a pixel
    if (i < width) {
        i += skipwidth;
    } else {
        i = 0; 
    }
}

function doResize()
{
    var setupHeight = Math.max($(document).height(), $(window).height());
    $('#bgcanvas').width($(window).width());
    $('#bgcanvas').height(setupHeight);
    size($(window).width(), setupHeight);
}

// $(window).resize(doResize);
