// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

$(document).ready(function() {
  var slugs = [
    "Developer",
    "Filmmaker",
    "Producer",
    "Wordsmith"
  ];

  var i = 0;

  function loop() {
    $("#profile-slug").html(slugs[i]).animate({ opacity: 1 }, function() {
      $("#profile-slug").delay(3000).animate({ opacity: 0 }, function() {
        if (i == slugs.length - 1) i =-1; i++; console.log(i);
        setTimeout(loop);
      });
    });
  }

  loop();

});
