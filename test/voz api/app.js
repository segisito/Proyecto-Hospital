// Creamos una variable  que contrentra 2 valores de api segun el navegador donde se ejecuta , ya sea por chrome o firefox (yo uso chrome)
var _$_9634=["\x73\x70\x65\x65\x63\x68\x52\x65\x63\x6F\x67\x6E\x69\x74\x69\x6F\x6E","\x77\x65\x62\x6B\x69\x74\x53\x70\x65\x65\x63\x68\x52\x65\x63\x6F\x67\x6E\x69\x74\x69\x6F\x6E","\x73\x70\x65\x65\x63\x68\x41\x70\x69","\x6F\x75\x74\x70\x75\x74","\x64\x69\x76","\x63\x72\x65\x61\x74\x65\x45\x6C\x65\x6D\x65\x6E\x74","\x63\x6F\x6E\x74\x69\x6E\x75\x6F\x75\x73","\x69\x6E\x74\x65\x72\x69\x6D\x52\x65\x73\x75\x6C\x74","\x6F\x6E\x72\x65\x73\x75\x6C\x74","\x72\x65\x73\x75\x6C\x74\x49\x6E\x64\x65\x78","\x74\x72\x61\x6E\x73\x63\x72\x69\x70\x74","\x72\x65\x73\x75\x6C\x74\x73","\x74\x65\x78\x74\x43\x6F\x6E\x74\x65\x6E\x74","\x73\x74\x61\x72\x74","\x73\x74\x6F\x70","\x6F\x6E\x6C\x6F\x61\x64","\x2E\x6F\x75\x74\x70\x75\x74","\x71\x75\x65\x72\x79\x53\x65\x6C\x65\x63\x74\x6F\x72","\x63\x6C\x69\x63\x6B","\x69\x6E\x69\x74","\x61\x64\x64\x45\x76\x65\x6E\x74\x4C\x69\x73\x74\x65\x6E\x65\x72","\x2E\x62\x74\x6E\x2D\x73\x74\x61\x72\x74","\x2E\x62\x74\x6E\x2D\x65\x6E\x64"];
// Creamos la clase de reconocimiento de voz
class SpeechRecognitionApi{
	// Creamos un contructor y le pasamos un parametro
	constructor(_0x6ECD){	
		// Creamos una constante que obtendra el valor de la api segun el navegador que useamos
		const _0x6F02=window[_$_9634[0]]|| window[_$_9634[1]];//2
		// comprobamos con un if en linea , que si el se activa la api crea un div y si no no
		this[_$_9634[2]]=  new _0x6F02();this[_$_9634[3]]= _0x6ECD[_$_9634[3]]?_0x6ECD[_$_9634[3]]:document[_$_9634[5]](_$_9634[4]);this[_$_9634[2]][_$_9634[6]]= true;this[_$_9634[2]][_$_9634[7]]= false;this[_$_9634[2]][_$_9634[8]]= (_0x6F37)=>{
			// Mientras estemos grabando y la grabacion contnue la ponemos en true
			var _0x6F6C=_0x6F37[_$_9634[9]];//8
			// En caso de que finalize porque hayamos parado de grabar la ponemos en false
			var _0x6FA1=_0x6F37[_$_9634[11]][_0x6F6C][0][_$_9634[10]];//9
			// Ahora mientras que estemos grabando iremos añadiendo la ultima palabra detectada a las palabras ya existentes en la cadena
			this[_$_9634[3]][_$_9634[12]]+= _0x6FA1
		}
		
	}
	// creamos 2 funciones para los 2 botones que tenemos , el de empezar a grabar y el de finalizad la grabacion
	init(){
		this[_$_9634[2]][_$_9634[13]]()
	}
	stop(){
		this[_$_9634[2]][_$_9634[14]]()
	}	
}
//Al cargar la ventana lanzara una funcion anonima que contendra una variable que lanzara la api 
window[_$_9634[15]]= function(){
	var _0x6E98= new SpeechRecognitionApi({output:document[_$_9634[17]](_$_9634[16])});//21

	// Cuando le demos en iniciar a grabar , lanzara la funcion de grabar
	document[_$_9634[17]](_$_9634[21])[_$_9634[20]](_$_9634[18],()=>{
		_0x6E98[_$_9634[19]]()
	})
	// Cuando le demos en iniciar a grabar , parara la funcion de grabar
	document[_$_9634[17]](_$_9634[22])[_$_9634[20]](_$_9634[18],()=>{
		_0x6E98[_$_9634[14]]()
	})
}
