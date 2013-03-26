//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .

$(function(){
  setupSortableList();
});

function setupSortableList(){
  $('#sortable_users ul').sortable({
    items: 'li',
    update: function(){
      reorder($(this));
    }
  });
}

function reorder(list){
  $.post('/users/reorder', { _method: 'put', ordered_users: list.sortable('toArray') }, function(data){
    $('#sortable_users li').effect('highlight');
    $.each($('#sortable_users ul li'), function(index, value){
      $(this).children('.position').html(index + 1);
    });
  });
}
