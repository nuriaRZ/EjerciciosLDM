

var game = (function () {
    class Personaje {
        constructor(){
            this.x = (cWidth/100)*10;
            this.y = (cHeight/2)-10;
            this.width = 20;
            this.height = 20;
            
    
        }
    }
    //variables globales relacionadas con los elementos html y carga de imagenes
    var canvas,
    personaje,
    jumping,
    startJump,
    posicionActual,
    velocidad,
    tubos = new Array(6),
    ctx, //brocha
    imgFondo,
    imgBird, //Referencia a imagen de pajaro que ira moviendose
    imgCargadas = 0; //Control de imagenes cargadas
    
    //variables relacionadas con la lógica deñ juego
    var puntos,
    haChocado = false,
    finJuego = false;
    var cWidth = 899;
    var cHeight = 489;
    var gameLoop;
    var timer; 
    var tuboAPintar;
    
    imgFondo = new Image();
    imgFondo.src = 'images/otroFondo.png';
    function init(){
        puntos = 0;      
        timer =  80;
        tuboAPintar = 0;
        
        if (typeof gameLoop != "undefined"){
            clearInterval(gameLoop);
        }
        gameLoop = setInterval(main, 30);
        
       for(var i = 0; i < tubos.length; i++ ){
            tubos[i] = {draw: false, onScreen: false, count: false, x: cWidth, y: 0, width:40, height: 0};
       } 
        

        personaje = new Personaje();
        
        jumping = false;
        startJump = false;

        canvas = document.getElementById('canvas');
        ctx = canvas.getContext("2d");

        document.addEventListener("keydown", function(e){
            if(e.keyCode == 32){
                jumping = true;
                startJump = true;
            }
        });


        
       

    }

 

    function main(){
        borderCollision();        
        paintFondo();
        
        
        
        paintTubos();        
        
        paintPersonaje();         
        if (jumping == true){
            jump();
        } else{
            actuaPersonaje();
        }
        moverTubos();
        colisionConTubos();
        paintScore();
        contarPuntos();

        
       
    }



    function paintFondo() {
        //Pinto fondo de la escena
        ctx.drawImage(imgFondo, 0, 0);
    }

    function paintPersonaje() {
        ctx.fillStyle = 'blue';
        ctx.fillRect(personaje.x, personaje.y, personaje.width, personaje.height);
    }

    
    function actuaPersonaje(){
        personaje.y += 5;
    }

    function jump(){
        if(startJump == true){
            posicionActual = personaje.y;
            velocidad = 10;
            startJump = false;
        }

        if (personaje.y > (posicionActual - 30)){
            personaje.y -= velocidad;
            if (velocidad > 1){
                velocidad --;
            }
        }else {
            jumping = false;
        }
    }

    function borderCollision(){
        if (personaje.y < ((cHeight/100)*5 )){
            alert('Game over!')
            init();
        }

        if ( personaje.y + personaje.height > ((cHeight/100)*95)){
            alert('Game over!')
            init();
        }

        
    }
    
    function paintTubos(){
        timer++;
        if (timer > 100){
            tubos[tuboAPintar].x = cWidth + 30; 
            tubos[tuboAPintar].y = 0; 
            tubos[tuboAPintar].height = getNumeroAleatorio(300); 
            tubos[tuboAPintar].draw = true;
            tubos[tuboAPintar].count = true;
   
            tubos[tuboAPintar + 1].x = cWidth + 30; 
            tubos[tuboAPintar + 1].y = tubos[tuboAPintar].y + tubos[tuboAPintar].height + 150; 
            tubos[tuboAPintar + 1].height = cHeight; 
            tubos[tuboAPintar + 1].draw = true;
            

            switch(tuboAPintar){
                case 0:
                    tuboAPintar = 2;
                    break;
                case 2:
                    tuboAPintar = 4;
                    break;
                case 4:
                    tuboAPintar = 0;
                    break;
                  
            }

            timer = 0;
        }
        for(var i = 0; i < tubos.length; i++){
            if (tubos[i].draw){            
            ctx.fillStyle = "#2b8f45";
            ctx.fillRect(tubos[i].x, tubos[i].y, tubos[i].width, tubos[i].height);
            
            }
        }
    }


    function colisionConTubos(){
        for(var i = 0; tubos.length; i++){
            if( personaje.x + personaje.width > tubos[i].x &&
                personaje.x < tubos[i].x + tubos[i].width && 
                personaje.y < tubos[i].y + tubos[i].height &&
                personaje.y + personaje.height > tubos[i].y){
                    alert('Game over!');
                   init();

                }
        }
    }

    function moverTubos(){
        for(var i = 0; i < tubos.length; i++){
            if (tubos[i].draw){
                tubos[i].x -= 3;
            }
        }    
    }

    function paintScore() {
        var txtPuntos = "Score: " + puntos;
        ctx.font="30px Verdana";
        ctx.fillStyle = "#ffffff";       
        ctx.fillText(txtPuntos, cWidth-300, 50);
    }
    
    function contarPuntos(){
        for(var i = 0; i < tubos.length; i++){
            if (tubos[i].x + tubos[i].width < personaje.x &&
                tubos[i].count){
                    puntos++;
                    tubos[i].count = false;

            }
        }
    }


    function getNumeroAleatorio(max){
        return Math.floor(Math.random() * max);
    } 

    /*
      Método devuelto por el objeto
     */
    return {
        init: init
    }

      


})();