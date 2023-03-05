/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgHeaderParser.idl
 */

module mozilla.dxpcom.nsIMsgHeaderParserD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgHeaderParser;


public import mozilla.dxpcom.nsIMsgHeaderParserD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsrootidl;
public import mozilla.dxpcom.nsrootidlD;

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;


/* starting wrapper class:    nsIMsgHeaderParser */
class nsIMsgHeaderParserD : public nsISupportsD {

  static const nsIID IID = NS_IMSGHEADERPARSER_IID;


  alias nsIMsgHeaderParser InnerType;

  this(nsIMsgHeaderParser intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgHeaderParser opCast() {
    return inner;
  }

  void opAssign(nsIMsgHeaderParser value) {
    inner = value;
  }

  /* void parseHeadersWithArray (in wstring aLine, [array, size_is (count)] out wstring aEmailAddresses, [array, size_is (count)] out wstring aNames, [array, size_is (count)] out wstring aFullNames, [retval] out unsigned long count); */
  void ParseHeadersWithArray(PRUnichar*aLine, out PRUnichar**aEmailAddresses, out PRUnichar**aNames, out PRUnichar**aFullNames, out PRUint32 count){
    nsresult __result = inner.ParseHeadersWithArray(aLine, &aEmailAddresses, &aNames, &aFullNames, &count);
    CheckException(__result);
  }

  /* [noscript] void parseHeaderAddresses (in string charset, in string line, out string names, out string addresses, out PRUint32 numAddresses); */
  void ParseHeaderAddresses(char*charset, char*line, out char*names, out char*addresses, out PRUint32 numAddresses){
    nsresult __result = inner.ParseHeaderAddresses(charset, line, &names, &addresses, &numAddresses);
    CheckException(__result);
  }

  /* string extractHeaderAddressMailboxes (in string charset, in string line); */
  char* ExtractHeaderAddressMailboxes(char*charset, char*line){
    char* _retval;
    nsresult __result = inner.ExtractHeaderAddressMailboxes(charset, line, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] void extractHeaderAddressNames (in string charset, in string line, out string userNames); */
  void ExtractHeaderAddressNames(char*charset, char*line, out char*userNames){
    nsresult __result = inner.ExtractHeaderAddressNames(charset, line, &userNames);
    CheckException(__result);
  }

  /* [noscript] void extractHeaderAddressName (in string charset, in string line, out string name); */
  void ExtractHeaderAddressName(char*charset, char*line, out char*name){
    nsresult __result = inner.ExtractHeaderAddressName(charset, line, &name);
    CheckException(__result);
  }

  /* [noscript] void reformatHeaderAddresses (in string charset, in string line, out string reformattedAddress); */
  void ReformatHeaderAddresses(char*charset, char*line, out char*reformattedAddress){
    nsresult __result = inner.ReformatHeaderAddresses(charset, line, &reformattedAddress);
    CheckException(__result);
  }

  /* [noscript] void removeDuplicateAddresses (in string charset, in string addrs, in string other_addrs, in PRBool removeAliasesToMe, out string newAddress); */
  void RemoveDuplicateAddresses(char*charset, char*addrs, char*other_addrs, PRBool removeAliasesToMe, out char*newAddress){
    nsresult __result = inner.RemoveDuplicateAddresses(charset, addrs, other_addrs, removeAliasesToMe, &newAddress);
    CheckException(__result);
  }

  /* [noscript] string makeFullAddress (in string charset, in string name, in string addr); */
  char* MakeFullAddress(char*charset, char*name, char*addr){
    char* _retval;
    nsresult __result = inner.MakeFullAddress(charset, name, addr, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* wstring makeFullAddressWString (in wstring name, in wstring addr); */
  PRUnichar* MakeFullAddressWString(PRUnichar*name, PRUnichar*addr){
    PRUnichar* _retval;
    nsresult __result = inner.MakeFullAddressWString(name, addr, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] string unquotePhraseOrAddr (in string line, in boolean preserveIntegrity); */
  char* UnquotePhraseOrAddr(char*line, PRBool preserveIntegrity){
    char* _retval;
    nsresult __result = inner.UnquotePhraseOrAddr(line, preserveIntegrity, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* wstring unquotePhraseOrAddrWString (in wstring line, in boolean preserveIntegrity); */
  PRUnichar* UnquotePhraseOrAddrWString(PRUnichar*line, PRBool preserveIntegrity){
    PRUnichar* _retval;
    nsresult __result = inner.UnquotePhraseOrAddrWString(line, preserveIntegrity, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* wstring reformatUnquotedAddresses (in wstring line); */
  PRUnichar* ReformatUnquotedAddresses(PRUnichar*line){
    PRUnichar* _retval;
    nsresult __result = inner.ReformatUnquotedAddresses(line, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIMsgHeaderParser inner;

}

