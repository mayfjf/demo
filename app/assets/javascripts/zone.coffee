# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

function makingSure(e) {
   var r = window.confirm("The item that your are trying to delete may be connected to another item in the database. Are you sure you want to delete this item? Deleted items cannot be recovered." );
   if (r==true){
    return true;
   }
   else
   e.preventDefault();
}

   
  
