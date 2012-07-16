// DomValidation.js.
//<script>

var _val_agt=navigator.userAgent.toLowerCase();
var _val_is_major=parseInt(navigator.appVersion);
var _val_is_ie=((_val_agt.indexOf("msie")!=-1) && (_val_agt.indexOf("opera")==-1));
var _val_isNT=_val_agt.indexOf("windows nt")!=-1;
var _val_IE=(document.all);
var _val_IE4=(_val_is_ie && (_val_is_major==4) && (_val_agt.indexOf("msie 4")!=-1));
var _val_IE6=(_val_is_ie && (_val_agt.indexOf("msie 6.0")!=-1));
var _val_NS=(document.layers);
var _val_DOM=(document.getElementById);
var _val_isMac=(_val_agt.indexOf("Mac")==-1);
var _val_allString="document.";
_val_allString += (_val_IE)?"all.":(_val_DOM)?"getElementById(\"":"";
var _val_styleString=(_val_IE)?".style":(_val_DOM)?"\").style":"";
var _val_endAllString=(_val_DOM && !_val_IE)?"\")":"";
var _val_px=(_val_DOM)?"px":"";

var Page_DomValidationVer = "2";
var Page_IsValid = true;  
var Page_BlockSubmit = false;

function ValidatorUpdateDisplay(val) {
	//var prop = val.getAttribute("display");
	var prop = dom_getAttribute(val,"display");
	
	var style_str = "", style_prefix = "display: ";
		
    if (typeof(prop) == "string") {    
        if (prop == "None") {
            return;
        }
        if (prop == "Dynamic") {
			style_str = val.isvalid ? "none" : "inline";
            //val.setAttribute("style",style_prefix+style_str+"; ");
            val.style.display = style_str;
            return;
        }
    }
    val.style.visibility = val.isvalid ? "hidden" : "visible";
}

function ValidatorUpdateIsValid() {
    var i;
    for (i = 0; i < Page_Validators.length; i++) {
        if (!Page_Validators[i].isvalid) {
            Page_IsValid = false;
            Page_BlockSubmit = true;
            return;
        }
   }
   Page_IsValid = true;
}

function ValidatorHookupControl(control, val) {
    if (control != null)
    {
	   if (typeof(control.Validators) == "undefined") {
            control.Validators = new Array;
	        var ev = control.onchange;
	        var new_ev;
            if (typeof(ev) == "function" ) {            
                ev = ev.toString();
                //ev = ev.substring(ev.indexOf("{") + 1, ev.lastIndexOf("}"));
                //new_ev = ev.substring(ev.indexOf("{") + 1, ev.lastIndexOf("}"));
                new_ev = "if (Page_IsValid || Page_BlockSubmit) {" + ev.substring(ev.indexOf("{") + 1, ev.lastIndexOf("}")) + "}";
            }
            else {
                //ev = "";
                new_ev = "";
            }

//			if (new_ev != "") {
//				ev += "if (Page_IsValid || Page_BlockSubmit) {" + new_ev + "}";
				//ev += "if (true) {" + new_ev + "}";
//			}
            //var func = new Function("ValidatorOnChange('" + control.id + "'); " + ev);
            var func = new Function("ValidatorOnChange('" + control.id + "'); " + new_ev);
    //alert(control.id + " function is [" + func + "]");
	        control.onchange = func;
	    }
        control.Validators[control.Validators.length] = val;
    }
}

function ValidatorGetValue(id) {
    var control;
    //control = document.getElementById(id);
    control = dom_getElementByID(id);
    if (control == null)
		return "";

    if (typeof(control.value) == "string") {
        return control.value;
    }

    if (typeof(control.tagName) == "undefined" && typeof(control.length) == "number") {
        var j;
        for (j=0; j < control.length; j++) {
            var inner = control[j];
            if (typeof(inner.value) == "string" && (inner.type != "radio" || inner.status == true)) {
                return inner.value;
            }
        }
    }
}

