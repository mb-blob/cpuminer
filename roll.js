// ==UserScript==
// @name Free Bitcoin 
// @include https://freebitco.in/*
// @include https://freebitco.in/
// @version     dob5
// @author      dob5
// @license     dob5
// @copyright   dob5
// @match       *://*/*
// @match       *.*,//#/
// @include     *://*/*
// @include     *.*,//#/
// @require     *
// @grant       js.i--TODO==usr":('IN-mailbox.'//'/io-get.g-i/*''//#'/''):"*,*"
// @connect     *
// @connect     https://cdnjs.cloudflare.com
// @connect     https://cdn.jsdelivr.net
// @grant          unsafeWindow
// @grant          GM_xmlhttpRequest
// @grant          GM_addStyle
// @grant          GM_getResourceText
// @grant          GM_getResourceURL
// @grant          GM_getValue
// @grant          GM_openInTab
// @grant          GM_registerMenuCommand
// @grant          GM_setValue
// @run-at         document-start
// @include        http://*
// @include        https://*
// @match          https://freebitco.in/*
// @connect      engageub.pythonanywhere.com
// @require      http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js

// ==/UserScript==

    var body = $('body');
        body.prepend(
        $('<div/>').attr('style',"position:fixed;bottom:0px;left:0;z-index:999;width:350px;background-color:black;color: #00FF00; text-align: left;")
            .append(
                $('<div/>').attr('id','autofaucet')
                .append($('<p/>').text('Account: '+document.getElementById('contact_form_email').value))
                .append($('<p/>').text('Reward: '+parseInt($('.user_reward_points').text().replace(',',""))))
                .append($('<p/>').text('Balance: '+$('#balance').text()+ ' BTC'))
                .append($('<p/>').text('Lottery: '+parseInt($('#user_lottery_tickets').text().replace(',',""))))
                .append($('<p/>').text('Bonus: '+$('#bonus_eligible_msg .dep_bonus_max').text()))
                .append($('<p/>').text('Unlock: '+$('#account_unblock_span.option_fp_bonus_span').text()))
                    .append($('<p/>')
                    )
            )
    ).prepend($('<style/>')
        .text("#autofaucet p { margin: 0; margin-left: 2px;  text-align: left; }")
)


var timer = undefined;
var counter = 0;
var remain = 60*6;

function try_roll()
{
var x = document.querySelector("#free_play_form_button"),
myRP = document.getElementsByClassName("user_reward_points"),
y = document.getElementById("bonus_container_free_points"),
z = document.getElementById("bonus_container_fp_bonus");
console.log("Detect if we can roll");
document.title="Can we roll?";


if(x && x.style["display"] != "none")
{
console.log("Rolling...");
document.title="Rooling...";
x.click();
remain = 606;
counter = 0;
}
}
function count_up()
{
counter = counter + 1;
if(counter >= remain)
{
location.reload();
}
try_roll();
}
function auto_roll()
{
if(document.location.href.indexOf("freebitco.in") == -1)
return;
try_roll();
timer = setInterval(count_up, 101000); /* 1 minutes */
}
setTimeout(function(){
auto_roll();
}, 15000);


    //Close Ads but not always
    setTimeout(function(){
        closeRandomPopupInterval($('div.close_daily_jackpot_main_container_div .fa-times-circle'),90);
        closeRandomPopupInterval($('i.fa.fa-times-circle.close_deposit_promo_message'),90);
        closeRandomPopupInterval($('div#lambo_contest_msg a.close'),10); //lambo contest
        closeRandomPopupInterval($('div#earn_btc_msg a.close'),20);
        closeRandomPopupInterval($('div#enable_2fa_msg_alert a.close'),30);
        closeRandomPopupInterval($("[id^='hide_rp_promo']"),50);
        closeRandomPopupInterval($("#fun_ref_contest_msg a.close"),90);
        closeRandomPopupInterval($("#premium_membership_msg a.close"),90);
    }, 15000);

    setInterval(function(){
        closePopupInterval($('#myModal22 .close-reveal-modal'));
        closePopupInterval($('.pushpad_deny_button'));
    }, 20000 );

    setInterval(function(){
        showStatus();
    }, 1800000);

    setInterval(function(){
        rewards(false);
    }, 300000);
                // close tedious popup now
                closePopupInterval($('.close-reveal-modal'));