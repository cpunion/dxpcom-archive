/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgHeaderParser.idl
 */

module mozilla.xpcom.nsIMsgHeaderParser;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */


/* starting interface:    nsIMsgHeaderParser */
const char[] NS_IMSGHEADERPARSER_IID_STR = "10a88a11-729e-11d2-804a-006008128c4e";

const nsIID NS_IMSGHEADERPARSER_IID= 
  {0x10a88a11, 0x729e, 0x11d2, 
    [ 0x80, 0x4a, 0x00, 0x60, 0x08, 0x12, 0x8c, 0x4e ]};

extern(Windows)
interface nsIMsgHeaderParser : nsISupports {
  static const char[] IID_STR = NS_IMSGHEADERPARSER_IID_STR;
  static const nsIID IID = NS_IMSGHEADERPARSER_IID;

  /* void parseHeadersWithArray (in wstring aLine, [array, size_is (count)] out wstring aEmailAddresses, [array, size_is (count)] out wstring aNames, [array, size_is (count)] out wstring aFullNames, [retval] out unsigned long count); */
  nsresult ParseHeadersWithArray(PRUnichar *aLine, PRUnichar ***aEmailAddresses, PRUnichar ***aNames, PRUnichar ***aFullNames, PRUint32 *count);

  /* [noscript] void parseHeaderAddresses (in string charset, in string line, out string names, out string addresses, out PRUint32 numAddresses); */
  nsresult ParseHeaderAddresses(char *charset, char *line, char **names, char **addresses, PRUint32 *numAddresses);

  /* string extractHeaderAddressMailboxes (in string charset, in string line); */
  nsresult ExtractHeaderAddressMailboxes(char *charset, char *line, char **_retval);

  /* [noscript] void extractHeaderAddressNames (in string charset, in string line, out string userNames); */
  nsresult ExtractHeaderAddressNames(char *charset, char *line, char **userNames);

  /* [noscript] void extractHeaderAddressName (in string charset, in string line, out string name); */
  nsresult ExtractHeaderAddressName(char *charset, char *line, char **name);

  /* [noscript] void reformatHeaderAddresses (in string charset, in string line, out string reformattedAddress); */
  nsresult ReformatHeaderAddresses(char *charset, char *line, char **reformattedAddress);

  /* [noscript] void removeDuplicateAddresses (in string charset, in string addrs, in string other_addrs, in PRBool removeAliasesToMe, out string newAddress); */
  nsresult RemoveDuplicateAddresses(char *charset, char *addrs, char *other_addrs, PRBool removeAliasesToMe, char **newAddress);

  /* [noscript] string makeFullAddress (in string charset, in string name, in string addr); */
  nsresult MakeFullAddress(char *charset, char *name, char *addr, char **_retval);

  /* wstring makeFullAddressWString (in wstring name, in wstring addr); */
  nsresult MakeFullAddressWString(PRUnichar *name, PRUnichar *addr, PRUnichar **_retval);

  /* [noscript] string unquotePhraseOrAddr (in string line, in boolean preserveIntegrity); */
  nsresult UnquotePhraseOrAddr(char *line, PRBool preserveIntegrity, char **_retval);

  /* wstring unquotePhraseOrAddrWString (in wstring line, in boolean preserveIntegrity); */
  nsresult UnquotePhraseOrAddrWString(PRUnichar *line, PRBool preserveIntegrity, PRUnichar **_retval);

  /* wstring reformatUnquotedAddresses (in wstring line); */
  nsresult ReformatUnquotedAddresses(PRUnichar *line, PRUnichar **_retval);

}

