﻿/********************************************************************************/
/*  gobal_Val_LngMsg.js  : All Page Caption & Label String (9Language)   */
/********************************************************************************/
/*--- Base Language ---*/
var garBLng = new Array(
	"EN" , 
	"FR"  , 
	"GE"  ,
	"SP"  ,
	"DU"  ,
	"IT"  ,
	"HU"  ,
	"SL"  ,
	"GR"  ,
	"CR"  ,
	"PL");

/* --- Public use ---*/
// Manual Language 
var arstrMLng = {
	'EN' : 'E(English)' , 
	'FR' : 'F(French)' ,
	'GE' : 'G(German)'  , 
	'SP' : 'S(Spanish)' ,
	'DU' : 'D(Dutch)' ,
	'IT' : 'B(Italian)' , 
	'HU' : 'H(Hungarian)' ,
	'SL' : 'V(Slovak)' ,
	'GR' : 'K(Greek)' ,
	'CR' : 'Q(Croatian)' ,
	'PL' : 'P(Polish)' 
	};

//Add 2007.11.28 My B.D
// Manual Language (For French)
var arstrMLngFR = {
	'EN' : 'E(Anglais)' , 
	'FR' : 'F(Français)' ,
	'GE' : 'G(Allemand)'  , 
	'SP' : 'S(Espagnol)' ,
	'DU' : 'D(Néerlandais)' ,
	'IT' : 'B(Italien)' , 
	'HU' : 'H(Hongrois)' ,
	'SL' : 'V(Slovaque)' ,
	'GR' : 'K(Grec)' ,
	'CR' : 'Q(Croate)' ,
	'PL' : 'P(Polonais)' 
	};

// Manual Language (For German)
var arstrMLngGE = {
	'EN' : 'E(Englisch)' , 
	'FR' : 'F(Französisch)' ,
	'GE' : 'G(Deutsch)'  , 
	'SP' : 'S(Spanisch)' ,
	'DU' : 'D(Niederländisch)' ,
	'IT' : 'B(Italienisch)' , 
	'HU' : 'H(Ungarisch)' ,
	'SL' : 'V(Slowakisch)' ,
	'GR' : 'K(Griechisch)' ,
	'CR' : 'Q(Kroatisch)' ,
	'PL' : 'P(Polnisch)' 
	};

// Manual Language (For Spanish)
var arstrMLngSP = {
	'EN' : 'E(Inglés)' , 
	'FR' : 'F(Francés)' ,
	'GE' : 'G(Alemán)'  , 
	'SP' : 'S(Español)' ,
	'DU' : 'D(Neerlandés)' ,
	'IT' : 'B(Italiano)' , 
	'HU' : 'H(Húngaro)' ,
	'SL' : 'V(Eslovaco)' ,
	'GR' : 'K(Griego)' ,
	'CR' : 'Q(Croata)' ,
	'PL' : 'P(Polaco)' 
	};

// Manual Language (For Dutch)
var arstrMLngDU = {
	'EN' : 'E(Engels)' , 
	'FR' : 'F(Frans)' ,
	'GE' : 'G(Duits)'  , 
	'SP' : 'S(Spaans)' ,
	'DU' : 'D(Nederlands)' ,
	'IT' : 'B(Italiaans)' , 
	'HU' : 'H(Hongaars)' ,
	'SL' : 'V(Slowaaks)' ,
	'GR' : 'K(Grieks)' ,
	'CR' : 'Q(Kroatisch)' ,
	'PL' : 'P(Polsk)' 
	};

// Manual Language (For Italian)
var arstrMLngIT = {
	'EN' : 'E(Inglese)' , 
	'FR' : 'F(Francese)' ,
	'GE' : 'G(Tedesco)'  , 
	'SP' : 'S(Spagnolo)' ,
	'DU' : 'D(Olandese)' ,
	'IT' : 'B(Italiano)' , 
	'HU' : 'H(Ungherese)' ,
	'SL' : 'V(Slovacco)' ,
	'GR' : 'K(Greco)' ,
	'CR' : 'Q(Croato)' ,
	'PL' : 'P(Polacco)' 
	};

// Manual Language (For Hungarian)
var arstrMLngHU = {
	'EN' : 'E(Angol)' , 
	'FR' : 'F(Francia)' , 
	'GE' : 'G(Német)' , 
	'SP' : 'S(Spanyol)' , 
	'DU' : 'D(Holland)' , 
	'IT' : 'B(Olasz)' , 
	'HU' : 'H(Magyar)' , 
	'SL' : 'V(Szlovák)' , 
	'GR' : 'K(Görög)' ,
	'CR' : 'Q(Horvát)' ,
	'PL' : 'P(Lengyel)' 
	};

// Manual Language (For Slovak)
var arstrMLngSL = {
	'EN' : 'E(Anglicky)' , 
	'FR' : 'F(Francúzky)' , 
	'GE' : 'G(Nemecky)' , 
	'SP' : 'S(španielsky)' , 
	'DU' : 'D(Holandsky)' , 
	'IT' : 'B(Taliansky)' , 
	'HU' : 'H(Maďarsky)' , 
	'SL' : 'V(Slovensky)' , 
	'GR' : 'K(Grécky)' , 
	'CR' : 'Q(Chorvátsky)' ,
	'PL' : 'P(Poľský)' 
	};

