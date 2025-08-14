function initNavi() {
//	var targetid = parent.CTL.document.ctl.hitdisplay.value;
	
	if (parent.CTL.document.ctl.mode.value=="navi_sym") {
		var targetid = (parent.CTL.document.ctl.hitdisplay_sym.value == 0) ? parent.CTL.document.ctl.current.value : parent.CTL.document.ctl.hitdisplay_sym.value;
	} 
	else if (parent.CTL.document.ctl.mode.value=="navi_dtc") {
		var targetid = (parent.CTL.document.ctl.hitdisplay_dtc.value == 0) ? parent.CTL.document.ctl.current.value : parent.CTL.document.ctl.hitdisplay_dtc.value;
	} else {
		var targetid = (parent.CTL.document.ctl.hitdisplay.value == 0) ? parent.CTL.document.ctl.current.value : parent.CTL.document.ctl.hitdisplay.value;
	}
	targetid = parent.CTL.document.ctl.current.value;
	if (targetid != 0) {
		if (targetid.substr(6,2)=="00") {
			toggle('z');
		} else if (targetid.substr(6,2)=="99") {
			toggle('y');
		} else {
			toggle(targetid.substr(6,1));
		}
		toggle(targetid.substr(6,2));
		if (targetid.substr(8,1)!="0") {
			toggle(targetid.substr(6,3));
		}
		toggle(targetid.substr(6,4));
		loadSIE(targetid,'0');
	}
	
//	parent.CTL.document.ctl.hitdisplay.value = "0";
//	setMode('navi');
	
//	alert(id);
}
	
function setMode(mode) {
	if (parent.CTL.document.ctl.mode.value == mode) {
		return;
	}
	setHistory(parent.CTL.document.ctl.mode.value,mode);
	parent.CTL.document.ctl.mode.value = mode;
//	alert(parent.CTL.document.ctl.mode.value);
	setActiveBtn(mode);
	setTBparams();
}

function setActiveBtn(act) {
	if (act=="navi") {
		loadNavi();
		parent.TOP.document.getElementById("btnCon1").className="button_clicked";
	} else {
		parent.TOP.document.getElementById("btnCon1").className="button";
	}
	if (act=="search") {
		loadSearch();
		parent.TOP.document.getElementById("btnCon2").className="button_clicked";
	} else {
		parent.TOP.document.getElementById("btnCon2").className="button";
	}
	if (act=="navi_dtc") {
		loadNavi_Dtc();
		parent.TOP.document.getElementById("btnDtc1").className="button_clicked";
	} else {
		parent.TOP.document.getElementById("btnDtc1").className="button";
	}
	if (act=="search_dtc") {
		loadSearch_Dtc();
		parent.TOP.document.getElementById("btnDtc2").className="button_clicked";
	} else {
		parent.TOP.document.getElementById("btnDtc2").className="button";
	}
	if (act=="navi_sym") {
		loadNavi_Sym();
		parent.TOP.document.getElementById("btnSym1").className="button_clicked";
	} else {
		parent.TOP.document.getElementById("btnSym1").className="button";
	}
	if (act=="search_sym") {
		loadSearch_Sym();
		parent.TOP.document.getElementById("btnSym2").className="button_clicked";
	} else {
		parent.TOP.document.getElementById("btnSym2").className="button";
	}
	if (act=="navi" || act=="search") {
		parent.TOP.document.getElementById("btnCon").className="button_clicked";
	} else {
		parent.TOP.document.getElementById("btnCon").className="button";
	}
	if (act=="navi_dtc" || act=="search_dtc") {
		parent.TOP.document.getElementById("btnDtc").className="button_clicked";
	} else {
		parent.TOP.document.getElementById("btnDtc").className="button";
	}
	if (act=="navi_sym" || act=="search_sym") {
		parent.TOP.document.getElementById("btnSym").className="button_clicked";
	} else {
		parent.TOP.document.getElementById("btnSym").className="button";
	}
}

