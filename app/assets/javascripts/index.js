var initializeTableSorter;
initializeTableSorter = function() {

  $("#myTable").tablesorter({
    widthFixed: false,
    theme: 'bootstrap',
    headerTemplate: '{content} {icon}',
    widgets: ['uitheme'],
    headers: {
      2: { sorter: false },
      6: { sorter: false },
      7: { sorter: false }
    }
  }).tablesorterPager({container: $('#pager')});
};

// fixing turbolinks issues
$(document).ready(initializeTableSorter);
$(document).on('page:load', initializeTableSorter);