// Manual Language (For Greek)
var arstrMLngGR = {
	'EN' : 'E(Αγγλικά)' , 
	'FR' : 'F(Γαλλικά)' , 
	'GE' : 'G(Γερμανικά)' , 
	'SP' : 'S(Ισπανικά)' , 
	'DU' : 'D(Ολλανδικά)' , 
	'IT' : 'B(Ιταλικά)' , 
	'HU' : 'H(Ουγγρικά)' , 
	'SL' : 'V(Σλοβάκικα)' , 
	'GR' : 'K(Ελληνικά)' ,
	'CR' : 'Q(Κροάτικα)' ,
	'PL' : 'P(Πολωνικά)' 
	};

// Manual Language (For Croatian)
var arstrMLngCR = {
	'EN' : 'E(Engleski)',
	'FR' : 'F(Francuski)',
	'GE' : 'G(Njemački)',
	'SP' : 'S(Španjolski)',
	'DU' : 'D(Nizozemski)',
	'IT' : 'B(Talijanski)',
	'HU' : 'H(Madžarski)',
	'SL' : 'V(Slovački)',
	'GR' : 'K(Grčki)',
	'CR' : 'Q(Hrvatski)',
	'PL' : 'P(Poljski)'
	};

// Manual Language (For Polish) 2009.7.2 add
var arstrMLngPL = {
	'EN' : 'E(Angielski)' ,
	'FR' : 'F(Francuski)' ,
	'GE' : 'G(Niemiecki)'  ,
	'SP' : 'S(Hiszpański)' ,
	'DU' : 'D(Holenderski)' ,
	'IT' : 'B(Włoski)' ,
	'HU' : 'H(Węgierski)' ,
	'SL' : 'V(Słowacki)' ,
	'GR' : 'K(Grecki)' ,
	'CR' : 'Q(Chorwacki)' ,
	'PL' : 'P(Polski)'
	};

// [Go to Top] Button or Link Caption
var arstrGTop = {
	'EN': 'To top of this page',
	'FR': 'Haut de la page',
	'GE': 'Zum Anfang dieser Seite',
	'SP': 'Principio página',
	'DU': 'Naar bovenkant van deze pagina',
	'IT': 'In cima a questa pagina',
	'HU': 'Az oldal tetejére',
	'SL': 'Na začiatok tejto stránky',
	'GR': 'Στην αρχή της σελίδας',
	'CR': 'Na vrh stranice',
	'PL': 'Na początek tej strony'
	};

// [BACK] Button or Link Caption
var arstrBk = {
	'EN': 'BACK',
	'FR': 'RETOUR',
	'GE': 'ZURÜCK',
	'SP': 'ATRÁS',
	'DU': 'TERUG',
	'IT': 'INDIETRO',
	'HU': 'VISSZA',
	'SL': 'SPÄŤ',
	'GR': 'ΠΙΣΩ',
	'CR': 'NAZAD',
	'PL': 'POWRÓT'
	};

//2008.09.10 ADD
// [TOP] Button or Link Caption
var arstrTop = {
	'EN': 'Top',
	'FR': 'Haut',
	'GE': 'Oben',
	'SP': 'Inicio',
	'DU': 'Begin',
	'IT': 'Inizio',
	'HU': 'Oldal teteje',
	'SL': 'Hore',
	'GR': 'Πάνω',
	'CR': 'Vrh',
	'PL': 'Początek'
	};


// List Label : Remarks
var arstrRmk = {
	'EN': 'Remarks'    ,
	'FR': 'Remarques',
	'GE': 'Bemerkungen',
	'SP': 'Observaciones',
	'IT': 'Annotazioni',
	'DU': 'Opmerkingen',
	'HU': 'Megjegyzések',
	'SL': 'Poznámky',
	'GR': 'Παρατηρήσεις',
	'CR': 'Napomene',
	'PL': 'Uwagi'
	};

//2008.7.28 ADD
// List Label : Applicable Model
var arstrAppModel = {
	'EN': 'Applicable Model',
	'FR': 'Modèle concerné',
	'GE': 'Zutreffend für Modell',
	'SP': 'Modelo correspondiente',
	'IT': 'Modello applicabile',
	'DU': 'Toepasselijk model',
	'HU': 'Vonatkozási modell',
	'SL': 'Príručka platí pre modely',
	'GR': 'Μοντέλο Eφαρμογής',
	'CR': 'Primjenjivi model',
	'PL': 'Obejmowane modele'
}


// [VIN List] Button or Link Caption
var arstrVList = {
	'EN': 'VIN List' , 
	'FR': 'Liste des NIV' , 
	'GE': 'VIN-Liste' , 
	'SP': 'Lista VIN' , 
	'IT': 'Elenco VIN' , 
	'DU': 'VIN lijst' , 
	'HU': 'VIN Lista' , 
	'SL': 'Zoznam VIN',
	'GR': 'Κατάλογος VIN',
	'CR': 'Popis VIN-ova',
	'PL': 'Lista numerów VIN'
};

