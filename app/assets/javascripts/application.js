// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery-ui
//= require dataTables/jquery.dataTables
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .


function dataTableFunction(){
    $(document).ready(function(){
        // For fixed width containers
        $('#customers').dataTable({
            sDom: "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>",
            "aaSorting": [[ 0, "desc" ]],
            sPaginationType:  "full_numbers"
        });
    });
}
