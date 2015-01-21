/* Includes setup */
function grid_reset() {
  grid_size = window.prompt( "How big would you like the grid?" );
  if (grid_size > 64) {
    alert("Too big.  Anything under 64.");
  }
  else {
    k = grid_size;
    n = 0;
    grid_setup();
    console.log(k);
  }
}

/* Basic setup */
function grid_setup() {
  $(document).ready(function() {
    while (n < k-1) {
      clone = $( ".grid" ).first().clone();
      clone.appendTo( ".wrapper" );
      n++;
      }
    while (n > 0) {
      clone = $( ".wrapper" ).first().clone();
      clone.appendTo( ".motherwrapper" );
      n--;
    }
});
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