/* --- Public use ---*/


/* ---- Use Top Page ----- */

//[Display Language] Caption Add 2007.11.28 My B.D
var arDspLStr = {
	'EN': 'Display Language: ',
	'FR': 'Langue d\'affichage: ' , 
	'GE': 'Sprachwahl: ' , 
	'SP': 'Idioma de visualización: ' , 
	'IT': 'Lingua del display: ' , 
	'DU': 'Weergavetaal: ' , 
//	'HU': 'Kijelző nyelv: ' , 
	'HU': 'Képernyőnyelv: ' , 
	'SL': 'Vyznačte jazyk: ' , 
	'GR': 'Γλώσσα οθόνης: ',
	'CR': 'Jezik prikaza:',
	'PL': 'Wersja językowa:'
	};


// [Manual List] Button or Link Caption
var arbMLst = {
	'EN': 'Manual List',
	'FR': 'Liste des manuels',
	'GE': 'Anleitungsliste',
	'SP': 'Lista manuales',
	'IT': 'Elenco manuali',
	'DU': 'Handboekenlijst',
//	'HU': 'Kézikönyv Lista',
	'HU': 'Szervizkönyv lista',
	'SL': 'Zoznam návodu na obsluhu',
	'GR': 'Κατάλογος Εγχειρίδιου',
	'CR': 'Popis priručnika',
	'PL': 'Lista podręczników'
	};

// [Model Select] Button or Link Caption
// Update 2007.11.28 My B.D
var arbModsec = {
	'EN': 'Model Selection',
	'FR': 'Sélection du modèle',
	'GE': 'Modellwahl',
	'SP': 'Selección de modelo',
	'IT': 'Selezione modello',
	'DU': 'Modelkeuze',
//	'HU': 'Modell kiválasztás',
	'HU': 'Modell választás',
	'SL': 'Výber modelu',
	'GR': 'Επιλογή Μοντέλου',
	'CR': 'Odabir modela',
	'PL': 'Wybór modelu'
	};

// [VIN Search] Button or Link Caption
var arbVSrc = {
	'EN': 'VIN Search',
	'FR': 'Recherche du NIV',
	'GE': 'VIN-Suche',
	'SP': 'Búsqueda VIN',
	'IT': 'Ricerca VIN',
	'DU': 'VIN zoeken',
//	'HU': 'VIN Keresés',
	'HU': 'VIN keresés',
	'SL': 'Vyhľadávanie VIN',
	'GR': 'Αναζήτηση VIN',
	'CR': 'Pretraživanje VIN-a',
	'PL': 'Wyszukiwanie VIN'
	};

// [How to read] Button or Link Caption
// Update 2007.11.28 My B.D
var arbHtf = {
	'EN': 'How to find',
	'FR': 'Comment trouver',
	'GE': 'Finden',
	'SP': 'Encontrar',
	'IT': 'Come trovare',
	'DU': 'Zoekaanwijzing',
	'HU': 'Hogyan található meg',
	'SL': 'Ako zistiť',
	'GR': 'Πώς γίνεται εύρεση',
	'CR': 'Kako pronaći',
	'PL': 'Jak znaleźć'
	};

/*var aruHtf = {
	'EN': 'howto_ENG.html',
	'FR': 'howto_FRA.html',
	'GE': 'howto_GER.html',
	'SP': 'howto_SPA.html',
	'DU': 'howto_DUT.html',
	'IT': 'howto_ITA.html',
	'HU': 'howto_HUN.html',
	'SL': 'howto_SLV.html',
	'GR': 'howto_GRE.html',
	};
*/
var aruHtf = {
	'EN': 'How_to_find_ENG.pdf',
	'FR': 'How_to_find_FRA.pdf',
	'GE': 'How_to_find_GER.pdf',
	'SP': 'How_to_find_SPA.pdf',
//	'DU': 'How_to_find_ITA.pdf',
//	'IT': 'How_to_find_DUT.pdf',
	'DU': 'How_to_find_DUT.pdf',
	'IT': 'How_to_find_ITA.pdf',
	'HU': 'How_to_find_HUN.pdf',
	'SL': 'How_to_find_SLV.pdf',
	'GR': 'How_to_find_GRE.pdf',
	'CR': 'How_to_find_HRV.pdf',
	'PL': 'How_to_find_POL.pdf'
	};


// [Plug-in] Button or Link Caption
var arbPiL = {
	'EN': 'Plug-in',
	'FR': 'Plug-in',
	'GE': 'Plugin',
	'SP': 'Plug-in',
	'IT': 'Plug-in',
	'DU': 'Plug-in',
	'HU': 'Beépülő Modul',
	'SL': 'Zapojiť',
	'GR': 'Σύνδεση',
	'CR': 'Dodatak',
	'PL': 'Wtyczki programowe'
	};