function setHistory(prevmode,mode) {
var currentlist = parent.CTL.document.ctl.backlist.value;
var currentsie = parent.CTL.document.ctl.current.value;
	if (mode=="navi") {
		if (prevmode=="search") {
			parent.CTL.document.ctl.backlist.value=currentsie + "," + parent.CTL.document.ctl.backlist_nav.value;
		} else {
			parent.CTL.document.ctl.backlist.value=parent.CTL.document.ctl.backlist_nav.value;
			parent.CTL.document.ctl.current.value=parent.CTL.document.ctl.current_nav.value;
		}
	} else if (mode=="navi_dtc") {
		if (prevmode=="search_dtc") {
			parent.CTL.document.ctl.backlist.value=currentsie + "," + parent.CTL.document.ctl.backlist_dtc.value;
		} else {
			parent.CTL.document.ctl.backlist.value=parent.CTL.document.ctl.backlist_dtc.value;
			parent.CTL.document.ctl.current.value=parent.CTL.document.ctl.current_dtc.value;
		}
	} else if (mode=="navi_sym") {
		if (prevmode=="search_sym") {
			parent.CTL.document.ctl.backlist.value=currentsie + "," + parent.CTL.document.ctl.backlist_sym.value;
		} else {
			parent.CTL.document.ctl.backlist.value=parent.CTL.document.ctl.backlist_sym.value;
			parent.CTL.document.ctl.current.value=parent.CTL.document.ctl.current_sym.value;
		}
	}
	if (prevmode=="navi") {
		parent.CTL.document.ctl.backlist_nav.value=currentlist;
		parent.CTL.document.ctl.current_nav.value=currentsie;
	} else if (prevmode=="navi_dtc") {
		parent.CTL.document.ctl.backlist_dtc.value=currentlist;
		parent.CTL.document.ctl.current_dtc.value=currentsie;
	} else if (prevmode=="navi_sym") {
		parent.CTL.document.ctl.backlist_sym.value=currentlist;
		parent.CTL.document.ctl.current_sym.value=currentsie;
	}

//	alert(parent.CTL.document.ctl.mode.value);
}


function setTBparams() {
	strTB = "0";
	strDC = "0";
	if (parent.location.toString().indexOf("?")!=-1) {
		var strUrl = parent.location.toString();
		var params = strUrl.substr(strUrl.indexOf("?") + 1);
		params = params.toLowerCase();
		if (params.indexOf("tb=")!=-1) {
			strTB = params.substr(params.indexOf("tb=") + 3);
			if (strTB.indexOf("&")!=-1) {
				strTB = strTB.substr(0,strTB.indexOf("&"));
			}
		}
		if (params.indexOf("dc=")!=-1) {
			strDC = params.substr(params.indexOf("dc=") + 3);
			if (strDC.indexOf("&")!=-1) {
				strDC = strDC.substr(0,strDC.indexOf("&"));
			}
		}
	}
}

function toggle(id) {
//	alert(id);
	objImg=parent.NAVI.document.getElementById("mk" + id);
	objBlock=parent.NAVI.document.getElementById("blk" + id);
	if (objBlock) {
		visible=(objBlock.style.display!="none")
		if (visible) {
			objBlock.style.display="none";
			objImg.src="Xml/icon/closed.gif";
			divs=parent.NAVI.objBlock.getElementsByTagName("div")
			for (i=0;i<divs.length;i++) {
				if (divs[i].id.substr(0,3)=="blk") {
					divs[i].style.display="none";
				}
			}
			imgs=objBlock.getElementsByTagName("img")
			for (i=0;i<imgs.length;i++) {
				if (imgs[i].id.substr(0,2)=="mk") {
					imgs[i].src="Xml/icon/closed.gif";
				}
			}
		} else {
			objBlock.style.display="block";
			objImg.src="Xml/icon/open.gif";

			if (id.length==2) {
				if (objBlock.getElementsByTagName("div").length==0) {
					objBlock.innerHTML=parent.TOP.getInnerNaviHtml(id);
				}
			}
		}
	}
}

function expand(id) {
//	alert(id);
	objImg=parent.NAVI.document.getElementById("mk" + id);
	objBlock=parent.NAVI.document.getElementById("blk" + id);
	if (objBlock) {
		objBlock.style.display="block";
		objImg.src="Xml/icon/open.gif";
	}
}

function loadSIE(id,back) { 
	var backlist = parent.CTL.document.ctl.backlist;
	var fwdlist = parent.CTL.document.ctl.fwdlist;
	var UI_lang = parent.CTL.document.ctl.lang.value;

	parent.CTL.document.ctl.current.value = id;

	markSie(id,back);
	if (!back) {
		backlist.value=id + "," + backlist.value;
		fwdlist.value="0";
	}

	var strSource = "../" + id + ".xml";

	if (id.length==10) {
		strSource = "../" + id + "/" + id + ".htm";
	}

	if (id.length==10) {
		parent.MAIN.document.location.href = strSource;
	}
	else if (window.ActiveXObject) {
		srcMain = parent.TOP.xmlLoad(strSource);
		parent.TOP.styleMain.selectSingleNode("//xsl:param[@name='UI_lang']").setAttribute("select","'" + UI_lang + "'");
		htmlMain = srcMain.transformNode(parent.TOP.styleMain);
		parent.MAIN.document.write(htmlMain);
		parent.MAIN.document.close();

// show required Tools/Materials
// 081022: Disabled (again) pending further instructions
//		showPreReqs(srcMain);
	}
	else if (window.XSLTProcessor) {
		if (!xsltProcessor_main)	{
			var xsltProcessor_main = new XSLTProcessor();
			var serializer_main = new XMLSerializer();
			
			var xDoc_main = document.implementation.createDocument("", "", null);
			xDoc_main.async = false;
			xDoc_main.load("Xml/config/suzuki_all.xsl");
			xsltProcessor_main.importStylesheet(xDoc_main);
			xsltProcessor_main.setParameter("", "UI_lang", UI_lang);
		}
		var srcMain = document.implementation.createDocument("", "", null);
		srcMain.async = false;
		srcMain.load(strSource);
		xslMainDoc = xsltProcessor_main.transformToDocument(srcMain);
		htmlMain = serializer_main.serializeToString(xslMainDoc);	
		parent.MAIN.document.write(htmlMain);
		parent.MAIN.document.close();

// show required Tools/Materials
// 081022: Disabled (again) pending further instructions
//		showPreReqs(srcMain);

	}
}

