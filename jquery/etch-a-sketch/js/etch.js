/* increments amount of tries */
h = 0;

/* Integer test function */
function isInt(n) {
  return n % 1 === 0;
}

/* Includes setup */
function grid_reset() {
  grid_size = window.prompt( "How big would you like the grid?" );
  if (grid_size > 64) {
    alert("Too big.  Anything under 64.");
  }
  else {
    k_0 = Math.sqrt(grid_size);
    console.log(k_0);
    if (Math.sqrt(!isInt(k_0))) {
      k = Math.floor(k_0);
    }
    else {
      k = k_0;
    }
    n = 0;
    grid_setup();
    console.log(k);
    h++;
  }
}


/* Basic setup */
function grid_setup() {
  $(document).ready(function() {
    if (grid_size > 32) {
      while (n < k-2) {
        clone = $( ".grid" ).clone();
        clone.appendTo( ".wrapper" );
        n++;
      }
    }
    if (grid_size > 16) {
      while (n < k-1) {
          clone = $( ".grid" ).clone();
          clone.appendTo( ".wrapper" );
          n++;
        }
    }
    else {
      while (n < k) {
          clone = $( ".grid" ).clone();
          clone.appendTo( ".wrapper" );
          n++;
        }
    }
    while (n > 0) {
      clone = $( ".wrapper" ).clone();
      clone.appendTo( ".motherwrapper" );
      n--;
    }
});
}

function grid_size_mid() {
  document.writeln( "<div class='wrapper'><div class='grid'></div></div>");
}

/* Cleans up the grid system and leaves one grid */
function grid_remove() {
    $( ".wrapper" ).remove();
    $( ".motherwrapper" ).append( "<div class='wrapper'><div class='grid'></div></div>" );
}

/* Action for button push */
function reset() {
  $( ".wrapper" ).find( ".select" ).removeClass( "select" );
  grid_remove();
  grid_reset();
  grid_measure();
  hoverblack();
}

function hoverblack() {
  $(document).ready(function() {
    $( ".grid" ).hover(
      function() {
        $( this ).addClass( "select" );
      });
  })
}

function grid_measure() {
  $(document).ready(function() {
    count = $( ".wrapper" ).length;
    console.log(count);
  })
}

function main() {
  grid_reset();
  grid_measure();
  hoverblack();
}

main();
