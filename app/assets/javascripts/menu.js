var menuHandler = {
  appendNewMenu: function(e, response){
    var newMenuObject = "<div><h3>"+response.menu.name+"</h3></div>"
    $('.menu_list').append(newMenuObject)
    $('#menu_name').val("");
  }

}


$(document).ready(function(){
  $('.new_menu').on('ajax:success', menuHandler.appendNewMenu)

})