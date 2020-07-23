jQuery(document).ready(function(){

    jQuery("a[href$=\'#\']").each(function() { jQuery(this).attr("href", "javascript:void(0);")});

    jQuery('[data-repeat]').each(function () {
        var length = $(this).data('repeat');
        for (let i = 1; i < length; i++) {
           var item = $(this).clone();
           item.removeAttr('data-repeat');

           // Alternating colors
           if (i === 1 || i === 4 || i === 7) {
              item.find('.press-post').removeClass('press-post--consumer').addClass('press-post--business');
           }

           if (i === 3 || i === 6 || i === 9) {
              item.find('.press-post').removeClass('press-post--consumer').addClass('press-post--corporate');
           }

           var withId = item.find('[id]');
           var withFor = item.find('[for]');
           var num = item.find('[data-number]');
           var values = item.find('[data-values]');
           if (withId.length) {
              withId.attr('id', (withId.attr('id') + '_' + i));
           }
           if (withFor.length) {
              withFor.attr('for', (withFor.attr('for') + '_' + i));
           }
           if (num.length) {
              num.replaceWith(i + 1);
           }
           if (values.length) {
              values.replaceWith(values.data('values').split(',')[i - 1]);
           }
           item.appendTo($(this).parent('[data-repeat-into]'));
        }
     });


     var fltrBox = jQuery('.filters-box');
     fltrBox.on('click', function (e) {
        jQuery(this).toggleClass('active');
    });

    jQuery(document).on('mouseup', function (e) {
        if (!fltrBox.is(e.target) && fltrBox.has(e.target).length === 0) {
           fltrBox.removeClass('active');
        }
     });

});