/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIIDNService.idl
 */

module mozilla.dxpcom.nsIIDNServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIIDNService;


public import mozilla.dxpcom.nsIIDNServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIIDNService */
/**
 * nsIIDNService interface.
 *
 * IDN (Internationalized Domain Name) support. Provides facilities
 * for manipulating IDN hostnames according to the specification set
 * forth by the IETF.
 *
 * IDN effort:
 * http://www.ietf.org/html.characters/idn-charter.html
 * http://www.i-dns.net
 *
 * IDNA specification:
 * http://search.ietf.org/internet-drafts/draft-ietf-idn-idna-06.txt
 */
class nsIIDNServiceD : public nsISupportsD {

  static const nsIID IID = NS_IIDNSERVICE_IID;


  alias nsIIDNService InnerType;

  this(nsIIDNService intr){
    super(intr);
    this.inner = intr;
  }

  nsIIDNService opCast() {
    return inner;
  }

  void opAssign(nsIIDNService value) {
    inner = value;
  }

  /**
     * Prepares the input hostname according to IDNA ToASCII operation,
     * the input hostname is assumed to be UTF8-encoded.
     *
     * The current input is string, but this may change pending Bug 84186.
     */
  /* ACString convertUTF8toACE (in AUTF8String input); */
  char[] ConvertUTF8toACE(char[] input){
    scope auto _input = new ACString(input);
    scope auto _retval = new ACString;
    nsresult __result = inner.ConvertUTF8toACE(cast(nsACString*)_input, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
     * This is the ToUnicode operation as specified in the IDNA proposal,
     * with an additional step to encode the result in UTF-8.
     * It takes an ACE-encoded hostname and performs ToUnicode to it, then
     * encodes the resulting string into UTF8.
     */
  /* AUTF8String convertACEtoUTF8 (in ACString input); */
  char[] ConvertACEtoUTF8(char[] input){
    scope auto _input = new ACString(input);
    scope auto _retval = new ACString;
    nsresult __result = inner.ConvertACEtoUTF8(cast(nsACString*)_input, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
     * Checks if the input string is ACE encoded or not.
     */
  /* boolean isACE (in ACString input); */
  PRBool IsACE(char[] input){
    scope auto _input = new ACString(input);
    PRBool _retval;
    nsresult __result = inner.IsACE(cast(nsACString*)_input, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Performs the unicode normalization needed for hostnames in IDN,
     * for callers that want early normalization.
     */
  /* AUTF8String normalize (in AUTF8String input); */
  char[] Normalize(char[] input){
    scope auto _input = new ACString(input);
    scope auto _retval = new ACString;
    nsresult __result = inner.Normalize(cast(nsACString*)_input, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsIIDNService inner;

}

