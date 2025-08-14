<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" encoding="utf-8" indent="yes" doctype-public="-//W3C//DTD HTML 4.0//EN" doctype-system="http://www.w3.org/TR/REC-html40/strict.dtd"/>


<xsl:template name="getSname">
	<xsl:param name="sct"/>
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:choose>
				<xsl:when test="$sct='aa'">VOORWOORD</xsl:when>
				<xsl:when test="$sct='z'">00 &#8211; Voorzorgsmaatregelen</xsl:when>
				<xsl:when test="$sct='0'">0 &#8211; Algemene informatie</xsl:when>
				<xsl:when test="$sct='1'">1 &#8211; Motor</xsl:when>
				<xsl:when test="$sct='2'">2 &#8211; Ophanging</xsl:when>
				<xsl:when test="$sct='3'">3 &#8211; Aandrijflijn / As</xsl:when>
				<xsl:when test="$sct='4'">4 &#8211; Remmen</xsl:when>
				<xsl:when test="$sct='5'">5 &#8211; Versnellingsbak / Transaxle</xsl:when>
				<xsl:when test="$sct='6'">6 &#8211; Stuurinrichting</xsl:when>
				<xsl:when test="$sct='7'">7 &#8211; HVAC</xsl:when>
				<xsl:when test="$sct='8'">8 &#8211; Inzittendenbeveiliging</xsl:when>
				<xsl:when test="$sct='9'">9 &#8211; Carrosserie, Cabine en Toebehoren</xsl:when>
				<xsl:when test="$sct='A'">10 &#8211; Regelsystemen</xsl:when>
				<xsl:when test="$sct='B'">11 &#8211; Frame en Frametoebehoren</xsl:when>
				<xsl:when test="$sct='y'">99 &#8211; Voorzorgsmaatregelen</xsl:when>
				<xsl:otherwise>FOUT! Onbekende SCT</xsl:otherwise>
			</xsl:choose>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:choose>
				<xsl:when test="$sct='aa'">AVANT-PROPOS</xsl:when>
				<xsl:when test="$sct='z'">00 &#8211; Précautions</xsl:when>
				<xsl:when test="$sct='0'">0 &#8211; Informations générales</xsl:when>
				<xsl:when test="$sct='1'">1 &#8211; Moteur</xsl:when>
				<xsl:when test="$sct='2'">2 &#8211; Suspension</xsl:when>
				<xsl:when test="$sct='3'">3 &#8211; Transmission / Essieu</xsl:when>
				<xsl:when test="$sct='4'">4 &#8211; Freins</xsl:when>
				<xsl:when test="$sct='5'">5 &#8211; Boîte de vitesses / Boîte-pont</xsl:when>
				<xsl:when test="$sct='6'">6 &#8211; Direction</xsl:when>
				<xsl:when test="$sct='7'">7 &#8211; HVAC</xsl:when>
				<xsl:when test="$sct='8'">8 &#8211; Système de retenue</xsl:when>
				<xsl:when test="$sct='9'">9 &#8211; Carrosserie, Cabine et Accessoires</xsl:when>
				<xsl:when test="$sct='A'">10 &#8211; Systèmes de commande</xsl:when>
				<xsl:when test="$sct='B'">11 &#8211; Châssis et Accessoires</xsl:when>
				<xsl:when test="$sct='y'">99 &#8211; Précautions</xsl:when>
				<xsl:otherwise>ERREUR! SCT inconnu</xsl:otherwise>
			</xsl:choose>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:choose>
				<xsl:when test="$sct='aa'">VORWORT</xsl:when>
				<xsl:when test="$sct='z'">00 &#8211; Vorsichtsmaßnahmen</xsl:when>
				<xsl:when test="$sct='0'">0 &#8211; Allgemeines</xsl:when>
				<xsl:when test="$sct='1'">1 &#8211; Motor</xsl:when>
				<xsl:when test="$sct='2'">2 &#8211; Radaufhängung</xsl:when>
				<xsl:when test="$sct='3'">3 &#8211; Kraftübertragung / Achse</xsl:when>
				<xsl:when test="$sct='4'">4 &#8211; Bremsen</xsl:when>
				<xsl:when test="$sct='5'">5 &#8211; Getriebe / Schaltgetriebe</xsl:when>
				<xsl:when test="$sct='6'">6 &#8211; Lenkung</xsl:when>
				<xsl:when test="$sct='7'">7 &#8211; HVAC</xsl:when>
				<xsl:when test="$sct='8'">8 &#8211; Rückhaltesystem</xsl:when>
				<xsl:when test="$sct='9'">9 &#8211; Karosserie, Innenraumelektrik und Zubehör</xsl:when>
				<xsl:when test="$sct='A'">10 &#8211; Steuersysteme</xsl:when>
				<xsl:when test="$sct='B'">11 &#8211; Rahmen und Rahmenzubehör</xsl:when>
				<xsl:when test="$sct='y'">99 &#8211; Vorsichtsmaßnahmen</xsl:when>
				<xsl:otherwise>FEHLER! Unbekannter SCT</xsl:otherwise>
			</xsl:choose>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:choose>
				<xsl:when test="$sct='aa'">ΠΡΟΛΟΓΟΣ</xsl:when>
				<xsl:when test="$sct='z'">00 &#8211; ΠΡΟΦΥΛΑΞΕΙΣ</xsl:when>
				<xsl:when test="$sct='0'">0 &#8211; ΓΕΝΙΚΕΣ ΠΛΗΡΟΦΟΡΙΕΣ</xsl:when>
				<xsl:when test="$sct='1'">1 &#8211; ΚΙΝΗΤΗΡΑΣ</xsl:when>
				<xsl:when test="$sct='2'">2 &#8211; ΣΥΣΤΗΜΑ ΑΝΑΡΤΗΣΗΣ</xsl:when>
				<xsl:when test="$sct='3'">3 &#8211; ΜΕΤΑΔΟΣΗ ΚΙΝΗΣΗΣ / ΑΞΟΝΑΣ</xsl:when>
				<xsl:when test="$sct='4'">4 &#8211; ΣΥΣΤΗΜΑ ΠΕΔΗΣΗΣ</xsl:when>
				<xsl:when test="$sct='5'">5 &#8211; ΚΙΒΩΤΙΟ ΤΑΧΥΤΗΤΩΝ / ΜΕΤΑΔΟΣΗ ΚΙΝΗΣΗΣ</xsl:when>
				<xsl:when test="$sct='6'">6 &#8211; ΣΥΣΤΗΜΑ ΔΙΕΥΘΥΝΣΗΣ</xsl:when>
				<xsl:when test="$sct='7'">7 &#8211; HVAC</xsl:when>
				<xsl:when test="$sct='8'">8 &#8211; ΣΥΣΤΗΜΑ ΣΥΓΚΡΑΤΗΣΗΣ</xsl:when>
				<xsl:when test="$sct='9'">9 &#8211; ΑΜΑΞΩΜΑ, ΚΑΜΠΙΝΑ ΚΑΙ ΑΞΕΣΟΥΑΡ</xsl:when>
				<xsl:when test="$sct='A'">10 &#8211; ΣΥΣΤΗΜΑΤΑ ΕΛΕΓΧΟΥ</xsl:when>
				<xsl:when test="$sct='B'">11 &#8211; ΠΛΑΙΣΙΟ ΚΑΙ ΑΞΕΣΟΥΑΡ ΠΛΑΙΣΙΟΥ</xsl:when>
				<xsl:when test="$sct='y'">99 &#8211; ΠΡΟΦΥΛΑΞΕΙΣ</xsl:when>
				<xsl:otherwise>ΣΦΑΛΜΑ! ΑΓΝΩΣΤΟ SCT</xsl:otherwise>
			</xsl:choose>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:choose>
				<xsl:when test="$sct='aa'">PREDGOVOR</xsl:when>
				<xsl:when test="$sct='z'">00 &#8211; MJERE OPREZA</xsl:when>
				<xsl:when test="$sct='0'">0 &#8211; OPĆE INFORMACIJE</xsl:when>
				<xsl:when test="$sct='1'">1 &#8211; MOTOR</xsl:when>
				<xsl:when test="$sct='2'">2 &#8211; OVJES</xsl:when>
				<xsl:when test="$sct='3'">3 &#8211; POGONSKA LINIJA / OSOVINA</xsl:when>
				<xsl:when test="$sct='4'">4 &#8211; KOČNICE</xsl:when>
				<xsl:when test="$sct='5'">5 &#8211; MJENJAČ</xsl:when>
				<xsl:when test="$sct='6'">6 &#8211; UPRAVLJANJE</xsl:when>
				<xsl:when test="$sct='7'">7 &#8211; GRIJANJE, PROVJETRAVANJE I KLIMA UREĐAJ</xsl:when>
				<xsl:when test="$sct='8'">8 &#8211; SUSTAVI ZAŠTITE</xsl:when>
				<xsl:when test="$sct='9'">9 &#8211; KAROSERIJA, KABINA I DODATNA OPREMA</xsl:when>
				<xsl:when test="$sct='A'">10 &#8211; UPRAVLJAČKI SUSTAVI</xsl:when>
				<xsl:when test="$sct='B'">11 &#8211; OKVIR I DODATNA OPREMA OKVIRA</xsl:when>
				<xsl:when test="$sct='y'">99 &#8211; MJERE OPREZA</xsl:when>
				<xsl:otherwise>GREŠKA! Nepoznat SCT</xsl:otherwise>
			</xsl:choose>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:choose>
				<xsl:when test="$sct='aa'">ELŐSZÓ</xsl:when>
				<xsl:when test="$sct='z'">00 &#8211; Óvintézkedések</xsl:when>
				<xsl:when test="$sct='0'">0 &#8211; Általános információk</xsl:when>
				<xsl:when test="$sct='1'">1 &#8211; Motor</xsl:when>
				<xsl:when test="$sct='2'">2 &#8211; Felfüggesztés</xsl:when>
				<xsl:when test="$sct='3'">3 &#8211; Hajtáslánc / Tengely</xsl:when>
				<xsl:when test="$sct='4'">4 &#8211; Fékek</xsl:when>
				<xsl:when test="$sct='5'">5 &#8211; Sebességváltó / Sebességváltó differenciálművel</xsl:when>
				<xsl:when test="$sct='6'">6 &#8211; Kormányzás</xsl:when>
				<xsl:when test="$sct='7'">7 &#8211; HVAC</xsl:when>
				<xsl:when test="$sct='8'">8 &#8211; Biztonsági visszatartó rendszer</xsl:when>
				<xsl:when test="$sct='9'">9 &#8211; Karosszéria, Utastér és Kiegészítők</xsl:when>
				<xsl:when test="$sct='A'">10 &#8211; Vezérlőrendszerek</xsl:when>
				<xsl:when test="$sct='B'">11 &#8211; Vázszerkezet és Vázszerkezet-kiegészítők</xsl:when>
				<xsl:when test="$sct='y'">99 &#8211; Óvintézkedések</xsl:when>
				<xsl:otherwise>HIBA! Ismeretlen SCT</xsl:otherwise>
			</xsl:choose>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:choose>
				<xsl:when test="$sct='aa'">PREMESSA</xsl:when>
				<xsl:when test="$sct='z'">00 &#8211; Precauzioni</xsl:when>
				<xsl:when test="$sct='0'">0 &#8211; Informazioni generali</xsl:when>
				<xsl:when test="$sct='1'">1 &#8211; Motore</xsl:when>
				<xsl:when test="$sct='2'">2 &#8211; Sospensione</xsl:when>
				<xsl:when test="$sct='3'">3 &#8211; Trasmissione / Assale</xsl:when>
				<xsl:when test="$sct='4'">4 &#8211; Freni</xsl:when>
				<xsl:when test="$sct='5'">5 &#8211; Cambio / Gruppo cambio / Differenziale</xsl:when>
				<xsl:when test="$sct='6'">6 &#8211; Sterzo</xsl:when>
				<xsl:when test="$sct='7'">7 &#8211; Gruppo HVAC</xsl:when>
				<xsl:when test="$sct='8'">8 &#8211; Sistemi di sicurezza</xsl:when>
				<xsl:when test="$sct='9'">9 &#8211; Carrozzeria, Cabina ed Accessori</xsl:when>
				<xsl:when test="$sct='A'">10 &#8211; Sistemi di comando</xsl:when>
				<xsl:when test="$sct='B'">11 &#8211; Telaio e Accessori telaio</xsl:when>
				<xsl:when test="$sct='y'">99 &#8211; Precauzioni</xsl:when>
				<xsl:otherwise>ERRORE! SCT sconosciuto</xsl:otherwise>
			</xsl:choose>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:choose>
				<xsl:when test="$sct='aa'">はじめに</xsl:when>
				<xsl:when test="$sct='z'">00 &#8211; 作業上の注意</xsl:when>
				<xsl:when test="$sct='0'">0 &#8211; 概要</xsl:when>
				<xsl:when test="$sct='1'">1 &#8211; エンジン</xsl:when>
				<xsl:when test="$sct='2'">2 &#8211; サスペンション</xsl:when>
				<xsl:when test="$sct='3'">3 &#8211; ドライブライン／アクスル</xsl:when>
				<xsl:when test="$sct='4'">4 &#8211; ブレーキ</xsl:when>
				<xsl:when test="$sct='5'">5 &#8211; トランスミッション／トランスアクスル</xsl:when>
				<xsl:when test="$sct='6'">6 &#8211; ステアリング</xsl:when>
				<xsl:when test="$sct='7'">7 &#8211; ヒータ＆エアコン／ベンチレーション</xsl:when>
				<xsl:when test="$sct='8'">8 &#8211; SRSエアバッグ＆シートベルト</xsl:when>
				<xsl:when test="$sct='9'">9 &#8211; ボデー＆エレクトリカル</xsl:when>
				<xsl:when test="$sct='A'">10 &#8211; コントロールシステム</xsl:when>
				<xsl:when test="$sct='B'">11 &#8211; フレーム</xsl:when>
				<xsl:when test="$sct='y'">99 &#8211; 注意</xsl:when>
				<xsl:otherwise>ERROR! Unknown SCT</xsl:otherwise>
			</xsl:choose>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:choose>
				<xsl:when test="$sct='aa'">PREDHOVOR</xsl:when>
				<xsl:when test="$sct='z'">00 &#8211; Upozornenia</xsl:when>
				<xsl:when test="$sct='0'">0 &#8211; Všeobecné informácie</xsl:when>
				<xsl:when test="$sct='1'">1 &#8211; Motor</xsl:when>
				<xsl:when test="$sct='2'">2 &#8211; Zavesenie</xsl:when>
				<xsl:when test="$sct='3'">3 &#8211; Hnacia sústava / Náprava</xsl:when>
				<xsl:when test="$sct='4'">4 &#8211; Brzdy</xsl:when>
				<xsl:when test="$sct='5'">5 &#8211; Prevodovka / Prevodovka s rozvodovkou</xsl:when>
				<xsl:when test="$sct='6'">6 &#8211; Riadenie</xsl:when>
				<xsl:when test="$sct='7'">7 &#8211; Kúrenie, Ventilácia, Klimatizácia</xsl:when>
				<xsl:when test="$sct='8'">8 &#8211; Zábrana</xsl:when>
				<xsl:when test="$sct='9'">9 &#8211; Karoséria, Kabína a Príslušenstvo</xsl:when>
				<xsl:when test="$sct='A'">10 &#8211; Riadiace systémy</xsl:when>
				<xsl:when test="$sct='B'">11 &#8211; Rám a Príslušenstvo</xsl:when>
				<xsl:when test="$sct='y'">99 &#8211; Upozornenia</xsl:when>
				<xsl:otherwise>CHYBA! Neznáme SCT</xsl:otherwise>
			</xsl:choose>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:choose>
				<xsl:when test="$sct='aa'">PREFACIO</xsl:when>
				<xsl:when test="$sct='z'">00 &#8211; Medidas de precaución</xsl:when>
				<xsl:when test="$sct='0'">0 &#8211; Información general</xsl:when>
				<xsl:when test="$sct='1'">1 &#8211; Motor</xsl:when>
				<xsl:when test="$sct='2'">2 &#8211; Suspensión</xsl:when>
				<xsl:when test="$sct='3'">3 &#8211; Línea de conducción / Eje</xsl:when>
				<xsl:when test="$sct='4'">4 &#8211; Frenos</xsl:when>
				<xsl:when test="$sct='5'">5 &#8211; Transmisión / Transeje</xsl:when>
				<xsl:when test="$sct='6'">6 &#8211; Dirección</xsl:when>
				<xsl:when test="$sct='7'">7 &#8211; HVAC</xsl:when>
				<xsl:when test="$sct='8'">8 &#8211; Sujeción</xsl:when>
				<xsl:when test="$sct='9'">9 &#8211; Carrocería, Cabina y Accesorios</xsl:when>
				<xsl:when test="$sct='A'">10 &#8211; Sistemas de control</xsl:when>
				<xsl:when test="$sct='B'">11 &#8211; Bastidor y Accesorios del bastidor</xsl:when>
				<xsl:when test="$sct='y'">99 &#8211; Medidas de precaución</xsl:when>
				<xsl:otherwise>ERROR! SCT desconocido</xsl:otherwise>
			</xsl:choose>
		</xsl:when>
		<xsl:otherwise>
			<xsl:choose>
				<xsl:when test="$sct='aa'">FOREWORD</xsl:when>
				<xsl:when test="$sct='z'">00 &#8211; PRECAUTIONS</xsl:when>
				<xsl:when test="$sct='0'">0 &#8211; GENERAL INFORMATION</xsl:when>
				<xsl:when test="$sct='1'">1 &#8211; ENGINE</xsl:when>
				<xsl:when test="$sct='2'">2 &#8211; SUSPENSION</xsl:when>
				<xsl:when test="$sct='3'">3 &#8211; DRIVELINE / AXLE</xsl:when>
				<xsl:when test="$sct='4'">4 &#8211; BRAKES</xsl:when>
				<xsl:when test="$sct='5'">5 &#8211; TRANSMISSION / TRANSAXLE</xsl:when>
				<xsl:when test="$sct='6'">6 &#8211; STEERING</xsl:when>
				<xsl:when test="$sct='7'">7 &#8211; HVAC</xsl:when>
				<xsl:when test="$sct='8'">8 &#8211; RESTRAINTS</xsl:when>
				<xsl:when test="$sct='9'">9 &#8211; BODY, CAB AND ACCESSORIES</xsl:when>
				<xsl:when test="$sct='A'">10 &#8211; CONTROL SYSTEMS</xsl:when>
				<xsl:when test="$sct='B'">11 &#8211; FRAME AND FRAME ACCESSORIES</xsl:when>
				<xsl:when test="$sct='y'">99 &#8211; PRECAUTIONS</xsl:when>
				<xsl:otherwise>ERROR! Unknown SCT</xsl:otherwise>
			</xsl:choose>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getSnameTooltip">
	<xsl:param name="sct"/>
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:choose>
				<xsl:when test="$sct='aa'">VOORWOORD</xsl:when>
				<xsl:when test="$sct='z'">00 &#8211; Voorzorgsmaatregelen</xsl:when>
				<xsl:when test="$sct='0'">0 &#8211; Algemene informatie</xsl:when>
				<xsl:when test="$sct='1'">1 &#8211; Motor</xsl:when>
				<xsl:when test="$sct='2'">2 &#8211; Ophanging</xsl:when>
				<xsl:when test="$sct='3'">3 &#8211; Aandrijflijn / As</xsl:when>
				<xsl:when test="$sct='4'">4 &#8211; Remmen</xsl:when>
				<xsl:when test="$sct='5'">5 &#8211; Versnellingsbak / Transaxle</xsl:when>
				<xsl:when test="$sct='6'">6 &#8211; Stuurinrichting</xsl:when>
				<xsl:when test="$sct='7'">7 &#8211; HVAC</xsl:when>
				<xsl:when test="$sct='8'">8 &#8211; Inzittendenbeveiliging</xsl:when>
				<xsl:when test="$sct='9'">9 &#8211; Carrosserie, Cabine en Toebehoren</xsl:when>
				<xsl:when test="$sct='A'">10 &#8211; Regelsystemen</xsl:when>
				<xsl:when test="$sct='B'">11 &#8211; Frame en Frametoebehoren</xsl:when>
				<xsl:when test="$sct='y'">99 &#8211; Voorzorgsmaatregelen</xsl:when>
				<xsl:otherwise>FOUT! Onbekende SCT</xsl:otherwise>
			</xsl:choose>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:choose>
				<xsl:when test="$sct='aa'">AVANT-PROPOS</xsl:when>
				<xsl:when test="$sct='z'">00 &#8211; Précautions</xsl:when>
				<xsl:when test="$sct='0'">0 &#8211; Informations générales</xsl:when>
				<xsl:when test="$sct='1'">1 &#8211; Moteur</xsl:when>
				<xsl:when test="$sct='2'">2 &#8211; Suspension</xsl:when>
				<xsl:when test="$sct='3'">3 &#8211; Transmission / Essieu</xsl:when>
				<xsl:when test="$sct='4'">4 &#8211; Freins</xsl:when>
				<xsl:when test="$sct='5'">5 &#8211; Boîte de vitesses / Boîte-pont</xsl:when>
				<xsl:when test="$sct='6'">6 &#8211; Direction</xsl:when>
				<xsl:when test="$sct='7'">7 &#8211; HVAC</xsl:when>
				<xsl:when test="$sct='8'">8 &#8211; Système de retenue</xsl:when>
				<xsl:when test="$sct='9'">9 &#8211; Carrosserie, Cabine et Accessoires</xsl:when>
				<xsl:when test="$sct='A'">10 &#8211; Systèmes de commande</xsl:when>
				<xsl:when test="$sct='B'">11 &#8211; Châssis et Accessoires</xsl:when>
				<xsl:when test="$sct='y'">99 &#8211; Précautions</xsl:when>
				<xsl:otherwise>ERREUR! SCT inconnu</xsl:otherwise>
			</xsl:choose>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:choose>
				<xsl:when test="$sct='aa'">VORWORT</xsl:when>
				<xsl:when test="$sct='z'">00 &#8211; Vorsichtsmaßnahmen</xsl:when>
				<xsl:when test="$sct='0'">0 &#8211; Allgemeines</xsl:when>
				<xsl:when test="$sct='1'">1 &#8211; Motor</xsl:when>
				<xsl:when test="$sct='2'">2 &#8211; Radaufhängung</xsl:when>
				<xsl:when test="$sct='3'">3 &#8211; Kraftübertragung / Achse</xsl:when>
				<xsl:when test="$sct='4'">4 &#8211; Bremsen</xsl:when>
				<xsl:when test="$sct='5'">5 &#8211; Getriebe / Schaltgetriebe</xsl:when>
				<xsl:when test="$sct='6'">6 &#8211; Lenkung</xsl:when>
				<xsl:when test="$sct='7'">7 &#8211; HVAC</xsl:when>
				<xsl:when test="$sct='8'">8 &#8211; Rückhaltesystem</xsl:when>
				<xsl:when test="$sct='9'">9 &#8211; Karosserie, Innenraumelektrik und Zubehör</xsl:when>
				<xsl:when test="$sct='A'">10 &#8211; Steuersysteme</xsl:when>
				<xsl:when test="$sct='B'">11 &#8211; Rahmen und Rahmenzubehör</xsl:when>
				<xsl:when test="$sct='y'">99 &#8211; Vorsichtsmaßnahmen</xsl:when>
				<xsl:otherwise>FEHLER! Unbekannter SCT</xsl:otherwise>
			</xsl:choose>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:choose>
				<xsl:when test="$sct='aa'">ΠΡΟΛΟΓΟΣ</xsl:when>
				<xsl:when test="$sct='z'">00 &#8211; ΠΡΟΦΥΛΑΞΕΙΣ</xsl:when>
				<xsl:when test="$sct='0'">0 &#8211; ΓΕΝΙΚΕΣ ΠΛΗΡΟΦΟΡΙΕΣ</xsl:when>
				<xsl:when test="$sct='1'">1 &#8211; ΚΙΝΗΤΗΡΑΣ</xsl:when>
				<xsl:when test="$sct='2'">2 &#8211; ΣΥΣΤΗΜΑ ΑΝΑΡΤΗΣΗΣ</xsl:when>
				<xsl:when test="$sct='3'">3 &#8211; ΜΕΤΑΔΟΣΗ ΚΙΝΗΣΗΣ / ΑΞΟΝΑΣ</xsl:when>
				<xsl:when test="$sct='4'">4 &#8211; ΣΥΣΤΗΜΑ ΠΕΔΗΣΗΣ</xsl:when>
				<xsl:when test="$sct='5'">5 &#8211; ΚΙΒΩΤΙΟ ΤΑΧΥΤΗΤΩΝ / ΜΕΤΑΔΟΣΗ ΚΙΝΗΣΗΣ</xsl:when>
				<xsl:when test="$sct='6'">6 &#8211; ΣΥΣΤΗΜΑ ΔΙΕΥΘΥΝΣΗΣ</xsl:when>
				<xsl:when test="$sct='7'">7 &#8211; HVAC</xsl:when>
				<xsl:when test="$sct='8'">8 &#8211; ΣΥΣΤΗΜΑ ΣΥΓΚΡΑΤΗΣΗΣ</xsl:when>
				<xsl:when test="$sct='9'">9 &#8211; ΑΜΑΞΩΜΑ, ΚΑΜΠΙΝΑ ΚΑΙ ΑΞΕΣΟΥΑΡ</xsl:when>
				<xsl:when test="$sct='A'">10 &#8211; ΣΥΣΤΗΜΑΤΑ ΕΛΕΓΧΟΥ</xsl:when>
				<xsl:when test="$sct='B'">11 &#8211; ΠΛΑΙΣΙΟ ΚΑΙ ΑΞΕΣΟΥΑΡ ΠΛΑΙΣΙΟΥ</xsl:when>
				<xsl:when test="$sct='y'">99 &#8211; ΠΡΟΦΥΛΑΞΕΙΣ</xsl:when>
				<xsl:otherwise>ΣΦΑΛΜΑ! ΑΓΝΩΣΤΟ SCT</xsl:otherwise>
			</xsl:choose>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:choose>
				<xsl:when test="$sct='aa'">PREDGOVOR</xsl:when>
				<xsl:when test="$sct='z'">00 &#8211; MJERE OPREZA</xsl:when>
				<xsl:when test="$sct='0'">0 &#8211; OPĆE INFORMACIJE</xsl:when>
				<xsl:when test="$sct='1'">1 &#8211; MOTOR</xsl:when>
				<xsl:when test="$sct='2'">2 &#8211; OVJES</xsl:when>
				<xsl:when test="$sct='3'">3 &#8211; POGONSKA LINIJA / OSOVINA</xsl:when>
				<xsl:when test="$sct='4'">4 &#8211; KOČNICE</xsl:when>
				<xsl:when test="$sct='5'">5 &#8211; MJENJAČ</xsl:when>
				<xsl:when test="$sct='6'">6 &#8211; UPRAVLJANJE</xsl:when>
				<xsl:when test="$sct='7'">7 &#8211; GRIJANJE, PROVJETRAVANJE I KLIMA UREĐAJ</xsl:when>
				<xsl:when test="$sct='8'">8 &#8211; SUSTAVI ZAŠTITE</xsl:when>
				<xsl:when test="$sct='9'">9 &#8211; KAROSERIJA, KABINA I DODATNA OPREMA</xsl:when>
				<xsl:when test="$sct='A'">10 &#8211; UPRAVLJAČKI SUSTAVI</xsl:when>
				<xsl:when test="$sct='B'">11 &#8211; OKVIR I DODATNA OPREMA OKVIRA</xsl:when>
				<xsl:when test="$sct='y'">99 &#8211; MJERE OPREZA</xsl:when>
				<xsl:otherwise>GREŠKA! Nepoznat SCT</xsl:otherwise>
			</xsl:choose>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:choose>
				<xsl:when test="$sct='aa'">ELŐSZÓ</xsl:when>
				<xsl:when test="$sct='z'">00 &#8211; Óvintézkedések</xsl:when>
				<xsl:when test="$sct='0'">0 &#8211; Általános információk</xsl:when>
				<xsl:when test="$sct='1'">1 &#8211; Motor</xsl:when>
				<xsl:when test="$sct='2'">2 &#8211; Felfüggesztés</xsl:when>
				<xsl:when test="$sct='3'">3 &#8211; Hajtáslánc / Tengely</xsl:when>
				<xsl:when test="$sct='4'">4 &#8211; Fékek</xsl:when>
				<xsl:when test="$sct='5'">5 &#8211; Sebességváltó / Sebességváltó differenciálművel</xsl:when>
				<xsl:when test="$sct='6'">6 &#8211; Kormányzás</xsl:when>
				<xsl:when test="$sct='7'">7 &#8211; HVAC</xsl:when>
				<xsl:when test="$sct='8'">8 &#8211; Biztonsági visszatartó rendszer</xsl:when>
				<xsl:when test="$sct='9'">9 &#8211; Karosszéria, Utastér és Kiegészítők</xsl:when>
				<xsl:when test="$sct='A'">10 &#8211; Vezérlőrendszerek</xsl:when>
				<xsl:when test="$sct='B'">11 &#8211; Vázszerkezet és Vázszerkezet-kiegészítők</xsl:when>
				<xsl:when test="$sct='y'">99 &#8211; Óvintézkedések</xsl:when>
				<xsl:otherwise>HIBA! Ismeretlen SCT</xsl:otherwise>
			</xsl:choose>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:choose>
				<xsl:when test="$sct='aa'">PREMESSA</xsl:when>
				<xsl:when test="$sct='z'">00 &#8211; Precauzioni</xsl:when>
				<xsl:when test="$sct='0'">0 &#8211; Informazioni generali</xsl:when>
				<xsl:when test="$sct='1'">1 &#8211; Motore</xsl:when>
				<xsl:when test="$sct='2'">2 &#8211; Sospensione</xsl:when>
				<xsl:when test="$sct='3'">3 &#8211; Trasmissione / Assale</xsl:when>
				<xsl:when test="$sct='4'">4 &#8211; Freni</xsl:when>
				<xsl:when test="$sct='5'">5 &#8211; Cambio / Gruppo cambio / Differenziale</xsl:when>
				<xsl:when test="$sct='6'">6 &#8211; Sterzo</xsl:when>
				<xsl:when test="$sct='7'">7 &#8211; Gruppo HVAC</xsl:when>
				<xsl:when test="$sct='8'">8 &#8211; Sistemi di sicurezza</xsl:when>
				<xsl:when test="$sct='9'">9 &#8211; Carrozzeria, Cabina ed Accessori</xsl:when>
				<xsl:when test="$sct='A'">10 &#8211; Sistemi di comando</xsl:when>
				<xsl:when test="$sct='B'">11 &#8211; Telaio e Accessori telaio</xsl:when>
				<xsl:when test="$sct='y'">99 &#8211; Precauzioni</xsl:when>
				<xsl:otherwise>ERRORE! SCT sconosciuto</xsl:otherwise>
			</xsl:choose>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:choose>
				<xsl:when test="$sct='aa'">はじめに</xsl:when>
				<xsl:when test="$sct='z'">00 &#8211; 作業上の注意</xsl:when>
				<xsl:when test="$sct='0'">0 &#8211; 概要</xsl:when>
				<xsl:when test="$sct='1'">1 &#8211; エンジン</xsl:when>
				<xsl:when test="$sct='2'">2 &#8211; サスペンション</xsl:when>
				<xsl:when test="$sct='3'">3 &#8211; ドライブライン／アクスル</xsl:when>
				<xsl:when test="$sct='4'">4 &#8211; ブレーキ</xsl:when>
				<xsl:when test="$sct='5'">5 &#8211; トランスミッション／トランスアクスル</xsl:when>
				<xsl:when test="$sct='6'">6 &#8211; ステアリング</xsl:when>
				<xsl:when test="$sct='7'">7 &#8211; ヒータ＆エアコン／ベンチレーション</xsl:when>
				<xsl:when test="$sct='8'">8 &#8211; SRSエアバッグ＆シートベルト</xsl:when>
				<xsl:when test="$sct='9'">9 &#8211; ボデー＆エレクトリカル</xsl:when>
				<xsl:when test="$sct='A'">10 &#8211; コントロールシステム</xsl:when>
				<xsl:when test="$sct='B'">11 &#8211; フレーム</xsl:when>
				<xsl:when test="$sct='y'">99 &#8211; 注意</xsl:when>
				<xsl:otherwise>ERROR! Unknown SCT</xsl:otherwise>
			</xsl:choose>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:choose>
				<xsl:when test="$sct='aa'">PREDHOVOR</xsl:when>
				<xsl:when test="$sct='z'">00 &#8211; Upozornenia</xsl:when>
				<xsl:when test="$sct='0'">0 &#8211; Všeobecné informácie</xsl:when>
				<xsl:when test="$sct='1'">1 &#8211; Motor</xsl:when>
				<xsl:when test="$sct='2'">2 &#8211; Zavesenie</xsl:when>
				<xsl:when test="$sct='3'">3 &#8211; Hnacia sústava / Náprava</xsl:when>
				<xsl:when test="$sct='4'">4 &#8211; Brzdy</xsl:when>
				<xsl:when test="$sct='5'">5 &#8211; Prevodovka / Prevodovka s rozvodovkou</xsl:when>
				<xsl:when test="$sct='6'">6 &#8211; Riadenie</xsl:when>
				<xsl:when test="$sct='7'">7 &#8211; Kúrenie, Ventilácia, Klimatizácia</xsl:when>
				<xsl:when test="$sct='8'">8 &#8211; Zábrana</xsl:when>
				<xsl:when test="$sct='9'">9 &#8211; Karoséria, Kabína a Príslušenstvo</xsl:when>
				<xsl:when test="$sct='A'">10 &#8211; Riadiace systémy</xsl:when>
				<xsl:when test="$sct='B'">11 &#8211; Rám a Príslušenstvo</xsl:when>
				<xsl:when test="$sct='y'">99 &#8211; Upozornenia</xsl:when>
				<xsl:otherwise>CHYBA! Neznáme SCT</xsl:otherwise>
			</xsl:choose>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:choose>
				<xsl:when test="$sct='aa'">PREFACIO</xsl:when>
				<xsl:when test="$sct='z'">00 &#8211; Medidas de precaución</xsl:when>
				<xsl:when test="$sct='0'">0 &#8211; Información general</xsl:when>
				<xsl:when test="$sct='1'">1 &#8211; Motor</xsl:when>
				<xsl:when test="$sct='2'">2 &#8211; Suspensión</xsl:when>
				<xsl:when test="$sct='3'">3 &#8211; Línea de conducción / Eje</xsl:when>
				<xsl:when test="$sct='4'">4 &#8211; Frenos</xsl:when>
				<xsl:when test="$sct='5'">5 &#8211; Transmisión / Transeje</xsl:when>
				<xsl:when test="$sct='6'">6 &#8211; Dirección</xsl:when>
				<xsl:when test="$sct='7'">7 &#8211; HVAC</xsl:when>
				<xsl:when test="$sct='8'">8 &#8211; Sujeción</xsl:when>
				<xsl:when test="$sct='9'">9 &#8211; Carrocería, Cabina y Accesorios</xsl:when>
				<xsl:when test="$sct='A'">10 &#8211; Sistemas de control</xsl:when>
				<xsl:when test="$sct='B'">11 &#8211; Bastidor y Accesorios del bastidor</xsl:when>
				<xsl:when test="$sct='y'">99 &#8211; Medidas de precaución</xsl:when>
				<xsl:otherwise>ERROR! SCT desconocido</xsl:otherwise>
			</xsl:choose>
		</xsl:when>
		<xsl:otherwise>
			<xsl:choose>
				<xsl:when test="$sct='aa'">FOREWORD</xsl:when>
				<xsl:when test="$sct='z'">00 &#8211; PRECAUTIONS</xsl:when>
				<xsl:when test="$sct='0'">0 &#8211; GENERAL INFORMATION</xsl:when>
				<xsl:when test="$sct='1'">1 &#8211; ENGINE</xsl:when>
				<xsl:when test="$sct='2'">2 &#8211; SUSPENSION</xsl:when>
				<xsl:when test="$sct='3'">3 &#8211; DRIVELINE / AXLE</xsl:when>
				<xsl:when test="$sct='4'">4 &#8211; BRAKES</xsl:when>
				<xsl:when test="$sct='5'">5 &#8211; TRANSMISSION / TRANSAXLE</xsl:when>
				<xsl:when test="$sct='6'">6 &#8211; STEERING</xsl:when>
				<xsl:when test="$sct='7'">7 &#8211; HVAC</xsl:when>
				<xsl:when test="$sct='8'">8 &#8211; RESTRAINTS</xsl:when>
				<xsl:when test="$sct='9'">9 &#8211; BODY, CAB AND ACCESSORIES</xsl:when>
				<xsl:when test="$sct='A'">10 &#8211; CONTROL SYSTEMS</xsl:when>
				<xsl:when test="$sct='B'">11 &#8211; FRAME AND FRAME ACCESSORIES</xsl:when>
				<xsl:when test="$sct='y'">99 &#8211; PRECAUTIONS</xsl:when>
				<xsl:otherwise>ERROR! Unknown SCT</xsl:otherwise>
			</xsl:choose>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getContentsIndexTitle">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>INHOUD</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>SOMMAIRE</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>INHALT</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>Σελιδοδείκτες</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:text>Bookmark</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>TARTALOM</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>INDICE</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:text>目次</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>OBSAH</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>CONTENIDO</xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>Bookmarks</xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getContentsSearchTitle">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>Zoeken in inhoud</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>Recherche de contenu</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>Inhaltssuche</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>Αναζήτηση Περιεχομένων</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:text>Pretraživanje sadržaja</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>Tartalom keresése</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>Ricerca dei contenuti</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:text>目次検索</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>Vyhľadať v obsahu</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>Búsqueda de contenidos</xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>Contents Search</xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getDtcIndexTitle">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>DTC-index</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>Index des DTC</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>DTC-Index</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>Ένδειξη DTC</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:text>Kazalo DTC-a</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>DTC-lista</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>Indice DTC</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:text>DTC目次</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>Register DTC</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>índice de los DTC</xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>DTC Index</xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getDtcSearchTitle">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>DTC zoeken</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>Recherche de DTC</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>DTC-Suche</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>Αναζήτηση DTC</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:text>Pretraživanje DTC-a</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>DTC-keresés</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>Ricerca DTC</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:text>DTC検索</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>Vyhľadať DTC</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>Búsqueda de los DTC</xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>DTC Search</xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getSymIndexTitle">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>Symptomenindex</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>Index des symptômes</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>Symptom-Index</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>Ένδειξη Συμπτώματος</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:text>Kazalo simptoma</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>Hibajelenség-lista</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>Indice dei sintomi</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:text>症状別故障診断目次</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>Register symptómov</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>Índice de síntomas</xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>Symptom Index</xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getSymSearchTitle">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>Symptoom zoeken</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>Recherche de symptômes</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>Symptom-Suche</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>Αναζήτηση Συμπτώματος</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:text>Pretraživanje simptoma</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>Hibajelenség-keresés</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>Ricerca dei sintomi</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:text>症状別故障診断検索</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>Vyhľadať symptóm</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>Búsqueda de síntomas</xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>Symptom Search</xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getUI_strSearch">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>Zoeken naar inhoudtitel</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>Recherche des titres du sommaire</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>Suche nach Inhaltstitel</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>Αναζήτηση για Τίτλο Περιεχομένου:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:text>Traženje naslova sadržaja:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>Tartalom keresése</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>Ricerca nell'indice</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:text>目次検索</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>Vyhľadávanie titulu obsahu</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>Búsqueda del título del contenido</xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>Search for Content Title:</xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getUI_strSearchDtc">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>Zoeken naar DTC</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>Recherche du DTC</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>Suche nach DTC</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>Αναζήτηση για DTC:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:text>Traženje DTC-a:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>DTC (Diagnosztikai Hibakód) keresése</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>Ricerca del DTC</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:text>ＤＴＣ検索</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>Vyhľadávanie DTC</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>Búsqueda del DTC</xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>Search for DTC:</xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getUI_strSearchSym">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>Zoeken naar titel van symptoominhoud</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>Recherche des titres du sommaire des symptômes</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>Suche nach Symptominhaltstitel</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>Αναζήτηση για Τίτλο Περιεχομένου Συμπτώματος:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:text>Traženje naslova sadržaja simptoma:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>Hibaszimptóma tartalom keresése</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>Ricerca del sintomo accusato</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:text>症状目次検索</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>Vyhľadávanie titulu obsahu symptómu</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>Búsqueda del título del contenido del síntoma</xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>Search for Title of Symptom Content:</xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getUI_btnSearch">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>Zoeken</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>Recherche</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>Suche</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>Αναζήτηση</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:text>Pretraživanje</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>Keresés</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>Ricerca</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:text>検索</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>Vyhľadať</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>Búsqueda</xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>Search</xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getUI_btnMod">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>Gewijzigd pictogram &amp; Gewijzigde SIE-lijst</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>Icône modifiée &amp; liste des SIE modifiée</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>Modifiziertes Symbol und modifizierte SIE-Liste</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>Τροποποιημένο Εικονίδιο &amp; Τροποποιημένη Λίστα SIE</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:text>Izmijenjena ikona i izmijenjena SIE lista</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>Módosított Icon &amp; Módosított SIE Listája</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>Icona modificata e lista SIE modificata</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:text>変更情報表示</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>Upravená ikona a upravený zoznam SIE</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>Icono modificado y lista de SIE modificada</xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>Modified Icon &amp; Modified SIE List</xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getUI_strMod">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>Gewijzigde SIE-lijst</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>Ldes SIE modifiée</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>Modifizierte SIE-Liste</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>Τροποποιημένη Λίστα SIE</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:text>Izmijenjena SIE lista</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>Módosított SIE Listája</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>Lista SIE modificata</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:text>変更SIEリスト</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>Upravený zoznam SIE</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>Lista de SIE modificada</xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>Modified SIE List</xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getUI_iconMod">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>Gewijzigd</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>Modifié</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>Modifiziert</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>Τροποποιημένο</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:text>Izmijenjeno</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>Módosított</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>Modificata</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:text>変更</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>Upravené</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>Modificado</xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>Modified</xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getUI_strExpandImage_text">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>Afbeelding vergroten</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>Agrandir l'image</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>Bild vergrößern</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>Επέκταση εικόνας</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:text>Proširi sliku</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>Kép nagyítása</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>Ingrandire l'immagine</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:text>拡大</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>Roztiahnuť obraz</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>Ampliar imagen</xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>Expand image</xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getUI_strExpandImage">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<img class="expandicon" src="../../icon/zoom.gif" width="30px" title="Afbeelding vergroten" border="0"/>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<img class="expandicon" src="../../icon/zoom.gif" width="30px" title="Agrandir l'image" border="0"/>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<img class="expandicon" src="../../icon/zoom.gif" width="30px" title="Bild vergrößern" border="0"/>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<img class="expandicon" src="../../icon/zoom.gif" width="30px" title="Επέκταση εικόνας" border="0"/>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<img class="expandicon" src="../../icon/zoom.gif" width="30px" title="Proširi sliku" border="0"/>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<img class="expandicon" src="../../icon/zoom.gif" width="30px" title="Kép nagyítása" border="0"/>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<img class="expandicon" src="../../icon/zoom.gif" width="30px" title="Ingrandire l'immagine" border="0"/>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<img class="expandicon" src="../../icon/zoom.gif" width="30px" title="拡大" border="0"/>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<img class="expandicon" src="../../icon/zoom.gif" width="30px" title="Roztiahnuť obraz" border="0"/>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<img class="expandicon" src="../../icon/zoom.gif" width="30px" title="Ampliar imagen" border="0"/>
		</xsl:when>
		<xsl:otherwise>
			<img class="expandicon" src="../../icon/zoom.gif" width="30px" title="Expand image" border="0"/>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getUI_strSpecialTool">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>Speciaal gereedschap</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>Outil spécial</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>Spezialwerkzeug</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>Ειδικό Εργαλείο</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:text>Specijalni alat</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>Célszerszám</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>Attrezzo specifico</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:text>特殊工具</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>Špeciálny nástroj</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>Herramienta especial</xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>Special Tool</xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getUI_strTighteningTorque">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>Aantrekkoppel</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>Couple de serrage</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>Anzugsmoment</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>Ροπή σύσφιξης</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:text>Moment pritezanja</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>Meghúzási nyomaték</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>Coppia di Serraggio</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:text>締付トルク</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>Moment dotiahnutia</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>Par de apriete</xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>Tightening torque</xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getUI_strMaterial">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'jp'">
			<xsl:element name="div">
				<xsl:attribute name="class">title</xsl:attribute>
				<xsl:text>指定材料</xsl:text>
			</xsl:element>
		</xsl:when>
		<xsl:otherwise></xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getUI_strWarning">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>WAARSCHUWING:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>AVERTISSEMENT:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>WARNUNG:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>ΠΡΟΕΙΔΟΠΟΙΗΣΗ:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>VIGYÁZAT:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>VIGYÁZAT:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>AVVERTENZA:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<img class="attenmark" src="../../icon/attenmark.gif" width="16px" border="0"/>
			<xsl:text> 警告:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>VÝSTRAHA:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>ADVERTENCIA:</xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>WARNING:</xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getUI_strCaution">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>LET OP:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>ATTENTION:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>VORSICHT:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>ΠΡΟΣΟΧΗ:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:text>OPREZ:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>FIGYELEM:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>ATTENZIONE:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<img class="attenmark" src="../../icon/attenmark.gif" width="16px" border="0"/>
			<xsl:text> 注意:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>UPOZORNENIE:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>PRECAUCION:</xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>CAUTION:</xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getUI_strNote">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>OPMERKING:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>NOTE:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>ZUR BEACHTUNG:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>ΣΗΜΕΙΩΣΗ:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:text>NAPOMENA:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>MEGJEGYZÉS:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>NOTA:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:text>参考:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>POZNÁMKA:</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>NOTA:</xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>NOTE:</xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getUI_strCondition">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>Toestand</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>Symptôme</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>Symptom</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>Κατάσταση</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:text>Stanje</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>Állapot</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>Condizione</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:text>症状</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>Stav</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>Condición</xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>Condition</xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getUI_strPosCause">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>Mogelijke oorzaak</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>Cause Possible</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>Mögliche Ursache</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>Πιθανή Αιτία</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:text>Mogući uzrok</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>Lehetséges ok</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>Possibile causa</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:text>推定原因</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>Možná prěčina</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>Causa possible</xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>Possible Cause</xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getUI_strCondAction">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>Actie</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>Action</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>Maßnahme</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>Ενέργεια</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:text>Akcija</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>Művelet</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>Intervento</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:text>処置方法（参照先）</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>Činnost'</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>Operación</xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>Action</xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getUI_strStep">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>Stap</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>Etape</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>Schritt</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>Βήμα</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:text>Korak</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>Lépés</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>Fase</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:text>Step</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>Krok</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>Paso</xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>Step</xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getUI_strTestAction">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>Actie</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>Action</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>Maßnahme</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>Ενέργεια</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:text>Akcija</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>Művelet</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>Intervento</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:text>Action</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>Činnost'</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>Operación</xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>Action</xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getUI_strYes">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>Ja</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>Oui</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>Ja</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>ΝΑΙ</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:text>DA</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>Igen</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>Si</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:text>YES</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>Áno</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>Sì</xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>YES</xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getUI_strNo">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>Nee</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>Non</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>Nein</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>ΟΧΙ</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:text>NE</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>Nem</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>No</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:text>NO</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>Nie</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>NO</xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>NO</xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getUI_strReference">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>Referentie: </xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>Référence: </xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>Bezugswert: </xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>Αναφορά: </xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:text>Referenca: </xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>További tájékoztatás: </xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>Riferimento: </xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:text>参照: </xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>Referencia: </xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>Referencia: </xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>Reference: </xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getUI_btnTB">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>Tool Board du</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>Tool Board fr</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>Tool Board ge</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>Tool Board gk</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:text>Ploča za alat</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>Tool Board hu</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>Tool Board it</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:text>Tool Board jp</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>Tool Board sl</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>Tool Board sp</xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>Tool Board</xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>


