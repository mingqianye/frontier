$(document).on('ready page:load', function () {
  $('.grid').isotope({
    itemSelector: '.grid-item',
    layoutMode: 'fitRows',
    fitRows: { gutter: 10 }
  });
});