function Page_ClientValidate() {
    var i,ctrl;
    for (i = 0; i < Page_Validators.length; i++) {
        if (typeof (Page_Validators[i]) === "undefined") continue;
        ValidatorValidate(Page_Validators[i]);
    }
    ValidatorUpdateIsValid();   
    ValidationSummaryOnSubmit(); 
    Page_BlockSubmit = !Page_IsValid;
    return Page_IsValid;
}

function ValidatorCommonOnSubmit() {
///<V1.200> - Support for CausesValidation property
   var retValue = !Page_BlockSubmit;

   if (!_val_NS) {   // If we are not in crappy old Netscape 4.7 then....
      if (_val_IE)  // If its Internet Explorer, set our return event value.
         event.returnValue = retValue;
   }
   
   Page_BlockSubmit = false;

   return retValue;
}

function ValidatorOnChange(controlID) {
    //var cont = document.getElementById(controlID);
    var cont = dom_getElementByID(controlID);
    var vals = cont.Validators;
    var i;
    for (i = 0; i < vals.length; i++) {
        ValidatorValidate(vals[i]);
    }
    ValidatorUpdateIsValid();    
    return Page_IsValid;
}

function ValidatorValidate(val) {   
    val.isvalid = true;
    if (val.enabled != false)    // V2.00 change
    {
        if (typeof(val.evalfunc) == "function") {
            val.isvalid = val.evalfunc(val); 
        }
    }
    ValidatorUpdateDisplay(val);
}

function ValidatorOnLoad() {
    if (typeof (Page_Validators) == "undefined") {
        alert("Page_Validators is undefined");
        return;
    }

    var i, val;
    for (i = 0; i < Page_Validators.length; i++) {

        val = Page_Validators[i];
        if (typeof (val) === "undefined") continue;
        //var evalFunction = val.getAttribute("evaluationfunction");
        var evalFunction = dom_getAttribute(val,"evaluationfunction");
        if (typeof(evalFunction) == "string") {
            eval("val.evalfunc = " + evalFunction + ";");
        }
        //var isValidAttribute = val.getAttribute("isvalid");
        var isValidAttribute = dom_getAttribute(val,"isvalid");
        if (typeof(isValidAttribute) == "string") {
            if (isValidAttribute == "False") {
                val.isvalid = false;                                
                Page_IsValid = false;
            } 
            else {
                val.isvalid = true;
            }
        } else {
            val.isvalid = true;
        }
        if (typeof(val.enabled) == "string") {
            val.enabled = (val.enabled != "False");
        }
        //var controlToValidate = val.getAttribute("controltovalidate");
        var controlToValidate = dom_getAttribute(val,"controltovalidate");
        if (typeof(controlToValidate) == "string") {
			ValidatorHookupControl(dom_getElementByID(controlToValidate), val);
            //ValidatorHookupControl(document.getElementById(controlToValidate), val);
        }
		//var controlhookup = val.getAttribute("controlhookup");
		var controlhookup = dom_getAttribute(val,"controlhookup");
		if (typeof(controlhookup) == "string") {
            if (controlhookup != "")    // V2.00 Change
            {
			    //ValidatorHookupControl(document.getElementById(controlhookup), val);
			    ValidatorHookupControl(dom_getElementByID(controlhookup), val);
			}
		}        
    }
    Page_ValidationActive = true;
    if (!Page_IsValid)
		ValidationSummaryOnSubmit();
		
	// IE4 hack test
    if (_val_IE4)
    {
		var ev = new Function("ValidationSummaryOnSubmit();");
		document.onreadystatechange=ev;
	}
	
}

function RegularExpressionValidatorEvaluateIsValid(val) {
    //var value = ValidatorGetValue(val.getAttribute("controltovalidate"));
    var value = ValidatorGetValue(dom_getAttribute(val, "controltovalidate"));
    if (value == "")
        return true;        
    //var rx = new RegExp(val.getAttribute("validationexpression"));
    var rx = new RegExp(dom_getAttribute(val, "validationexpression"));
    var matches = rx.exec(value);
    return (matches != null && value == matches[0]);
}

