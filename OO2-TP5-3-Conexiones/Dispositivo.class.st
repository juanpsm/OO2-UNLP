"
Transcript
		cr; show:'--- start ---'; 
		show: DateAndTime now ; cr; flush.
disp := Dispositivo new.
disp send: 'banana' .				
Transcript
		show:'---- end ----';
		show: DateAndTime now ; cr; flush.
"
Class {
	#name : #Dispositivo,
	#superclass : #Object,
	#instVars : [
		'connection',
		'ringer',
		'display',
		'crcCalculator'
	],
	#category : #'OO2-TP5-3-Conexiones-Model'
}

{ #category : #'as yet unclassified' }
Dispositivo >> conectarCon: unaConexion [
	"Pasa a utilizar unaConexion, muestra en display su simbolo y genera el sonido"
	Transcript 
		show: self printString;
		show: ' recibe mensaje conectarCon: ';
		show: unaConexion printString;
		show: '.';
		cr;
		flush.
	connection := unaConexion.
	display showBanner: (connection pict).
	ringer ring.
]

{ #category : #'as yet unclassified' }
Dispositivo >> configurarCRC: unCRCcalculator [
	"Configura el uso de unCRCcalculator para validad la integridad de los datos a enviar"

	Transcript
		show: self;
		show: ' recibe mensaje configurarCRC: ';
		show: unCRCcalculator printString;
		show: '.';
		cr;
		flush.
	crcCalculator := unCRCcalculator
]

{ #category : #accessing }
Dispositivo >> connection [
	^ connection 
]

{ #category : #accessing }
Dispositivo >> crcCalculator [
	^ crcCalculator
]

{ #category : #'as yet unclassified' }
Dispositivo >> initialize [
	ringer := Ringer new.
	display := MyDisplay new.
	self conectarCon: (WiFiConn new).
	self configurarCRC: (CRC16_Calculator new).
	Transcript
		show: self printString;
		show: ' se inicializa con: ';
		show: crcCalculator printString;
		show: ' y ';
		show: connection printString;
		show: '.';
		cr;
		flush
]

{ #category : #commands }
Dispositivo >> send: aString [
|crc|
	crc := crcCalculator crcFor: aString.
	connection sendData: aString Crc:  crc.
	Transcript 
		show: '-- send body --'; cr;
		show: self printString;
		show: ' recibe mensaje send: "';
		show: aString;
		show: '",';
		cr;
		show: 'envia a su ';
		show: crcCalculator printString;
		show: ' el mensaje crcFor: "';
		show: aString;
		show: '"';
		cr;
		show: 'y luego usando la conexion ';
		show: connection printString;
		show: ', ';
		cr;
		show: 'manda sendData: "';
		show: aString;
		show: '" Crc: "';
		show: crc;
		show: '".';
		cr;
		show: '-- send send --'; cr;
		flush 
]