// Plugin Page URL
var aruPln = {
	'EN': 'plgin_ENG.html',
	'FR': 'plgin_FRA.html',
	'GE': 'plgin_GER.html',
	'SP': 'plgin_SPA.html',
	'IT': 'plgin_ITA.html',
	'DU': 'plgin_DUT.html',
	'HU': 'plgin_HUN.html',
	'SL': 'plgin_SLV.html',
	'GR': 'plgin_GRE.html',
	'CR': 'plgin_HRV.html',
	'PL': 'plgin_POL.html'
	};


/* ---- Use Top Page ----- */

/* ---- Use Manual List Page ----*/
// [MANUAL LIST] Caption
var arstrML_U = {
	'EN': 'MANUAL LIST',
	'FR': 'LISTE DES MANUELS',
	'GE': 'ANLEITUNGSLISTE',
	'SP': 'LISTA MANUALES',
	'IT': 'ELENCO MANUALI',
	'DU': 'HANDBOEKENLIJST',
//	'HU': 'KÉZIKÖNYV LISTA',
	'HU': 'SZERVIZKÖNYV LISTA',
	'SL': 'ZOZNAM NÁVODU NA OBSLUHU',
	'GR': 'ΚΑΤΑΛΟΓΟΣ ΕΓΧΕΙΡΙΔΙΟΥ',
	'CR': 'POPIS PRIRUČNIKA',
	'PL': 'LISTA PODRĘCZNIKÓW'
	};

// Condition
// Selected Manual
var arstrCondLabl = {
	'EN': 'Selected Manual',
	'FR': 'Manuel sélectionné',
	'GE': 'Gewählte Anleitung',
	'SP': 'Manual seleccionado',
	'IT': 'Manuale selezionato',
	'DU': 'Geselecteerd handboek',
	'HU': 'Kiválasztott kézikönyv',
	'SL': 'Vybraný návod na obsluhu',
	'GR': 'Εγχειρίδιο Επιλογής',
	'CR': 'Odabrani priručnik',
	'PL': 'Wybrany podręcznik'
	};

// Selected Manual
var arstrSelLng = {
	'EN': 'Selected Language',
	'FR': 'Langue sélectionnée',
	'GE': 'Gewählte Sprache',
	'SP': 'Idioma seleccionado',
	'IT': 'Lingua selezionata',
	'DU': 'Geselecteerde taal',
	'HU': 'Választott nyelv',
	'SL': 'Zvolený jazyk',
	'GR': 'Γλώσσα Επιλογής',
	'CR': 'Odabrani jezik',
	'PL': 'Wybrany język'
	};

//ALL
var arstrAll = {
	'EN': 'ALL',
	'FR': 'TOUT',
	'GE': 'ALLES',
	'SP': 'TODOS',
	'IT': 'TUTTO',
	'DU': 'ALLE',
	'HU': 'ÖSSZES',
	'SL': 'CELÉ',
	'GR': 'ΟΛΑ',
	'CR': 'SVE',
	'PL': 'WSZYSTKIE'
	};

//All Manuals
var arstrAllMan = {
	'EN': 'All Manuals',
	'FR': 'Tous les manuels',
	'GE': 'Alle Anleitungen',
	'SP': 'TODOS manuales',
	'IT': 'Tutti i manuali',
	'DU': 'Alle handboeken',
//	'HU': 'Összes kézikönyv',
	'HU': 'Összes szervizkönyv',
	'SL': 'Všetky návody na obsluhu',
	'GR': 'Όλα τα Εγχειρίδια',
	'CR': 'Svi priručnici',
	'PL': 'Wszystkie podręczniki'
	};


// Manual List Label : Manual Part Name
var arstrMpn = {
/* //2008.7.23 Del
	'EN': 'Manual Part Name',
	'FR': 'Nom de pièce du manuel',
	'GE': 'Anleitung-Teilebezeichnung',
	'SP': 'Nombre de manual',
	'IT': 'Nome parte manuale',
	'DU': 'Onderdeelnaam van handboek',
//	'HU': 'Kézikönyv Résznév',
	'HU': 'Szervizkönyv neve',
	'SL': 'Názov súčiastky v návode na obsluhu',
	'GR': 'Ονομασία Εξαρτήματος Εγχειρίδιου'
*/
//2008.7.23 UPDATE start
	'EN': 'Manual Name',
	'FR': 'Nom du manuel',
	'GE': 'Handbuchbezeichnung',
	'SP': 'Título del manual',
	'IT': 'Nome del manuale',
	'DU': 'Handboeknaam',
	'HU': 'Szervizkönyv neve',
	'SL': 'Názov príručky',
	'GR': 'Ονομασία Βιβλίου Οδηγιών',
//2008.7.23 UPDATE end
	'CR': 'Naziv priručnika',
	'PL': 'Nazwa podręcznika'
	};

// Manual List Label : Language
var arstrLng = {
	'EN': 'Language',
	'FR': 'Langue',
	'GE': 'Sprache',
	'SP': 'Idioma',
	'IT': 'Lingua',
	'DU': 'Taal',
	'HU': 'Nyelv',
	'SL': 'Jazyk',
	'GR': 'Γλώσσα',
	'CR': 'Jezik',
	'PL': 'Język'
	};

