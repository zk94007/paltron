$(function() {
  $('span.star').on('click', function(){
    var rating = $(this).data('rating');
    $(this).closest('.InputfieldContent').find('input').val(rating);
    $(this).siblings().removeClass('active');
    $(this).addClass('active');
  });
  $('span.reset').on('click', function(){
    var rating = 0;
    $(this).closest('.InputfieldContent').find('input').val(rating);
    $(this).siblings().removeClass('active');
  });
  $(document).on({
    mouseenter: function(){
      var rating = $(this).closest('.InputfieldContent').find('input').val();
      if (rating !== undefined) $(this).find('span.star').removeClass('active');
    },
    mouseleave: function(){
      var rating = $(this).closest('.InputfieldContent').find('input').val();
      if (rating !== undefined) $(this).find('span.star[data-rating="' + rating + '"]').addClass('active');
    }
  }, 'div.rating');

});