function showMods(obj) {
//	alert("Show mods!");
	var showMods = parent.CTL.document.ctl.showmods.value;
	if (document.styleSheets[0].cssRules) {
		myRules = document.styleSheets[0].cssRules;
	} else {
		myRules = document.styleSheets[0].rules;
	}
	if (showMods=='off') {
		obj.style.backgroundColor='#ffcc00';
		parent.CTL.document.ctl.showmods.value='on';
		myRules[myRules.length - 1].style.display='inline';
		parent.TOP.loadModsList();
	} else {
		obj.style.backgroundColor='#ffffff';
		parent.CTL.document.ctl.showmods.value='off';
		myRules[myRules.length - 1].style.display='none';
	}
}

function showModPdf(sieid) {
	var pdfFile = "../pdf/" + sieid + ".pdf";
	newWin=window.open(pdfFile,"","menubar=yes,toolbar=no,locationbar=no,statusbar=no,scrollbars=yes,width=820,height=640,resizable=yes");
		newWin.focus();
}


function xref(id) {
//UI_lang = "";
aaaa="";
file="";
htmlMain="";

	if (id.length==13) {
		var file="../" + id + ".xml";
	} else {
		var subid=id.substr(0,13);
		var current=document.getElementsByTagName("div")[0].id;
//alert(subid);
//alert(current);
		if (subid!=current) {
			if (id.indexOf("#")!=-1) {
				aaaa=id.substr(id.indexOf("#")+1);
			} else {
				aaaa=id;
			}
			var file="../" + subid + ".xml";
		} else {
			movehash(id);
		}
	}
	
	if (file!="") {
		if (parent.frames.length==4) {
			UI_lang = parent.CTL.document.ctl.lang.value;
		} else {
			if (UI_lang=="") {
				alert("UI_lang: " + opener.name);
				alert("UI_lang: " + opener.UI_lang);
				UI_lang = opener.UI_lang;
			}
		}
		

// open new xrefWin if not already open
	if (parent.frames.length==4 && parent.CTL.document.ctl.xrefwin.value=='off') {
		var xrefWin=window.open("","LinkWindow","menubar=yes,toolbar=no,locationbar=no,statusbar=no,scrollbars=yes,width=820,height=640,resizable=yes");
		parent.CTL.document.ctl.xrefwin.value='on';

src = '<html>';
src += '<head><title>Xref Window</title></head>';
src += '<frameset id="frames_rows" rows="1,45,*" style="border:none; margin:0px; padding:0px;" frameborder="1" border="1" framespacing="0" bordercolor="#7f99ff">';
src += '<frame name="XREFCTL" scrolling="no" style="border:none 0px; margin:0px; padding:0px; border-color:#7f99ff;" noresize frameborder="0" border="0">';
src += '<frame name="XREFTOP" scrolling="no" style="border:none 0px; margin:0px; padding:0px; border-color:#7f99ff;" noresize frameborder="0" border="0">';
src += '<frame name="XREFMAIN" scrolling="yes" onresize="window.XREFMAIN.dragEnd()">';
src += '</frameset>';
src += '</html>';


		xrefWin.document.write(src);
		xrefWin.document.close();
		xrefWin.XREFCTL.location = "xref_ctl.html";
		xrefWin.XREFTOP.location = "xref_top.html";
		parent.TOP.xrefWin = xrefWin;
	}

		if (window.ActiveXObject) {
			styleMain = xmlLoad("Xml/config/suzuki_all.xsl");
			srcMain = xmlLoad(file);
			styleMain.selectSingleNode("//xsl:param[@name='UI_lang']").setAttribute("select","'" + UI_lang + "'");
			htmlMain = srcMain.transformNode(styleMain);
		}
		else if (window.XSLTProcessor) {
			if (!xsltProcessor_main)	{
				var xsltProcessor_main = new XSLTProcessor();
				var serializer_main = new XMLSerializer();
				
				var xDoc_main = document.implementation.createDocument("", "", null);
				xDoc_main.async = false;
				xDoc_main.load("Xml/config/suzuki_all.xsl");
				xsltProcessor_main.importStylesheet(xDoc_main);
				xsltProcessor_main.setParameter("", "UI_lang", UI_lang);
			}
			var srcMain = document.implementation.createDocument("", "", null);
			srcMain.async = false;
			srcMain.load(file);
			xslMainDoc = xsltProcessor_main.transformToDocument(srcMain);
			htmlMain = serializer_main.serializeToString(xslMainDoc);	
		}
	}


	if (htmlMain!="") {	
		if (parent.frames.length==4) {
			parent.TOP.xrefWin.XREFMAIN.document.write(htmlMain);
			parent.TOP.xrefWin.XREFMAIN.document.close();
			parent.TOP.xrefWin.focus()
		} else {
			parent.XREFMAIN.document.write(htmlMain);
			parent.XREFMAIN.document.close();
		}
	}
	
	// Add id to backlist
	var backlist;
	if (parent.frames.length==4) {
		backlist = parent.CTL.document.ctl.xref_backlist;
	} else {
		backlist = parent.opener.parent.CTL.document.ctl.xref_backlist;
	}
	backlist.value=id + "," + backlist.value;

// show required Tools/Materials
// 081022: Disabled (again) pending further instructions
//	if (file!="") {
//		showPreReqs(srcMain);
//	}
}

