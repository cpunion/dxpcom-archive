/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISimpleMimeConverter.idl
 */

module mozilla.dxpcom.nsISimpleMimeConverterD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISimpleMimeConverter;


public import mozilla.dxpcom.nsISimpleMimeConverterD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsISimpleMimeConverter */
class nsISimpleMimeConverterD : public nsISupportsD {

  static const nsIID IID = NS_ISIMPLEMIMECONVERTER_IID;


  alias nsISimpleMimeConverter InnerType;

  this(nsISimpleMimeConverter intr){
    super(intr);
    this.inner = intr;
  }

  nsISimpleMimeConverter opCast() {
    return inner;
  }

  void opAssign(nsISimpleMimeConverter value) {
    inner = value;
  }

  /* attribute nsIURI uri; */
  nsIURID  Uri(){
    nsIURI value;
    nsresult __result = inner.GetUri(&value);
    CheckException(__result);
    return new nsIURID(value);
  }
  void Uri(nsIURID  aUri){
    nsIURI value;
    nsresult __result = inner.SetUri(value);
    CheckException(__result);
  }

  /* AUTF8String convertToHTML (in ACString contentType, in AUTF8String data); */
  char[] ConvertToHTML(char[] contentType, char[] data){
    scope auto _contentType = new ACString(contentType);
    scope auto _data = new ACString(data);
    scope auto _retval = new ACString;
    nsresult __result = inner.ConvertToHTML(cast(nsACString*)_contentType, cast(nsACString*)_data, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsISimpleMimeConverter inner;

}

