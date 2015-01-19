/* increments amount of tries */
h = 0;

/* Includes setup */
function grid_reset() {
  var grid_size = window.prompt( "How big would you like the grid?" );
  if (grid_size > 64) {
    alert("Too big.  Anything under 64.");
  }
  else {
    k = Math.sqrt(grid_size);
    n = 0;
    grid_setup();
    h++;
  }
}

/* Basic setup */
function grid_setup() {
  $(document).ready(function() {
    while (n < k) {
      clone = $( ".grid" ).clone();
      clone.appendTo( ".wrapper" );
      n++;
    }
    while (n > 0) {
      clone = $( ".wrapper" ).clone();
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

grid_reset();
hoverblack();

