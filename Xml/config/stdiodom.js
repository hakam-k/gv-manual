//
// DOM Xml loading functions
//

function onload() {
	xsltProcessor.importStylesheet(xDoc);
}

	var UI_lang = parent.CTL.document.ctl.lang.value;
	var xrefWin;
	
htmlNavi_Dtc="";
htmlNavi_Sym="";
htmlSearch="";
htmlSearch_Dtc="";
htmlSearch_Sym="";
htmlMods_List="";


if (window.ActiveXObject) {
	sourceDoc = xmlLoad("../webdocstructure.xml");
	
	styleNavi = xmlLoad("Xml/config/navi-kousei-e.xslt");
	
	styleMain = xmlLoad("Xml/config/suzuki_all.xsl");

	htmlNavi = sourceDoc.transformNode(styleNavi);
}
else if (window.XSLTProcessor) {
	var xsltProcessor = new XSLTProcessor();
	var serializer = new XMLSerializer();
// load sourceDoc
	sourceDoc = xmlLoad_ff("../webdocstructure.xml");

// load styleNavi and get transform in string htmlNavi
	var xDoc = xmlLoad_ff("Xml/config/navi-kousei-e.xslt");
	xsltProcessor.reset();
	xsltProcessor.importStylesheet(xDoc);
// do transform with current loaded stylesheet
	xslTransDoc = xsltProcessor.transformToDocument(sourceDoc);
	htmlNavi = serializer.serializeToString(xslTransDoc);
} 

function get_htmlMods_List() {
	if (window.ActiveXObject) {
		styleMods_List = xmlLoad("Xml/config/mods-list-e.xslt");
		htmlMods_List = sourceDoc.transformNode(styleMods_List);
	}
	else if (window.XSLTProcessor) {
	// load styleMods_List and get transform in string htmlMods_List
		var xDoc = xmlLoad_ff("Xml/config/mods-list-e.xslt");
		xsltProcessor.reset();
		xsltProcessor.importStylesheet(xDoc);
	// do transform with current loaded stylesheet
		xslTransDoc = xsltProcessor.transformToDocument(sourceDoc);
		htmlMods_List = serializer.serializeToString(xslTransDoc);
	}
}

function get_htmlSearch() {
	if (window.ActiveXObject) {
		styleSearch = xmlLoad("Xml/config/searchindex-e.xslt");
		htmlSearch = sourceDoc.transformNode(styleSearch);
	}
	else if (window.XSLTProcessor) {
	// load styleSearch and get transform in string htmlSearch
		var xDoc = xmlLoad_ff("Xml/config/searchindex-e.xslt");
		xsltProcessor.reset();
		xsltProcessor.importStylesheet(xDoc);
	// do transform with current loaded stylesheet
		xslTransDoc = xsltProcessor.transformToDocument(sourceDoc);
		htmlSearch = serializer.serializeToString(xslTransDoc);
	}
}

function get_htmlNavi_Dtc() {
	if (window.ActiveXObject) {
		srcDtc = xmlLoad("../webdocstructure-dtc.xml");
		styleNavi_Dtc = xmlLoad("Xml/config/navi-dtc-e.xslt");
		htmlNavi_Dtc = srcDtc.transformNode(styleNavi_Dtc);
	}
	else if (window.XSLTProcessor) {
	// load styleNavi_Dtc and get transform in string htmlNavi_Dtc
		xSrcDtc = xmlLoad_ff("../webdocstructure-dtc.xml");
		var xDoc = xmlLoad_ff("Xml/config/navi-dtc-e.xslt");
		xsltProcessor.reset();
		xsltProcessor.importStylesheet(xDoc);
	// do transform with current loaded stylesheet
		xslTransDoc = xsltProcessor.transformToDocument(xSrcDtc);
		htmlNavi_Dtc = serializer.serializeToString(xslTransDoc);
	}
}

function get_htmlSearch_Dtc() {
	if (window.ActiveXObject) {
		if (htmlSearch_Dtc=="") {
			srcDtc = xmlLoad("../webdocstructure-dtc.xml");
		}
		styleSearch_Dtc = xmlLoad("Xml/config/search-dtc-e.xslt");
		htmlSearch_Dtc = srcDtc.transformNode(styleSearch_Dtc);
	}
	else if (window.XSLTProcessor) {
	// load styleSearch_Dtc and get transform in string htmlSearch_Dtc
		if (htmlSearch_Dtc=="") {
			xSrcDtc = xmlLoad_ff("../webdocstructure-dtc.xml");
		}
		var xDoc = xmlLoad_ff("Xml/config/search-dtc-e.xslt");
		xsltProcessor.reset();
		xsltProcessor.importStylesheet(xDoc);
	// do transform with current loaded stylesheet
		xslTransDoc = xsltProcessor.transformToDocument(xSrcDtc);
		htmlSearch_Dtc = serializer.serializeToString(xslTransDoc);
	}
}