function xref_simple(id) {
aaaa="";
	if (id.length==13) {
		var file=id + ".xml";
		window.open(file,"","menubar=yes,toolbar=no,locationbar=no,statusbar=no,scrollbars=yes,width=820,height=640,resizable=yes");
	} else {
		var subid=id.substr(0,13);
		var current=document.anchors[0].name;
//alert(subid);
//alert(current);
		if (subid!=current) {
			if (id.indexOf("#")!=-1) {
				aaaa=id.substr(id.indexOf("#")+1);
			} else {
				aaaa=id;
			}
			var file=subid + ".xml";
			newWin=window.open(file,"","menubar=yes,toolbar=no,locationbar=no,statusbar=no,scrollbars=yes,width=820,height=640,resizable=yes");
		} else {
			movehash(id);
		}
	}
}

function movehash(hashid) {
//alert(hashid);
//	parent.MAIN.document.location.hash = hashid;
	
	if (parent.frames.length!=4) {
		var obj_target=document.getElementById(hashid);
	} else {
		var obj_target=parent.MAIN.document.getElementById(hashid);
	}
	obj_target.scrollIntoView();
}

function jumpToAnchor() {
	if (parent.frames.length!=4) {
//		alert("Jump: " + opener.aaaa);
		var obj_target=document.getElementById(parent.opener.aaaa);
		if (obj_target!=null) {
			obj_target.scrollIntoView();
		}
		parent.opener.aaaa="";
//		parent.focus();
	}
}

function expandImage(path,gtype) {
//	alert(path);
// set window features
	if (gtype=="swf") {
		var feats="menubar=yes,toolbar=no,locationbar=no,statusbar=no,scrollbars=no,width=600,height=600,resizable=yes";
	} else {
		var feats="menubar=yes,toolbar=no,locationbar=no,statusbar=no,scrollbars=yes,width=600,height=600,resizable=yes";
	}
// open new image window
		var imgWin=window.open("","ImageWindow",feats);
		imgWin.moveTo(0, 0);
		imgWin.resizeTo(screen.availWidth, screen.availHeight);

src = '<html>';
src += '<head><title>Expand Image Window</title><meta http-equiv="Content-Type" content="text/html; charset=utf-8"/></head>';
src += '<body>';
	if (gtype=="swf") {
src += '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" height="100%" width="100%"><param name="movie" value="' + path + '">';
src += '<param name="quality" value="high">'
src += '<embed src="' + path + '" quality="high" type="application/x-shockwave-flash" height="100%" width="100%"></embed></object>';
		
	} else {
		src += '<img src="' + path + '" width="100%">';
	}
src += '</body>';
src += '</html>';


		imgWin.document.write(src);
		imgWin.document.close();
		imgWin.focus();
}