// Manual List Label : Part Number
var arstrPno = {
/* 2008.7.23 Del
	'EN': 'Part Number',
	'FR': 'Numéro de pièce',
	'GE': 'Teilenummer',
	'SP': 'Número pieza',
	'IT': 'Numero parte',
	'DU': 'Onderdeelnummer',
//	'HU': 'Részszám',
	'HU': 'Alkatrészszám',
	'SL': 'Číslo súčiastky',
	'GR': 'Αριθμός Εξαρτήματος'
*/
//2008.7.23 UPDATE start
	'EN': 'Manual Number',
	'FR': 'Numéro de référence',
	'GE': 'Handbuchnummer',
	'SP': 'Número del manual',
	'IT': 'Numero manuale',
	'DU': 'Handboeknummer',
	'HU': 'Szervizkönyv száma',
	'SL': 'Číslo príručky',
	'GR': 'Αριθμός Βιβλίου Οδηγιών',
//2008.7.23 UPDATE end
	'CR': 'Broj priručnika',
	'PL': 'Numer podręcznika'
	};

// Selected Language (Long)
var arstrLngLong = {
	'E': 'English' ,
	'F': 'French' , 
	'G': 'German' , 
	'S': 'Spanish' , 
	'B': 'Italian' ,
	'D': 'Dutch' , 
	'H': 'Hungarian' , 
	'V': 'Slovak',
	'K': 'Greek' ,
	'Q': 'Croatian',
	'P': 'Polish'
};

//Add 2007.11.30
var arstrLngLongFR = {
	'E': 'Anglais' ,
	'F': 'Français' ,
	'G': 'Allemand' ,
	'S': 'Espagnol' ,
	'B': 'Italien' ,
	'D': 'Néerlandais' ,
	'H': 'Hongrois' ,
	'V': 'Slovaque' ,
	'K': 'Grec',
	'Q': 'Croate',
	'P': 'Polonais'
};

var arstrLngLongGE = {
	'E': 'Englisch' ,
	'F': 'Französisch' ,
	'G': 'Deutsch' ,
	'S': 'Spanisch' ,
	'B': 'Italienisch' ,
	'D': 'Niederländisch' ,
	'H': 'Ungarisch' ,
	'V': 'Slowakisch' ,
	'K': 'Griechisch',
	'Q': 'Kroatisch',
	'P': 'Polnisch'
};

var arstrLngLongSP = {
	'E': 'Inglés' ,
	'F': 'Francés' ,
	'G': 'Alemán' ,
	'S': 'Español' ,
	'B': 'Italiano' ,
	'D': 'Neerlandés' ,
	'H': 'Húngaro' ,
	'V': 'Eslovaco' ,
	'K': 'Griego',
	'Q': 'Croata',
	'P': 'Polaco'
};

var arstrLngLongIT = {
	'E': 'Inglese' ,
	'F': 'Francese' ,
	'G': 'Tedesco' ,
	'S': 'Spagnolo' ,
	'B': 'Italiano' ,
	'D': 'Olandese' ,
	'H': 'Ungherese' ,
	'V': 'Slovacco' ,
	'K': 'Greco',
	'Q': 'Kroatisch',
	'P': 'Polacco'
};

var arstrLngLongDU = {
	'E': 'Engels' ,
	'F': 'Frans' ,
	'G': 'Duits' ,
	'S': 'Spaans' ,
	'B': 'Italiaans' ,
	'D': 'Nederlands' ,
	'H': 'Hongaars' ,
	'V': 'Slowaaks' ,
	'K': 'Grieks',
	'Q': 'Croato',
	'P': 'Polsk'
};

var arstrLngLongHU = {
	'E': 'Angol' ,
	'F': 'Francia' ,
	'G': 'Német' ,
	'S': 'Spanyol' ,
	'B': 'Olasz' ,
	'D': 'Holland' ,
	'H': 'Magyar' ,
	'V': 'Szlovák' ,
	'K': 'Görög',
	'Q': 'Horvát',
	'P': 'Lengyel'
};

var arstrLngLongSL = {
	'E': 'Anglicky' ,
	'F': 'Francúzky' ,
	'G': 'Nemecky' ,
	'S': 'španielsky' ,
	'B': 'Taliansky' ,
	'D': 'Holandsky' ,
	'H': 'Maďarsky' ,
	'V': 'Slovensky' ,
	'K': 'Grécky',
	'Q': 'Chorvátsky',
	'P': 'Poľský'
};

var arstrLngLongGR = {
	'E': 'Αγγλικά' ,
	'F': 'Γαλλικά' ,
	'G': 'Γερμανικά' ,
	'S': 'Ισπανικά' ,
	'B': 'Ιταλικά' ,
	'D': 'Ολλανδικά' ,
	'H': 'Ουγγρικά' ,
	'V': 'Σλοβάκικα' ,
	'K': 'Ελληνικά',
	'Q': 'Κροάτικα',
	'P': 'Πολωνικά'
};

