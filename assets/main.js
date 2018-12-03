$(".js-select2").each(function(){
  $(this).select2({
    minimumResultsForSearch: 20,
    dropdownParent: $(this).next('.dropDownSelect2')
  });
})
$('.js-pscroll').each(function(){
  $(this).css('position','relative');
  $(this).css('overflow','hidden');
  var ps = new PerfectScrollbar(this, {
    wheelSpeed: 1,
    scrollingThreshold: 1000,
    wheelPropagation: false,
  });

  $(window).on('resize', function(){
    ps.update();
  })
});
