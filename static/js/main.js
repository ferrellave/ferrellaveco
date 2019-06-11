    banner()
function banner(){
    if(document.getElementById('banner-ul').className == 'banner-ul11')
    {document.getElementById('banner-ul').className = 'banner-ul1';}
    if(document.getElementById('banner-ul').className == 'banner-ul10')
    {document.getElementById('banner-ul').className = 'banner-ul11';}
    if(document.getElementById('banner-ul').className == 'banner-ul9')
    {document.getElementById('banner-ul').className = 'banner-ul10';}
    if(document.getElementById('banner-ul').className == 'banner-ul8')
    {document.getElementById('banner-ul').className = 'banner-ul9';}
    if(document.getElementById('banner-ul').className == 'banner-ul7')
    {document.getElementById('banner-ul').className = 'banner-ul8';}
    if(document.getElementById('banner-ul').className == 'banner-ul6')
    {document.getElementById('banner-ul').className = 'banner-ul7';}
    if(document.getElementById('banner-ul').className == 'banner-ul5')
    {document.getElementById('banner-ul').className = 'banner-ul6';}
    if(document.getElementById('banner-ul').className == 'banner-ul4')
    {document.getElementById('banner-ul').className = 'banner-ul5';}
    if(document.getElementById('banner-ul').className == 'banner-ul3')
    {document.getElementById('banner-ul').className = 'banner-ul4';}
    if(document.getElementById('banner-ul').className == 'banner-ul2')
    {document.getElementById('banner-ul').className = 'banner-ul3';}
    if(document.getElementById('banner-ul').className == 'banner-ul1')
    {document.getElementById('banner-ul').className = 'banner-ul2';}
setTimeout(timer, 3500);
}
function timer(){
banner();
}

function banner1(){
    document.getElementById('banner-ul').className = 'banner-ul1';
}
function banner2(){
    document.getElementById('banner-ul').className = 'banner-ul3';
}
function banner3(){
    document.getElementById('banner-ul').className = 'banner-ul4';
}
function banner4(){
    document.getElementById('banner-ul').className = 'banner-ul5';
}
function banner5(){
    document.getElementById('banner-ul').className = 'banner-ul6';
}
function banner6(){
    document.getElementById('banner-ul').className = 'banner-ul7';
}
function banner7(){
    document.getElementById('banner-ul').className = 'banner-ul8';
}
function banner8(){
    document.getElementById('banner-ul').className = 'banner-ul9';
}
function banner9(){
    document.getElementById('banner-ul').className = 'banner-ul10';
}
function banner10(){
    document.getElementById('banner-ul').className = 'banner-ul11';
}

    function menu()
    {       
        if(document.getElementById('menu').className == 'menu'){
            document.getElementById('menu').className = 'menu1';
            document.getElementById('inicio').className = 'top1'; 
            document.getElementById('menu-button').className = 'menu-button1'; 
        }else{
            document.getElementById('menu').className = 'menu';
            document.getElementById('inicio').className = 'top'; 
            document.getElementById('menu-button').className = 'menu-button';
        }            
    }