var arstrLngLongCR = {
	'E': 'Engleski',
	'F': 'Francuski',
	'G': 'Njemački',
	'S': 'Španjolski',
	'B': 'Talijanski',
	'D': 'Nizozemski',
	'H': 'Madžarski',
	'V': 'Slovački',
	'K': 'Grčki',
	'Q': 'Hrvatski',
	'P': 'Poljski'
};

// 2009.7.2 add Polish
var arstrLngLongPL = { 
	'E': 'Angielski' ,
	'F': 'Francuski' , 
	'G': 'Niemiecki' , 
	'S': 'Hiszpański' , 
	'B': 'Włoski' ,
	'D': 'Holenderski' , 
	'H': 'Węgierski' , 
	'V': 'Słowacki',
	'K': 'Grecki' ,
	'Q': 'Chorwacki',
	'P': 'Polski'
};

/* ---- Use Manual List Page ----*/



/* ---- Use Model Select Page ----*/
// [MODEL SELECT] Caption
// Update 2007.11.28 My B.D
var arstrMS_U = {
	'EN': 'MODEL SELECTION',
	'FR': 'SÉLECTION DU MODÈLE',
	'GE': 'MODELLWAHL',
	'SP': 'SELECCIÓN DE MODELO',
	'IT': 'SELEZIONE MODELLO',
	'DU': 'MODELKEUZE',
//	'HU': 'MODELL KIVÁLASZTÁS',
//	'HU': 'Modell választás',
	'HU': 'MODELL VÁLASZTÁS',
	'SL': 'VÝBER MODELU',
	'GR': 'ΕΠΙΛΟΓΎ ΜΟΝΤΕΛΟΥ',
	'CR': 'ODABIR MODELA',
	'PL': 'WYBÓR MODELU'
	};

/*
var arstrMS_U = {
	'EN': 'MODEL SELECTION',
	'FR': 'SELECTION DU MODELE',
	'GE': 'MODELL-WAHL',
	'SP': 'SELECCIÓN MODELOS',
	'IT': 'SELEZIONE MODELLO',
	'DU': 'MODEL SELECTEREN',
	'HU': 'MODELLVÁLASZTÁS',
	'SL': 'VÝBER MODELU',
	'GR': 'ΕΠΙΛΟΓΗ ΜΟΝΤΕΛΟΥ'
	};
*/

// Model List Label : Model Name 
// Update 2007.11.28 (FR)
var arstrNm = {
	'EN': 'Model<br>Name',
	'FR': 'Nom du modèle',
	'GE': 'Modellbezeichnung',
	'SP': 'Nombre modelo',
	'IT': 'Nome<br>Modello',
	'DU': 'Model<br>naam',
	'HU': 'Modell<br>Név',
	'SL': 'Model <br> Názov',
	'GR': 'Ονομασία<br>Μοντέλου',
	'CR': 'Model<br>Naziv',
	'PL': 'Nazwa<br>modelu'
	};

// Model List Label : Model Code 
// Update 2007.11.28 (FR)
var arstrCd = {
	'EN': 'Model<br>Code',
	'FR': 'Code du modèle',
	'GE': 'Modell-<br>Code',
	'SP': 'Código modelo',
	'IT': 'Codice<br>Modello',
	'DU': 'Model<br>code',
	'HU': 'Modell<br>Kód',
	'SL': 'Model <br> Kód',
	'GR': 'Κωδικός<br>Μοντέλου',
	'CR': 'Model<br>Kod',
	'PL': 'Kod<br>modelu'
	};

// Model List Label : Engine
// Update 2007.11.28 My B.D
var arstrEng = {
	'EN': 'Engine',
	'FR': 'Moteur',
	'GE': 'Motor',
	'SP': 'Motor',
	'IT': 'Motore',
	'DU': 'Motor',
	'HU': 'Motor',
	'SL': 'Motor',
	'GR': 'Κινητήρας',
	'CR': 'Motor',
	'PL': 'Silnik'
	};


// Model List  Label : Type 
var arstrType = {
	'EN': 'Type',
	'FR': 'Type',
	'GE': 'Typ',
	'SP': 'Tipo',
	'IT': 'Tipo',
	'DU': 'Type',
	'HU': 'Típus',
	'SL': 'Typ',
	'GR': 'Τύπος',
	'CR': 'Vrsta',
	'PL': 'Typ'
	};

// Model List Label : Start of  Product
// Update 2007.11.28 My B.D
var arstrSoP = {
	'EN': 'Start of Production',
	'FR': 'Début de la production',
	'GE': 'Produktionsbeginn',
	'SP': 'Inicio de producción',
	'IT': 'Inizio della produzione',
	'DU': 'Productiebegin',
//	'HU': 'Termelés kezdete',
	'HU': 'Gyártás kezdete',
	'SL': 'Začiatok výroby',
	'GR': 'Έναρξη Παραγωγής',
	'CR': 'Početak proizvodnje',
	'PL': 'Początek produkcji'
	};

