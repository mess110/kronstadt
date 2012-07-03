updateVotes = function(element, vote) {
  note_id = $(element).attr("note_id");
  $.get('/notes/' + note_id + '/vote/' + vote, {}, function(data) {
    $("#vote_count" + note_id).html($("<span>").html(data));
  })
}

$(document).ready(function() {
  $(".uptoke").click(function() {
    updateVotes(this, 1);
  });

  $(".downtoke").click(function() {
    updateVotes(this, -1);
  });
});
