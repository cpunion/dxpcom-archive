/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMimeConverter.idl
 */

module mozilla.dxpcom.nsIMimeConverterD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMimeConverter;


public import mozilla.dxpcom.nsIMimeConverterD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIMimeConverter */
class nsIMimeConverterD : public nsISupportsD {

  static const nsIID IID = NS_IMIMECONVERTER_IID;


  alias nsIMimeConverter InnerType;

  this(nsIMimeConverter intr){
    super(intr);
    this.inner = intr;
  }

  nsIMimeConverter opCast() {
    return inner;
  }

  void opAssign(nsIMimeConverter value) {
    inner = value;
  }

  /* string encodeMimePartIIStr (in string header, in boolean structured, in string mailCharset, in long fieldnamelen, in long encodedWordSize); */
  char* EncodeMimePartIIStr(char*header, PRBool structured, char*mailCharset, PRInt32 fieldnamelen, PRInt32 encodedWordSize){
    char* _retval;
    nsresult __result = inner.EncodeMimePartIIStr(header, structured, mailCharset, fieldnamelen, encodedWordSize, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* string encodeMimePartIIStr_UTF8 (in string header, in boolean structured, in string mailCharset, in long fieldnamelen, in long encodedWordSize); */
  char* EncodeMimePartIIStr_UTF8(char*header, PRBool structured, char*mailCharset, PRInt32 fieldnamelen, PRInt32 encodedWordSize){
    char* _retval;
    nsresult __result = inner.EncodeMimePartIIStr_UTF8(header, structured, mailCharset, fieldnamelen, encodedWordSize, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIMimeConverter inner;

}