function ValidatorTrim(s) {
    //var m = s.match(/^\s*(.*\S)\s*$/);
    //return (m == null) ? "" : m[1];

    // change sent by Mathew A. Frank 11/05/2003 <V2.000> fix.
    return s.replace(/^\s+|\s+$/g, "");
}

function RequiredFieldValidatorEvaluateIsValid(val) {
    //return (ValidatorTrim(ValidatorGetValue(val.getAttribute("controltovalidate"))) != ValidatorTrim(val.getAttribute("initialvalue")));
    return (ValidatorTrim(ValidatorGetValue(dom_getAttribute(val, "controltovalidate"))) != ValidatorTrim(dom_getAttribute(val, "initialvalue")));
}


///////////////////////////////////// my stuff ////////////////////////////////////////////////////////////

function ValidatorCompare(operand1, operand2, operator, val) {
    //var dataType = val.type;
    //var dataType = val.getAttribute("type",false);
    var dataType = dom_getAttribute(val, "type");
    var op1, op2;
    if ((op1 = ValidatorConvert(operand1, dataType, val)) == null)
        return false;   
    if (operator == "DataTypeCheck")
        return true;
    if ((op2 = ValidatorConvert(operand2, dataType, val)) == null)
        return true;
    if (op2 == "")
		return true;
    switch (operator) {
        case "NotEqual":
            return (op1 != op2);
        case "GreaterThan":
            return (op1 > op2);
        case "GreaterThanEqual":
            return (op1 >= op2);
        case "LessThan":
            return (op1 < op2);
        case "LessThanEqual":
            return (op1 <= op2);
        default:
            return (op1 == op2);            
    }
}



function CompareValidatorEvaluateIsValid(val) {
    var ctrl = dom_getAttribute(val, "controltovalidate");
    if (null == ctrl)
        return true;
    var value = ValidatorGetValue(ctrl);
    if (ValidatorTrim(value).length == 0)
        return true;
    var compareTo = "";

    // V2.0 changes
    var hookupCtrl = dom_getAttribute(val, "controlhookup");
    var useCtrlToValidate = false;
    if (hookupCtrl != null)
    {
        if (typeof(hookupCtrl) == "string")
        {
		    if (hookupCtrl != "")
		        useCtrlToValidate = true;
        }
    }
    // End V2.00 changes
    
    if (!useCtrlToValidate) {  // V2.00 change
        var ctrl_literal = dom_getAttribute(val, "valuetocompare");
        if (typeof(ctrl_literal) == "string") {
            compareTo = ctrl_literal;  // V2.00 change
         }
    }
    else {
        compareTo = ValidatorGetValue(dom_getAttribute(val, "controlhookup"));
    }
    operator = dom_getAttribute(val, "operator");
    return ValidatorCompare(value, compareTo, operator, val);
}

function CustomValidatorEvaluateIsValid(val) {
    var value = "";
    //var ctrl = val.getAttribute("controltovalidate");
    var ctrl = dom_getAttribute(val, "controltovalidate");
    if (typeof(ctrl) == "string") {
		if (ctrl != "") {
			value = ValidatorGetValue(ctrl);
			if (value == "")
				return true;
        }
    }
    var valid = true;
    //var func_str = val.getAttribute("clientvalidationfunction");
    var func_str = dom_getAttribute(val, "clientvalidationfunction");
    if (typeof(func_str) == "string") {
        if (func_str != "") {
            eval("valid = (" + func_str + "(val, value) != false);");
        }
    }        
    return valid;
}

