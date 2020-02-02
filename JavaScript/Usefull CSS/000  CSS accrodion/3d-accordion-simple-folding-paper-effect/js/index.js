$(document).ready(function(){
    $('.card').click(function(){
				$(this).find('.details-1, .details-2').toggleClass('unfold').parents('.card').siblings().children('.details-1, .details-2').removeClass('unfold');
				$(this).toggleClass('span').siblings('.card').removeClass('span');
    });
});