function markSie(id,back) {
	var backlist = parent.CTL.document.ctl.backlist;
	var fwdlist = parent.CTL.document.ctl.fwdlist;

	if (id.length==10) {
		expand('aa');
	}

	if (id.length==13) {

	// Check to see if target Sie div has been loaded
		objBlock=parent.NAVI.document.getElementById("blk" + id.substr(6,2));
		if (objBlock.getElementsByTagName("div").length==0) {
			objBlock.innerHTML=parent.TOP.getInnerNaviHtml(id.substr(6,2));
		}

		if (id.substr(6,2)=="00") {
			expand("z");
		} else {
			expand(id.substr(6,1));
		}
		expand(id.substr(6,2));
		if (id.substr(8,1)!="0") {
			expand(id.substr(6,3));
		}
		expand(id.substr(6,4));
	}
	var target="sie" + id;
	if (back=="1") {
		var prev="sie" + fwdlist.value.substr(0,fwdlist.value.indexOf(','));
	} else if (back=="2") {
		var prev="sie" + backlist.value.substr(backlist.value.indexOf(',') + 1,backlist.value.indexOf(','));
	} else {
		var prev="sie" + backlist.value.substr(0,backlist.value.indexOf(','));
	}
	
	if (prev!="sie") {
		var obj_prev=parent.NAVI.document.getElementById(prev);
		if (obj_prev) {
			obj_prev.style.backgroundColor="#ffffff";
		}
	}
	var obj_target=parent.NAVI.document.getElementById(target);
	
	if (parent.CTL.document.ctl.mode.value=="navi_sym") {
		obj_target.style.background="url(Xml/icon/sie_bg_dtcsym.gif) repeat-y";
	}
	else if (parent.CTL.document.ctl.mode.value=="navi_dtc") {
		obj_target.style.background="url(Xml/icon/sie_bg_dtcsym.gif) repeat-y";
	} else {
		obj_target.style.background="url(Xml/icon/sie_bg.gif) repeat-y";
	}
	obj_target.style.backgroundColor="#ffcc00";
	
}


function overDiv(obj) { 
	obj.style.color="#990033";
}

function outDiv(obj) { 
	obj.style.color="#0033ff";
}


function btnPrevsie() { 
	if (parent.CTL.document.ctl.mode.value == "navi" || parent.CTL.document.ctl.mode.value == "navi_dtc" || parent.CTL.document.ctl.mode.value == "navi_sym") {
		var current = parent.CTL.document.ctl.current.value;
		var i = 0
		if (current != "0") {
			while (parent.NAVI.arrSieList[i] != current) {
				i++
			}
			if (i > 0) {
				id = parent.NAVI.arrSieList[i-1];
			} else {
				id = parent.NAVI.arrSieList[parent.NAVI.arrSieList.length - 1];
			}
		} else {
			id = parent.NAVI.arrSieList[parent.NAVI.arrSieList.length - 1];
		}
		if (id!="") {
			loadSIE(id,null)
		}
	} else {
		alert(parent.CTL.document.ctl.err1.value);
	}
}

function btnNextsie() { 
	if (parent.CTL.document.ctl.mode.value == "navi" || parent.CTL.document.ctl.mode.value == "navi_dtc" || parent.CTL.document.ctl.mode.value == "navi_sym") {
		var current = parent.CTL.document.ctl.current.value;
		var i = 0
		if (current != "0") {
			while (parent.NAVI.arrSieList[i] != current) {
				i++
			}
			if (i < parent.NAVI.arrSieList.length - 1) {
				id = parent.NAVI.arrSieList[i+1];
			} else {
				id = parent.NAVI.arrSieList[0];
			}
		} else {
			id = parent.NAVI.arrSieList[0];
		}
		if (id!="") {
			loadSIE(id,null)
		}
	} else {
		alert(parent.CTL.document.ctl.err1.value);
	}
}

function btnUndo() { 
	if (parent.CTL.document.ctl.mode.value == "search" || parent.CTL.document.ctl.mode.value == "search_dtc" || parent.CTL.document.ctl.mode.value == "search_sym") {
		alert(parent.CTL.document.ctl.err1.value);
		return;
	}
	var backlist = parent.CTL.document.ctl.backlist;
	var fwdlist = parent.CTL.document.ctl.fwdlist;
	
//	alert(parent.CTL.document.ctl.backlist.value);

	var current=backlist.value.substr(0,backlist.value.indexOf(','));
	var history=backlist.value.substr(backlist.value.indexOf(',') + 1);
	if (history!="0") {
		fwdlist.value=backlist.value.substr(0,backlist.value.indexOf(',')) + "," + fwdlist.value;
		backlist.value=history;
		var id=history.substr(0,history.indexOf(','));
		if (id!="") {
			loadSIE(id,'1')
		}
	}
}