// Model List Label : (Yeae.Month) 
var arstrYM = {
	'EN': '(Year. Month)',
	'FR': '(Année.Mois)',
	'GE': '(Jahr. Monat)',
	'SP': '(Año Mes)',
	'IT': '(Anno, Mese)',
	'DU': '(Jaar.Maand)',
//	'HU': '(Év. Hónap)',
	'HU': '(év, hónap)',
	'SL': '(Rok, Mesiac)',
	'GR': '(Έτος, Μήνας)',
	'CR': '(godina. mjesec)',
	'PL': '(rok.miesiąc)'
	};

// Model List Label : Applicable Manual Group
// Update 2007.11.28 (French)
var arstrAmg = {
	'EN': 'Applicable<br>Manual',
	'FR': 'Manuel<br>correspondant',
	'GE': 'Zutreffende<br>Anleitung',
	'SP': 'Manual aplicable',
	'IT': 'Manuale<br>Applicabile',
	'DU': 'Geschikt<br>handboek',
//	'HU': 'Alkalmazható<sortörés>Kézikönyv',
	'HU': 'Alkalmazható<br>Szervizkönyv',
	'SL': 'Aplikovateľný<br>návod na obsluhu',
	'GR': 'Εφαρμόσιμο<br>Εγχειρίδιο',
	'CR': 'Primjenjivi<br>priručnik',
	'PL': 'Odnośny<br>podręcznik'
	};

/* ---- Use Model Select Page ----*/

/*--- Use VIN Search Page ----*/
// [VIN SEARCH] Caption
var arstrVS_U = {
	'EN': 'VIN SEARCH',
	'FR': 'RECHERCHE DU NIV',
	'GE': 'VIN-SUCHE',
	'SP': 'BÚSQUEDA VIN',
	'IT': 'RICERCA VIN',
	'DU': 'VIN ZOEKEN',
	'HU': 'VIN KERESÉS',
	'SL': 'VYHĽADÁVANIE VIN',
	'GR': 'ΑΝΑΖΗΤΗΣΗ VIN',
	'CR': 'PRETRAŽIVANJE VIN-OVA',
	'PL': 'WYSZUKIWANIE VIN'
	};

// Input VIN
var arstrInVin = {
	'EN': 'Input VIN',
	'FR': 'Entrer le NIV',
	'GE': 'VIN-Eingabe',
	'SP': 'Introducir VIN',
	'IT': 'Ingresso VIN',
	'DU': 'VIN invoeren',
	'HU': 'VIN Bevitel',
	'SL': 'Zadanie VIN',
	'GR': 'Εισαγωγή VIN',
	'CR': 'Unos VIN-a',
	'PL': 'Wpisz numer VIN'
	};

// 17 or 12 digits
var arstr1712 = {
	'EN': '17 or 12 digits',
	'FR': '17 ou 12 chiffres',
	'GE': '17 oder 12 Stellen',
	'SP': '17 o 12 dígitos',
	'IT': '17 o 12 cifre',
	'DU': '17 of 12 cijfers',
	'HU': '17 vagy 12 számjegy',
	'SL': '17 alebo 12 znakov',
	'GR': '17 ή 12 ψηφία',
	'CR': '17 ili 12 brojeva',
	'PL': '17 lub 12 znaków'
	};

// Example
var arstrEx = {
	'EN': 'Example',
	'FR': 'Exemple',
	'GE': 'Beispiel',
	'SP': 'Ejemplo',
	'IT': 'Esempio',
	'DU': 'Voorbeeld',
	'HU': 'Példa',
	'SL': 'Príklad',
	'GR': 'Παράδειγμα',
	'CR': 'Primjer',
	'PL': 'Przykład'
	};

// 17 digits type Example
var arstrEx_17 = {
	'EN': '-TSMMZA31S00300452 (for 17 digits type)',
	'FR': '-TSMMZA31S00300452 (pour type à 17 chiffres)',
	'GE': '-TSMMZA31S00300452 (für Typ mit 17 Stellen)',
	'SP': '-TSMMZA31S00300452 (para tipo de 17 dígitos)',
	'IT': '-TSMMZA31S00300452 (per tipo a 17 cifre)',
	'DU': '-TSMMZA31S00300452 (voor type met 17 cijfers)',
	'HU': '-TSMMZA31S00300452 (a 17 számjegyű típusra)',
	'SL': '-TSMMZA31S00300452 (pre 17 znakový typ)',
	'GR': '-TSMMZA31S00300452 (για τύπο 17 ψηφίων)',
	'CR': '-TSMMZA31S00300452 (za 17 znakova)',
	'PL': '-TSMMZA31S00300452 (dla 17-znakowego)'
	};

// 12 digits type Example
var arstrEx_12 = {
	'EN': '-HA2S-240034 (for 12 digits type)',
	'FR': '-HA2S-240034 (pour type à 12 chiffres)',
	'GE': '-HA2S-240034 (für Typ mit 12 Stellen)',
	'SP': '-HA2S-240034 (para tipo de 12 dígitos)',
	'IT': '-HA2S-240034 (per tipo a 12 cifre)',
	'DU': '-HA2S-240034 (voor type met 12 cijfers)',
	'HU': '-HA2S-240034 (a 12 számjegyű típusra)',
	'SL': '-HA2S-240034 (pre 12 znakový typ)',
	'GR': '-HA2S-240034 (για τύπο 12 ψηφίων)',
	'CR': '-HA2S-240034 (za 12 znakova)',
	'PL': '-HA2S-240034 (dla 12-znakowego)'
	};