// Added for V2.0 changes - 27/1/2002 - Glav
function RangeValidatorEvaluateIsValid(val) {
	var value;    
    var ctrl = dom_getAttribute(val, "controltovalidate");
    if (typeof(ctrl) == "string") {
		if (ctrl != "") {
			value = ValidatorGetValue(ctrl);
			if (value == "")
				return true;
        }
    }

    var minval = dom_getAttribute(val,"minimumvalue");
    var maxval = dom_getAttribute(val,"maximumvalue");

	if (minval == null && maxval == null)
        return true;
    
    if (minval == "")
		minval = 0;
	if (maxval == "")
		maxval = 0;
	
    return ( (parseFloat(value) >= parseFloat(minval)) && (parseFloat(value) <= parseFloat(maxval)));
}

function ValidatorConvert(op, dataType, val) {
    function GetFullYear(year) {
        return (year + parseInt(val.century)) - ((year < val.cutoffyear) ? 0 : 100);
    }
    var num, cleanInput, m, exp;
    if (dataType == "Integer") {
        exp = /^\s*[-\+]?\d+\s*$/;
        if (op.match(exp) == null) 
            return null;
        num = parseInt(op, 10);
        return (isNaN(num) ? null : num);
    }
    else if(dataType == "Double") {
        exp = new RegExp("^\\s*([-\\+])?(\\d+)?(\\" + val.decimalchar + "(\\d+))?\\s*$");
        m = op.match(exp);
        if (m == null)
            return null;
        cleanInput = m[1] + (m[2].length>0 ? m[2] : "0") + "." + m[4];
        num = parseFloat(cleanInput);
        return (isNaN(num) ? null : num);            
    } 
    else if (dataType == "Currency") {
        exp = new RegExp("^\\s*([-\\+])?(((\\d+)\\" + val.groupchar + ")*)(\\d+)"
                        + ((val.digits > 0) ? "(\\" + val.decimalchar + "(\\d{1," + val.digits + "}))?" : "")
                        + "\\s*$");
        m = op.match(exp);
        if (m == null)
            return null;
        var intermed = m[2] + m[5] ;
        cleanInput = m[1] + intermed.replace(new RegExp("(\\" + val.groupchar + ")", "g"), "") + ((val.digits > 0) ? "." + m[7] : 0);
        num = parseFloat(cleanInput);
        return (isNaN(num) ? null : num);            
    }
    else if (dataType == "Date") {
        var yearFirstExp = new RegExp("^\\s*((\\d{4})|(\\d{2}))([-./])(\\d{1,2})\\4(\\d{1,2})\\s*$");
        m = op.match(yearFirstExp);
        var day, month, year;
        if (m != null && (m[2].length == 4 || val.dateorder == "ymd")) {
            day = m[6];
            month = m[5];
            year = (m[2].length == 4) ? m[2] : GetFullYear(parseInt(m[3], 10))
        }
        else {
            if (val.dateorder == "ymd"){
                return null;		
            }						
            var yearLastExp = new RegExp("^\\s*(\\d{1,2})([-./])(\\d{1,2})\\2((\\d{4})|(\\d{2}))\\s*$");
            m = op.match(yearLastExp);
            if (m == null) {
                return null;
            }
            if (val.dateorder == "mdy") {
                day = m[3];
                month = m[1];
            }
            else {
                day = m[1];
                month = m[3];
            }
            year = (m[5].length == 4) ? m[5] : GetFullYear(parseInt(m[6], 10))
        }
        month -= 1;
        var date = new Date(year, month, day);
        return (typeof(date) == "object" && year == date.getFullYear() && month == date.getMonth() && day == date.getDate()) ? date.valueOf() : null;
    }
    else {
        return op.toString();
    }
}


