// Creamos la funcion de iniciar maps que sera llamda desde el scrip con la clave api de google
function iniciarMap(){
// Creamos una constante con las coordenadas de latitud y logintud por defecto
    var coord = {lat:-25.5986145 ,lng: -58.4431949};
    // Creamos una variable que contendra el mapa y lo mostramos en el div mapa que hemos creado en el html
    var map = new google.maps.Map(document.getElementById('map'),{
      // la api tiene sus propios atributos y 2 de ellos son zoom y center
      zoom: 10,
      center: coord
    });
    // marker es otra propiedad que es la aguja roja
    var marker = new google.maps.Marker({
      position: coord,
      map: map
    });
}