$(document).ready(function() {
    //Carga estática para inicializar y evitar delay
    var hours = new Date().getHours()-5;
    $(".hours").html( hours < 0 ? hours += 24 : "" );   
    $(".hours").html(( hours < 10 ? "0" : "" ) + hours);
    var minutes = new Date().getMinutes();
    $(".min").html(( minutes < 10 ? "0" : "" ) + minutes);    
    var seconds = new Date().getSeconds();
    $(".sec").html(( seconds < 10 ? "0" : "" ) + seconds);

    //Se actualiza cada segundo
    setInterval( function() {
    var hours = new Date().getHours()-5;
    $(".hours").html( hours < 0 ? hours += 24 : "" ); 
    $(".hours").html(( hours < 10 ? "0" : "" ) + hours);
    }, 1000);
    setInterval( function() {
    var minutes = new Date().getMinutes();
    $(".min").html(( minutes < 10 ? "0" : "" ) + minutes);
    },1000);
    setInterval( function() {
    var seconds = new Date().getSeconds();
    $(".sec").html(( seconds < 10 ? "0" : "" ) + seconds);
    },1000);
    });