function get_htmlNavi_Sym() {
	if (window.ActiveXObject) {
		srcSym = xmlLoad("../webdocstructure-sym.xml");
		styleNavi_Sym = xmlLoad("Xml/config/navi-sym-e.xslt");
		htmlNavi_Sym = srcSym.transformNode(styleNavi_Sym);
	}
	else if (window.XSLTProcessor) {
	// load styleNavi_Sym and get transform in string htmlNavi_Sym
		xSrcSym = xmlLoad_ff("../webdocstructure-sym.xml");
		var xDoc = xmlLoad_ff("Xml/config/navi-sym-e.xslt");
		xsltProcessor.reset();
		xsltProcessor.importStylesheet(xDoc);
	// do transform with current loaded stylesheet
		xslTransDoc = xsltProcessor.transformToDocument(xSrcSym);
		htmlNavi_Sym = serializer.serializeToString(xslTransDoc);
	}
}

function get_htmlSearch_Sym() {
	if (window.ActiveXObject) {
		if (htmlSearch_Sym=="") {
			srcSym = xmlLoad("../webdocstructure-sym.xml");
		}
		styleSearch_Sym = xmlLoad("Xml/config/search-sym-e.xslt");
		htmlSearch_Sym = srcSym.transformNode(styleSearch_Sym);
	}
	else if (window.XSLTProcessor) {
	// load styleSearch_Sym and get transform in string htmlSearch_Sym
		if (htmlSearch_Dtc=="") {
			xSrcSym = xmlLoad_ff("../webdocstructure-sym.xml");
		}
		var xDoc = xmlLoad_ff("Xml/config/search-sym-e.xslt");
		xsltProcessor.reset();
		xsltProcessor.importStylesheet(xDoc);
	// do transform with current loaded stylesheet
		xslTransDoc = xsltProcessor.transformToDocument(xSrcSym);
		htmlSearch_Sym = serializer.serializeToString(xslTransDoc);
	}
}


function getInnerNaviHtml(id) { 
	innerHtml="";
	var UI_lang = parent.CTL.document.ctl.lang.value;
	subDocPath = "../webdocstructure_" + id + ".xml";
	if (window.ActiveXObject) {
		subDoc = xmlLoad(subDocPath);
		styleNavi_SubDoc = xmlLoad("Xml/config/navi-subdoc.xslt");
		styleNavi_SubDoc.selectSingleNode("//xsl:param[@name='lang']").setAttribute("select","'" + UI_lang + "'");
		styleNavi_SubDoc.selectSingleNode("//xsl:param[@name='sc']").setAttribute("select","'" + id + "'");
		innerHtml = subDoc.transformNode(styleNavi_SubDoc);
	}
	else if (window.XSLTProcessor) {
	// load subDoc file and get transform in string innerHtml
		subDoc = xmlLoad_ff(subDocPath);
		var xDoc = xmlLoad_ff("Xml/config/navi-subdoc.xslt");
		xsltProcessor.reset();
		xsltProcessor.importStylesheet(xDoc);
		xsltProcessor.setParameter("", "lang", UI_lang);
		xsltProcessor.setParameter("", "sc", id);
	// do transform with current loaded stylesheet
		xslTransDoc = xsltProcessor.transformToDocument(subDoc);
		innerHtml = serializer.serializeToString(xslTransDoc);
	}
	return innerHtml;
}


function loadNavi() { 
		parent.NAVI.document.write(htmlNavi);
		parent.NAVI.document.close();
}

function loadNavi_Dtc() { 
	if (htmlNavi_Dtc=="") {
		get_htmlNavi_Dtc();
	}
	parent.NAVI.document.write(htmlNavi_Dtc);
	parent.NAVI.document.close();
}

function loadNavi_Sym() { 
	if (htmlNavi_Sym=="") {
		get_htmlNavi_Sym();
	}
	parent.NAVI.document.write(htmlNavi_Sym);
	parent.NAVI.document.close();
}

function loadSearch() { 
	if (htmlSearch=="") {
		get_htmlSearch();
	}
	parent.NAVI.document.write(htmlSearch);
	parent.NAVI.document.close();
}

function loadSearch_Dtc() { 
	if (htmlSearch_Dtc=="") {
		get_htmlSearch_Dtc();
	}
	parent.NAVI.document.write(htmlSearch_Dtc);
	parent.NAVI.document.close();
}

function loadSearch_Sym() { 
	if (htmlSearch_Sym=="") {
		get_htmlSearch_Sym();
	}
	parent.NAVI.document.write(htmlSearch_Sym);
	parent.NAVI.document.close();
}

function loadModsList() { 
	if (htmlMods_List=="") {
		get_htmlMods_List();
	}
	parent.MAIN.document.write(htmlMods_List);
	parent.MAIN.document.close();
}


function xmlLoad(strFile) {
	var dom;
	
	// dom = new ActiveXObject("Msxml.DOMDocument");
	dom = new ActiveXObject("Msxml2.DOMDocument");
	dom.async = false;
	dom.validateOnParse = false;
	dom.load(strFile);
	if (dom.parseError != 0)
	{
		alert(dom.url + ": " + dom.parseError.reason + "\nline number: " + dom.parseError.line);
		return null;
	}
	else
		return dom;
}

function xmlLoad_ff(strFile) {
	// var xDoc = document.implementation.createDocument("", "", null);
	// xDoc.async = false;
	// xDoc.load(strFile);
	// return xDoc;

	var xhr = new XMLHttpRequest()

  	xhr.open('GET', strFile, false)
  	//xhr.setRequestHeader('Content-Type', 'text/xml')
  	xhr.send(null)

  	return xhr.responseXML
}