function ValidationSummaryOnSubmit() {
    if (typeof(Page_ValidationSummaries) == "undefined") 
        return;
    var summary, sums, s, summ_attrib, hdr_txt, err_msg;
    for (sums = 0; sums < Page_ValidationSummaries.length; sums++) {
        summary = Page_ValidationSummaries[sums];
        summary.style.display = "none";
        if (!Page_IsValid) {
			//summ_attrib = summary.getAttribute("showsummary",false);
			summ_attrib = dom_getAttribute(summary, "showsummary");
            if (summ_attrib != "False") {
                summary.style.display = "";
                if (typeof(summary.displaymode) != "string") {
                    summary.displaymode = "BulletList";
                }
                switch (summary.displaymode) {
                    case "List":
                        headerSep = "<br>";
                        first = "";
                        pre = "";
                        post = "<br>";
                        final_block = "";
                        break;
                        
                    case "BulletList":
                    default: 
                        headerSep = "";
                        first = "<ul>";
                        pre = "<li>";
                        post = "</li>";
                        final_block = "</ul>";
                        break;
                        
                    case "SingleParagraph":
                        headerSep = " ";
                        first = "";
                        pre = "";
                        post = " ";
                        final_block = "<br>";
                        break;
                }
                s = "";
                //hdr_txt = summary.getAttribute("headertext",false);
                hdr_txt = dom_getAttribute(summary, "headertext");
                if (typeof(hdr_txt) == "string") {
                    s += hdr_txt + headerSep;
                }
                var cnt=0;
                s += first;
                for (i=0; i<Page_Validators.length; i++) {
                    //err_msg = Page_Validators[i].getAttribute("errormessage",false);
                    err_msg = dom_getAttribute(Page_Validators[i], "errormessage");
                    if (!Page_Validators[i].isvalid && typeof(err_msg) == "string") {
						if (err_msg != "") {
							cnt++;
							s += pre + err_msg + post;
						}
                    }
                }   
                s += final_block;
            
		// IE4 work around
                if (_val_IE4)
                {
					if (document.readyState == "complete")
					{
						summary.innerHTML  = s;
						window.scrollTo(0,0);
						summary.style.visibility = "visible";
					}
				} else
				{
					summary.innerHTML = s; 
					window.scrollTo(0,0);
					summary.style.visibility = "visible";
				}
            }
            //summ_attrib = summary.getAttribute("showmessagebox",false);
            summ_attrib = dom_getAttribute(summary, "showmessagebox");
            
            if (summ_attrib == "True") {
                s = "";
                //hdr_txt = summary.getAttribute("headertext",false);
                hdr_txt = dom_getAttribute(summary, "headertext");
                if (typeof(hdr_txt) == "string") {
                    //s += hdr_txt + "<BR>";
                    s += hdr_txt + "\n";
                }
                for (i=0; i<Page_Validators.length; i++) {
					//err_msg = Page_Validators[i].getAttribute("errormessage",false);
					err_msg = dom_getAttribute(Page_Validators[i], "errormessage");
                    if (!Page_Validators[i].isvalid && typeof(err_msg) == "string") {
                        switch (summary.displaymode) {
                            case "List":
                                //s += err_msg + "<BR>";
                                s += err_msg + "\n";
                                break;
                                
                            case "BulletList":
                            default: 
                                //s += "  - " + err_msg + "<BR>";
                                s += "  - " + err_msg + "\n";
                                break;
                                
                            case "SingleParagraph":
                                s += err_msg + " ";
                                break;
                        }
                    }
                }
                //span = document.createElement("SPAN");
                //span.innerHTML = s;
                //s = span.getAttribute("innerText",false);
                alert(s);
            }
        }
    }
}

////////////////////////--- Funtions to work in IE4 and DOM ---/////////////////////////////////

function dom_getAttribute(control,attribute)
{
    var attrib;
    if (typeof (control) === "undefined")
        return null;
	if (_val_DOM)
		attrib = control.getAttribute(attribute, false);
	else
		attrib = eval(_val_allString + control.id + "." + attribute + _val_endAllString);
	return attrib;
}

function dom_getElementByID(id)
{
	var element = eval(_val_allString + id + _val_endAllString);
	return element;
}