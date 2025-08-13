
//xmlctrl.js

var g_objXml;

function load_xml(fn) {
	var strAPP = navigator.appVersion;
	// XMLドキュメントをDOMで扱うためのオブジェクトを作る
//	if ((document.all) || (strAPP.indexOf('IE') != -1) {
	if (strAPP.indexOf('IE') != -1) {
		g_objXml = new ActiveXObject("Microsoft.XMLDOM");
		parent.BFlg = "1";
	}
	else {
		g_objXml = document.implementation.createDocument("", "", null);
		g_objXml = loadXMLSync(fn)
		parent.BFlg = "2";
	}
	// XMLドキュメントの読み込み設定をする(非同期)
	g_objXml.async = false;
	// XMLドキュメントを読み込む
	if (
		true//g_objXml.load(fn)
	) {
	}
	else {
		var err = g_objXml.parseError;
		alert("エラーが発生しました");
	}
}
function loadXMLSync(url) {
  var xhr = new XMLHttpRequest()

  xhr.open('GET', url, false)
  xhr.setRequestHeader('Content-Type', 'text/xml')
  xhr.send()

  return xhr.responseXML
}

