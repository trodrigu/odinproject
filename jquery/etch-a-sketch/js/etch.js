n = 0;
  $(document).ready(function() {
      while (n < 4) {
        clone = $(".grid").clone();
        clone.appendTo(".wrapper");
        n++;
      }
      while (n > 0) {
        clone = $(".wrapper").clone();
        clone.appendTo(".motherwrapper");
        n--;
      }
  });
