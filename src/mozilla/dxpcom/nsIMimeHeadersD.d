/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMimeHeaders.idl
 */

module mozilla.dxpcom.nsIMimeHeadersD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMimeHeaders;


public import mozilla.dxpcom.nsIMimeHeadersD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsrootidl;
public import mozilla.dxpcom.nsrootidlD;


/* starting wrapper class:    nsIMimeHeaders */
class nsIMimeHeadersD : public nsISupportsD {

  static const nsIID IID = NS_IMIMEHEADERS_IID;


  alias nsIMimeHeaders InnerType;

  this(nsIMimeHeaders intr){
    super(intr);
    this.inner = intr;
  }

  nsIMimeHeaders opCast() {
    return inner;
  }

  void opAssign(nsIMimeHeaders value) {
    inner = value;
  }

  /* void initialize ([const] in string allHeaders, in long allHeadersSize); */
  void Initialize(char*allHeaders, PRInt32 allHeadersSize){
    nsresult __result = inner.Initialize(allHeaders, allHeadersSize);
    CheckException(__result);
  }

  /* string extractHeader ([const] in string headerName, in boolean getAllOfThem); */
  char* ExtractHeader(char*headerName, PRBool getAllOfThem){
    char* _retval;
    nsresult __result = inner.ExtractHeader(headerName, getAllOfThem, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* readonly attribute string allHeaders; */
  char* AllHeaders(){
    char* value;
    nsresult __result = inner.GetAllHeaders(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIMimeHeaders inner;

}