<xsl:template name="getUI_strMaterialsTitle">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>Materials (du)</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>Materials (fr)</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>Materials (ge)</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>Materials (gk)</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:text>Materijali</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>Materials (hu)</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>Materials (it)</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:text>指定材料</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>Materials (sl)</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>Materials (sp)</xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>Materials</xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getUI_strPreReqSitTitle">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>Speciaal gereedschap en speciale uitrusting</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>Outils spéciaux et matériel</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>Spezialwerkzeuge und Wartungsgeräte</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>Ειδικά Εργαλεία και Εξοπλισμός</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:text>Specijalni alati i oprema</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>Célszerszámok és segédeszközök</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>Strumentazione e Attrezzatura Specifica</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:text>指定材料/特殊工具</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>Špeciálne nástroje a výbava</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>Herramientas y equipos especiales</xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>Special Tools and Equipment</xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getUI_strPreReqSstTitle">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>Speciaal gereedschap</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>Outils spéciaux</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>Spezialwerkzeug</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>Ειδικό Εργαλείο</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:text>Specijalni alat</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>Célszerszám</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>Attrezzo speciale</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:text>特殊工具</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>Špeciálne nástroje</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>Herramienta especial</xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>Special Tool</xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="getUI_strPreReqMaterialsTitle">
	<xsl:param name="lang"/>
	<xsl:choose>
		<xsl:when test="$lang = 'du'">
			<xsl:text>Aanbevolen onderhoudsmateriaal</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'fr'">
			<xsl:text>Produits d'entretien recommandés</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'ge'">
			<xsl:text>Empfohlene Wartungsmaterialien</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'gk'">
			<xsl:text>Προτεινόμενα Υλικά Συντήρησηò</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hr'">
			<xsl:text>Preporučeni servisni materijal</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'hu'">
			<xsl:text>Ajánlott segédanyagok</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'it'">
			<xsl:text>Materiali di manutenzione e assistenza raccomandati</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'jp'">
			<xsl:text>指定材料</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sl'">
			<xsl:text>Odporúčaný servisný materiál</xsl:text>
		</xsl:when>
		<xsl:when test="$lang = 'sp'">
			<xsl:text>Material de servicio recomendado</xsl:text>
		</xsl:when>
		<xsl:otherwise>
			<xsl:text>Recommended Service Material</xsl:text>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>


</xsl:stylesheet>




