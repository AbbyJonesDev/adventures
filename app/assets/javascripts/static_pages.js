// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
  $("#strength-learner").click(function() {
    $("#learner-def").slideToggle("slow");
  });
  $("#strength-achiever").click(function() {
    $("#achiever-def").slideToggle("slow");
  });
  $("#strength-connectedness").click(function() {
    $("#connectedness-def").slideToggle("slow");
  });
  $("#strength-responsibility").click(function() {
    $("#responsibility-def").slideToggle("slow");
  });
  $("#strength-arranger").click(function() {
    $("#arranger-def").slideToggle("slow");
  });
});