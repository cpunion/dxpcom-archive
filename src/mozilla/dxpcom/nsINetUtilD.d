/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINetUtil.idl
 */

module mozilla.dxpcom.nsINetUtilD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsINetUtil;


public import mozilla.dxpcom.nsINetUtilD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsINetUtil */
/**
 * nsINetUtil provides various network-related utility methods.
 */
class nsINetUtilD : public nsISupportsD {

  static const nsIID IID = NS_INETUTIL_IID;


  alias nsINetUtil InnerType;

  this(nsINetUtil intr){
    super(intr);
    this.inner = intr;
  }

  nsINetUtil opCast() {
    return inner;
  }

  void opAssign(nsINetUtil value) {
    inner = value;
  }

  /**
   * Parse a content-type header and return the content type and
   * charset (if any).
   *
   * @param aTypeHeader the header string to parse
   * @param [out] aCharset the charset parameter specified in the
   *              header, if any.
   * @param [out] aHadCharset whether a charset was explicitly specified.
   * @return the MIME type specified in the header, in lower-case.
   */
  /* AUTF8String parseContentType (in AUTF8String aTypeHeader, out AUTF8String aCharset, out boolean aHadCharset); */
  char[] ParseContentType(char[] aTypeHeader, char[] aCharset, out PRBool aHadCharset){
    scope auto _aTypeHeader = new ACString(aTypeHeader);
    scope auto _aCharset = new ACString;
    scope auto _retval = new ACString;
    nsresult __result = inner.ParseContentType(cast(nsACString*)_aTypeHeader, cast(nsACString*)_aCharset, &aHadCharset, cast(nsACString*)_retval);
    CheckException(__result);
    aCharset = _aCharset.GetString();
    return _retval.GetString();
  }

private:
  nsINetUtil inner;

}

