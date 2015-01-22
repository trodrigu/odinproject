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
        $( this ).css( "background-color", random_color(9));
      })
  });
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

/* Darken color */
function darken_color(col, amt) {
  col = parseInt(col, 16);
  return (((col & 0x0000FF) + amt) | ((((col >> 8) & 0x00FF) + amt) << 8) | (((col >> 16) + amt) << 16)).toString(16);
}

/* Random color generator */
function random_color(n) {
  array = [];
  for (i = 0; i < 6; i++) {
    randomizer = Math.random() * (n);
    random_int = Math.floor(randomizer);
    array.push(random_int);
  }
  hex_str = array.join('');
  hex_str = "#" + hex_str;
  // hex_code = parseInt(hex_str)
  // console.log(hex_code);
  console.log(hex_str);
  return hex_str;
}


// random_color(9);
// hoverblack();
console.log(darken_color("FFFFFF", -10));
main();
