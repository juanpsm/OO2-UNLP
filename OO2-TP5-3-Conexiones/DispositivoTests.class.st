Class {
	#name : #DispositivoTests,
	#superclass : #TestCaseLogTranscript,
	#instVars : [
		'disp',
		'crc16',
		'crc32',
		'conexWiFi',
		'conex4G',
		'msg'
	],
	#category : #'OO2-TP5-3-Conexiones-Tests'
}

{ #category : #running }
DispositivoTests >> setUp [
	super setUp.
	msg:= 'banana'.
	disp:= Dispositivo new.
	
	crc16 := CRC16_Calculator new.
	crc32 := CRC32_Calculator new.
	
	conexWiFi:= WiFiConn new.
	conex4G:= FourGConnection new.
]

{ #category : #tests }
DispositivoTests >> testConectarCon [
	disp conectarCon: conexWiFi .
	self assert:[ disp connection == conexWiFi ].
	disp conectarCon: conex4G .
	self assert:[ disp connection == conex4G ].
]

{ #category : #tests }
DispositivoTests >> testConfigurarCRC [

	disp configurarCRC: crc16.
	self assert: [ disp crcCalculator == crc16].
	disp configurarCRC: crc32.
	self assert: [ disp crcCalculator == crc32]
]

{ #category : #tests }
DispositivoTests >> testSend [
	disp configurarCRC: crc16.
	disp send: msg.
	self assert: [ (disp crcCalculator crcFor: msg) = 13333 ].
	disp configurarCRC: crc32.
	disp send: msg.
	self assert: [ (disp crcCalculator crcFor: msg) = 59467727 ]
]
