$(document).ready(function() {
    $('#create_account').on('submit', createUser);
    $('#goal_form').on('submit', createGoal);
});


var createUser = function(event){
  event.preventDefault()
  $('#sign_up').hide()
  $('#goal').show()
  var data = $(this).serialize()
  var route = $(this).attr('action')
  $.ajax({
    url: route,
    method: 'POST',
    data: data
  })
}

var createGoal = function(event){
  event.preventDefault()
  $('#goal').hide()
  $('#social').show()
  var data = $(this).serialize()
  var route = $(this).attr('action')
  console.log(route)
  $.ajax({
    url: route,
    method: 'POST',
    data: data
  })
}