function btnXrefUndo() { 
aaaa="";
file="";
htmlMain="";
	var backlist = parent.opener.parent.CTL.document.ctl.xref_backlist;
	var history = backlist.value.substr(backlist.value.indexOf(',') + 1);

	if (history!="0") {
		var id=history.substr(0,history.indexOf(','));
		backlist.value = history;

		if (id!=0) {
			if (id.length==13) {
				var file="../" + id + ".xml";
			} else {
				var file="../" + id.substr(0,13) + ".xml";
				parent.opener.aaaa=id;
			}
		}
	} else {
		// alert("last link. closing window.");
		btnClose();
	}

	if (file!="") {
		UI_lang = parent.opener.parent.CTL.document.ctl.lang.value;
		if (window.ActiveXObject) {
			styleMain = xmlLoad("Xml/config/suzuki_all.xsl");
			srcMain = xmlLoad(file);
			styleMain.selectSingleNode("//xsl:param[@name='UI_lang']").setAttribute("select","'" + UI_lang + "'");
			htmlMain = srcMain.transformNode(styleMain);
		}
		else if (window.XSLTProcessor) {
			if (!xsltProcessor_main)	{
				var xsltProcessor_main = new XSLTProcessor();
				var serializer_main = new XMLSerializer();
				
				var xDoc_main = document.implementation.createDocument("", "", null);
				xDoc_main.async = false;
				xDoc_main.load("Xml/config/suzuki_all.xsl");
				xsltProcessor_main.importStylesheet(xDoc_main);
				xsltProcessor_main.setParameter("", "UI_lang", UI_lang);
			}
			var srcMain = document.implementation.createDocument("", "", null);
			srcMain.async = false;
			srcMain.load(file);
			xslMainDoc = xsltProcessor_main.transformToDocument(srcMain);
			htmlMain = serializer_main.serializeToString(xslMainDoc);	
		}
	}
	
	if (htmlMain!="") {	
		parent.XREFMAIN.document.write(htmlMain);
		parent.XREFMAIN.document.close();
	}
}

function btnPrint() { 
	parent.MAIN.focus();

	fixPrintImgWidth();
	
	parent.MAIN.print();

	alert("Reset image size.");
	
	parent.MAIN.focus();
	fixImgWidth();
}

function btnXrefPrint() { 
	parent.XREFMAIN.focus();

	fixPrintImgWidth();

	parent.XREFMAIN.print();
	
	alert("Reset image size.");

	parent.XREFMAIN.focus();
	fixImgWidth();
}

function btnToTop() { 
	parent.location.href = "../index.html";
}

function btnClose() { 
parent.opener.parent.CTL.document.ctl.xrefwin.value='off';
parent.opener.parent.CTL.document.ctl.xref_backlist.value="0";
parent.close();
}

function closeXrefWin() { 
parent.opener.parent.CTL.document.ctl.xrefwin.value='off';
parent.opener.parent.CTL.document.ctl.xref_backlist.value="0";
}

function btnHelp() { 
	if (parent.XREFCTL) {
		var modelName = parent.opener.parent.CTL.document.ctl.modelname.value;
	} else {
		var modelName = parent.CTL.document.ctl.modelname.value;
	}
	
	if (modelName!="empty") {
		var langCode = modelName.substr(0,1);
		var helpPath = "Xml/guide/guide1" + langCode + ".pdf";
		helpWin = window.open(helpPath,"","menubar=yes,toolbar=no,locationbar=no,statusbar=no,scrollbars=yes,width=820,height=640,resizable=yes");
	} else {
		alert("Error: Manual ID not set!");
	}
}

