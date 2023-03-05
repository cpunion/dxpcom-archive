/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMimeHeaders.idl
 */

module mozilla.xpcom.nsIMimeHeaders;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsrootidl;


/* starting interface:    nsIMimeHeaders */
const char[] NS_IMIMEHEADERS_IID_STR = "13e16676-6648-11d3-a72f-0060b0eb39b5";

const nsIID NS_IMIMEHEADERS_IID= 
  {0x13e16676, 0x6648, 0x11d3, 
    [ 0xa7, 0x2f, 0x00, 0x60, 0xb0, 0xeb, 0x39, 0xb5 ]};

extern(Windows)
interface nsIMimeHeaders : nsISupports {
  static const char[] IID_STR = NS_IMIMEHEADERS_IID_STR;
  static const nsIID IID = NS_IMIMEHEADERS_IID;

  /* void initialize ([const] in string allHeaders, in long allHeadersSize); */
  nsresult Initialize(char *allHeaders, PRInt32 allHeadersSize);

  /* string extractHeader ([const] in string headerName, in boolean getAllOfThem); */
  nsresult ExtractHeader(char *headerName, PRBool getAllOfThem, char **_retval);

  /* readonly attribute string allHeaders; */
  nsresult GetAllHeaders(char * *aAllHeaders);

}