//Add 2008.06.18
//2008.7.16 Update
var arstrEx_17_2 = {
	'EN': '-JS3TE94164#100001 (for 17 digits type, #: Check digit)',
	'FR': '-JS3TE94164#100001 (for 17 digits type, #: Vérifier le chiffre)',
	'GE': '-JS3TE94164#100001 (for 17 digits type, #: Kontrollziffer)',
	'SP': '-JS3TE94164#100001 (for 17 digits type, #: Comprobar dígito)',
	'IT': '-JS3TE94164#100001 (for 17 digits type, #: Cifra di controllo)',
	'DU': '-JS3TE94164#100001 (for 17 digits type, #: Controleer cijfer)',
	'HU': '-JS3TE94164#100001 (for 17 digits type, #: Ellenőrző számjegy)',
	'SL': '-JS3TE94164#100001 (for 17 digits type, #: Overiť číslo)',
	'GR': '-JS3TE94164#100001 (for 17 digits type, #: Ψηφίο ελέγχου)',
	'CR': '-JS3TE94164#100001 (za 17 brojeva, #: Provjeri broj)',
	'PL': '-JS3TE94164#100001 (dla 17-znakowego, #: pozycja kontrolna)'
	};



// [OK] Button or Link Caption
// UPdate 2007.11.28 My B.D
var arstrOK = {
	'EN': 'OK',
	'FR': 'OK',
	'GE': 'OK',
	'SP': 'Aceptar',
	'IT': 'OK',
	'DU': 'OK',
	'HU': 'OK',
	'SL': 'OK',
	'GR': 'OK',
	'CR': 'U REDU',
	'PL': 'OK'
	};

// [Reset] Button or Link Caption
// UpDate 2007.11.28 My B.D
var arstrReset = {
	'EN': 'Reset',
	'FR': 'Réinitialisation',
	'GE': 'Zurücksetzen',
	'SP': 'Restablecer',
	'IT': 'Reset',
	'DU': 'Reset',
	'HU': 'Újraindítás',
	'SL': 'Reset',
	'GR': 'Σβήσιμο',
	'CR': 'Poništi',
	'PL': 'Kasuj'
	};


// No data Alert Message String
// Update 2007.11.28 My B.D
var arNodataMsg = {
	'EN': 'There is no applicable data',
	'FR': 'Il n\'y a pas de données correspondantes.',
	'GE': 'Es stehen keine anwendbaren Daten zur Verfügung.',
	'SP': 'No hay datos correspondientes.',
	'IT': 'Non ci sono dati applicabili.',
	'DU': 'Er zijn geen toepasselijke gegevens.',
	'HU': 'Nincs vonatkozó adat.',
	'SL': 'Neexistujú použiteľné údaje.',
	'GR': 'Δεν εντοπίζονται τα στοιχεία.',
	'CR': 'Nema primjenjivih podataka',
	'PL': 'Brak odnośnych pozycji'
};

// Input VIN Error Message String
// Update 2007.11.28 My B.D
var arErrdataMsg = {
	'EN': 'Input "VIN" is invalid.',
	'FR': 'Le "NIV" saisi n\'est pas valide.',
	'GE': 'Angegebene VIN ist ungültig.',
	'SP': 'El “VIN” introducido no es válido.',
	'IT': 'L\'input "VIN" non è valido.',
	'DU': 'Ingevoerde "VIN" is ongeldig.',
	'HU': 'A beírt "VIN" érvénytelen.',
	'SL': 'Zadané "VIN" je neplatné.',
	'GR': 'Λάθος εισαγωγή “VIN”',
	'CR': 'Uneseni "VIN" je nevažeći.',
	'PL': 'Nieprawidłowy VIN.'
};

/*--- Use VIN Search Page ----*/

/* ---- Use VIN List Page ---*/
// [VIN LIST] Caption
var arstrVL_U = {
	'EN': 'VIN LIST',
	'FR': 'Liste des NIV',
	'GE': 'VIN-LISTE',
	'SP': 'LISTA VIN',
	'IT': 'ELENCO VIN',
	'DU': 'VIN LIJST',
	'HU': 'VIN LISTA',
	'SL': 'ZOZNAM VIN',
	'GR': 'ΚΑΤΑΛΟΓΟΣ VIN',
	'CR': 'POPIS VIN-OVA',
	'PL': 'Lista numerów VIN'
	};

// VIN List Label : VIN
var arstrVIN = {
	'EN': 'VIN',
	'FR': 'NIV',
	'GE': 'VIN',
	'SP': 'VIN',
	'IT': 'VIN',
	'DU': 'VIN',
	'HU': 'VIN',
	'SL': 'VIN',
	'GR': 'VIN',
	'CR': 'VIN',
	'PL': 'VIN'
	};

/* ---- Use VIN List Page ---*/