function openManual(num) { 
	var item = num.value;
	var path = "Xml/" + item + "/index.html";
	
	num.options[0].selected = true;
	
	if (item != 0) {
		window.open(path, item);
	}
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


function fixImgWidth() {
	if (parent.frames.length==4) {
		var swfs = parent.MAIN.document.getElementsByTagName("object");
	} else {
		var swfs = parent.XREFMAIN.document.getElementsByTagName("object");
	}

	for (i=0;i<swfs.length;i++) {
		if (swfs[i].parentNode.className=="w100pc") {
//Get max width from width of parent div
			var maxWidth = swfs[i].parentNode.offsetWidth;
			var xfactor = maxWidth / 600;

			swfs[i].width=maxWidth;
			swfs[i].height=parseInt(swfs[i].height) * xfactor;
// set dimensions for embed tag
			swfs[i].lastChild.width=maxWidth;
			swfs[i].lastChild.height=swfs[i].height;
			
		} else if (parseInt(swfs[i].width)==600) {
//Set classname of parent for future reference (w600)
			swfs[i].parentNode.className = "w600";
//Get max width from width of parent div
			var maxWidth = swfs[i].parentNode.offsetWidth;
			var xfactor = maxWidth / 600;

			swfs[i].width=maxWidth;
			swfs[i].height=parseInt(swfs[i].height) * xfactor;
// set dimensions for embed tag
			swfs[i].lastChild.width=maxWidth;
			swfs[i].lastChild.height=swfs[i].height;
			
		} else if (swfs[i].width=="100%") {
//Set classname of parent for future reference (w100pc)
			swfs[i].parentNode.className = "w100pc";
			var maxWidth = swfs[i].parentNode.offsetWidth;
			swfs[i].width=maxWidth;
// set dimensions for embed tag
			swfs[i].lastChild.width=maxWidth;
			
		} else {
//Set classname of parent for future reference (w+originalwidth+h+originalheight)
			swfs[i].parentNode.className = "w" + swfs[i].width + "h" + swfs[i].height;
			var maxWidth = swfs[i].parentNode.offsetWidth;
			if (parseInt(swfs[i].width) * 1.25 <= maxWidth) {
				swfs[i].width=parseInt(swfs[i].width) * 1.25;
				swfs[i].height=parseInt(swfs[i].height) * 1.25;
	// set dimensions for embed tag
				swfs[i].lastChild.width=swfs[i].width;
				swfs[i].lastChild.height=swfs[i].height;
			} else {
				var xfactor = maxWidth / parseInt(swfs[i].width);
				swfs[i].width=maxWidth;
				swfs[i].height=parseInt(swfs[i].height) * xfactor;
	// set dimensions for embed tag
				swfs[i].lastChild.width=maxWidth;
				swfs[i].lastChild.height=swfs[i].height;
			}
		}
	}
}

// call custom onresizeend event handler
function dragEnd() {
  if(window.ActiveXObject) {
	  window.resizeEnd = (window.resizeEnd ==null)?(new Object()):window.resizeEnd;
	  clearTimeout(window.resizeEnd);
	  window.resizeEnd = setTimeout(resizeImgWidth,300);
  }
  else {
  	resizeImgWidth();
  }
}

function resizeImgWidth() {
	var swfs = document.getElementsByTagName("object");
	
	for (i=0;i<swfs.length;i++) {
//Get max width from width of Sie title div
			var maxWidth = document.getElementsByTagName('div')[0].getElementsByTagName('div')[0].offsetWidth;
//Get width of parent div
			var parentWidth = swfs[i].parentNode.offsetWidth;

		if (parseInt(swfs[i].width)>=600 && (swfs[i].parentNode.className=="w600" || swfs[i].parentNode.className=="w100pc")) {

			maxWidth = (maxWidth < 600) ? 600 : maxWidth;

			var xfactor = maxWidth / parseInt(swfs[i].width);

			swfs[i].width=maxWidth;
			swfs[i].height=parseInt(swfs[i].height) * xfactor;
// set dimensions for embed tag
			swfs[i].lastChild.width=maxWidth;
			swfs[i].lastChild.height=swfs[i].height;
			
		} else {
			var maxWidth = swfs[i].parentNode.offsetWidth;
			var dims = swfs[i].parentNode.className;
			var origW = dims.substr(1,dims.indexOf("h") - 1);
			var origH = dims.substr(dims.indexOf("h") + 1);
			if (origW * 1.25 <= maxWidth) {
				swfs[i].width=origW * 1.25;
				swfs[i].height=origH * 1.25;
	// set dimensions for embed tag
				swfs[i].lastChild.width=swfs[i].width;
				swfs[i].lastChild.height=swfs[i].height;
			} else {
				var xfactor = maxWidth / origW;
				swfs[i].width=maxWidth;
				swfs[i].height=origH * xfactor;
	// set dimensions for embed tag
				swfs[i].lastChild.width=maxWidth;
				swfs[i].lastChild.height=swfs[i].height;
			}
		}
	}
}

function fixPrintImgWidth() {
	
	if (parent.frames.length==4) {
		var swfs = parent.MAIN.document.getElementsByTagName("object");
	} else {
		var swfs = parent.XREFMAIN.document.getElementsByTagName("object");
	}

	for (i=0;i<swfs.length;i++) {
		if (parseInt(swfs[i].width)>=600 && (swfs[i].parentNode.className=="w600" || swfs[i].parentNode.className=="w100pc")) {

			var xfactor = 600 / parseInt(swfs[i].width);

			swfs[i].width=600;
			swfs[i].height=parseInt(swfs[i].height) * xfactor;
// set dimensions for embed tag
			swfs[i].lastChild.width=600;
			swfs[i].lastChild.height=swfs[i].height;
			
		} else {
			var dims = swfs[i].parentNode.className;
			var origW = dims.substr(1,dims.indexOf("h") - 1);
			var origH = dims.substr(dims.indexOf("h") + 1);
			
			swfs[i].width=origW;
			swfs[i].height=origH;
// set dimensions for embed tag
			swfs[i].lastChild.width=origW;
			swfs[i].lastChild.height=origH;
		}
	}
}

function showTool(tnum,ttop) {
if (!UI_lang) {
	UI_lang = parent.CTL.document.ctl.lang.value;
}
var listPath = "Xml/image/TOOL/Tool_" + UI_lang + ".xml";
htmlMain="";

	if (parent.frames.length==4) {
		var tb = parent.TOP.strTB;
		var dc = parent.TOP.strDC;
	} else {
		var tb = parent.opener.parent.TOP.strTB;
		var dc = parent.opener.parent.TOP.strDC;
	}

	if (!ttop) {
		ttop = "TT";
	} 

		var toolWin=window.open("","ToolWindow","menubar=yes,toolbar=no,locationbar=no,statusbar=no,scrollbars=yes,width=440,height=400,resizable=yes");


		if (window.ActiveXObject) {
			styleMain = xmlLoad("Xml/config/toollist.xsl");
			srcMain = xmlLoad(listPath);
			styleMain.selectSingleNode("//xsl:param[@name='tgtTool']").setAttribute("select","'" + tnum + "'");
			styleMain.selectSingleNode("//xsl:param[@name='tb']").setAttribute("select","'" + tb + "'");
			styleMain.selectSingleNode("//xsl:param[@name='dc']").setAttribute("select","'" + dc + "'");
			styleMain.selectSingleNode("//xsl:param[@name='ttop']").setAttribute("select","'" + ttop + "'");
			htmlMain = srcMain.transformNode(styleMain);
		}
		else if (window.XSLTProcessor) {
			if (!xsltProcessor_main)	{
				var xsltProcessor_main = new XSLTProcessor();
				var serializer_main = new XMLSerializer();
				
				var xDoc_main = document.implementation.createDocument("", "", null);
				xDoc_main.async = false;
				xDoc_main.load("Xml/config/toollist.xsl");
				xsltProcessor_main.importStylesheet(xDoc_main);
				xsltProcessor_main.setParameter("", "tgtTool", tnum);
				xsltProcessor_main.setParameter("", "tb", tb);
				xsltProcessor_main.setParameter("", "dc", dc);
				xsltProcessor_main.setParameter("", "ttop", ttop);
			}
			var srcMain = document.implementation.createDocument("", "", null);
			srcMain.async = false;
			srcMain.load(listPath);
			xslMainDoc = xsltProcessor_main.transformToDocument(srcMain);
			htmlMain = serializer_main.serializeToString(xslMainDoc);	
		}


	if (htmlMain!="") {	
		toolWin.document.write(htmlMain);
		toolWin.document.close();
		toolWin.focus()
	}
	
}

function showTB(path) {
//	alert(path);
// set window features
	var feats="menubar=yes,toolbar=no,locationbar=no,statusbar=no,scrollbars=yes,width=600,height=600,resizable=yes";
// open new image window
		var imgWin=window.open("","ToolBoardWindow",feats);
//		imgWin.moveTo(0, 0);
//		imgWin.resizeTo(screen.availWidth, screen.availHeight);

src = '<html>';
src += '<head><title>Tool Board Window</title><meta http-equiv="Content-Type" content="text/html; charset=utf-8"/></head>';
src += '<body>';
src += '<img src="' + path + '" width="100%">';
src += '</body>';
src += '</html>';

		imgWin.document.write(src);
		imgWin.document.close();
		imgWin.focus();
}

function showPreReqs(srcMain) {
// check for tool&material info
	if (srcMain.getElementsByTagName("servicetoolitem").length==0 && srcMain.getElementsByTagName("materialitem").length==0) {
	return;
	}
		
var UI_lang = parent.CTL.document.ctl.lang.value;
htmlMain="";

		var preWin=window.open("","PreReqsWindow","menubar=yes,toolbar=no,locationbar=no,statusbar=no,scrollbars=yes,width=560,height=400,resizable=yes");

src = '<html>';
src += '<head><title>PreReqs Window</title></head>';
src += '<frameset id="frames_rows" rows="45,*" style="border:none; margin:0px; padding:0px;" frameborder="1" border="1" framespacing="0" bordercolor="#7f99ff">';
src += '<frame name="PRETOP" scrolling="no" style="border:none 0px; margin:0px; padding:0px; border-color:#7f99ff;" noresize frameborder="0" border="0">';
src += '<frame name="PREMAIN" scrolling="yes">';
src += '</frameset>';
src += '</html>';


		preWin.document.write(src);
		preWin.document.close();
		preWin.PRETOP.location = "prereqs_top.html";
		parent.TOP.preWin = preWin;


		if (window.ActiveXObject) {
			stylePre = xmlLoad("Xml/config/prereqs.xsl");
			stylePre.selectSingleNode("//xsl:param[@name='UI_lang']").setAttribute("select","'" + UI_lang + "'");
			htmlMain = srcMain.transformNode(stylePre);
		}
		else if (window.XSLTProcessor) {
			if (!xsltProcessor_main)	{
				var xsltProcessor_main = new XSLTProcessor();
				var serializer_main = new XMLSerializer();
				
				var xDoc_main = document.implementation.createDocument("", "", null);
				xDoc_main.async = false;
				xDoc_main.load("Xml/config/prereqs.xsl");
				xsltProcessor_main.importStylesheet(xDoc_main);
				xsltProcessor_main.setParameter("", "UI_lang", UI_lang);
			}
			xslMainDoc = xsltProcessor_main.transformToDocument(srcMain);
			htmlMain = serializer_main.serializeToString(xslMainDoc);	
		}


	if (htmlMain!="") {	
		preWin.PREMAIN.document.write(htmlMain);
		preWin.PREMAIN.document.close();
		preWin.focus()
	}
	
}


