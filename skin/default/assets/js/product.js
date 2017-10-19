$(function () {
    $("button.bootstrap-touchspin-up").click(function () {
        var _val = $("#qty").val();
        if (_val === undefined) {
            _val = 1;
        }
        var _new_val = parseInt(_val) + 1;
        $("#qty").val(_new_val);

    })

    $("button.bootstrap-touchspin-down").click(function () {
        var _val = $("#qty").val();
        if (_val === undefined) {
            _val = 1;
        }
        var _new_val = parseInt(_val) - 1;
        if (_new_val < 1)
            _new_val = 1;
        $("#qty").val(_new_val);

    })



    // for cart page
    $("button.bootstrap-cart-up").click(function () {
        var _val = $(this).parent().parent().find('.qty').val();
        var _pid = $(this).parent().parent().find('.product-id').val();
        if (_val === undefined) {
            _val = 1;
        }
        var _new_val = parseInt(_val) + 1;
        $(this).parent().parent().find('.qty').val(_new_val);
        addToCart(_pid, _new_val);
        history.go(0);

    })

    $("button.bootstrap-cart-down").click(function () {
        var _val = $(this).parent().parent().find('.qty').val();
        var _pid = $(this).parent().parent().find('.product-id').val();
        if (_val === undefined) {
            _val = 1;
        }
        var _new_val = parseInt(_val) - 1;
        if (_new_val < 1)
            _new_val = 1;
        $(this).parent().parent().find('.qty').val(_new_val);
        addToCart(_pid, _new_val);
        history.go(0);
    })


    /*
     Add to cart fly effect with jQuery. - May 05, 2013
     (c) 2013 @ElmahdiMahmoud - fikra-masri.by
     license: http://www.opensource.org/licenses/mit-license.php
     */
    $('.btn-cart').click(function () {
        var cart = $('.shopping-cart');
        var imgtodrag = $(".imageviewbig").find("img").eq(0);
        if (imgtodrag) {
            var imgclone = imgtodrag.clone()
                    .offset({
                        top: imgtodrag.offset().top,
                        left: imgtodrag.offset().left
                    })
                    .css({
                        'opacity': '0.5',
                        'position': 'absolute',
                        'height': '150px',
                        'width': '150px',
                        'z-index': '100'
                    })
                    .appendTo($('body'))
                    .animate({
                        'top': cart.offset().top + 10,
                        'left': cart.offset().left + 10,
                        'width': 75,
                        'height': 75
                    }, 1000, 'easeInOutExpo');

            setTimeout(function () {
                cart.effect("shake", {
                    times: 2
                }, 200);
            }, 1500);

            imgclone.animate({
                'width': 0,
                'height': 0
            }, function () {
                $(this).detach()
            });
        }


        // add to cart
        var _num = $("#qty").val();
        var _pid = $("#product_id_for_wishlist").val();
        addToCart(_pid, _num);
    });
})


