/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMimeConverter.idl
 */

module mozilla.xpcom.nsIMimeConverter;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIMimeConverter */
const char[] NS_IMIMECONVERTER_IID_STR = "59b73615-2285-4d88-a31c-1abfe4773f4f";

const nsIID NS_IMIMECONVERTER_IID= 
  {0x59b73615, 0x2285, 0x4d88, 
    [ 0xa3, 0x1c, 0x1a, 0xbf, 0xe4, 0x77, 0x3f, 0x4f ]};

extern(Windows)
interface nsIMimeConverter : nsISupports {
  static const char[] IID_STR = NS_IMIMECONVERTER_IID_STR;
  static const nsIID IID = NS_IMIMECONVERTER_IID;

  /* string encodeMimePartIIStr (in string header, in boolean structured, in string mailCharset, in long fieldnamelen, in long encodedWordSize); */
  nsresult EncodeMimePartIIStr(char *header, PRBool structured, char *mailCharset, PRInt32 fieldnamelen, PRInt32 encodedWordSize, char **_retval);

  /* string encodeMimePartIIStr_UTF8 (in string header, in boolean structured, in string mailCharset, in long fieldnamelen, in long encodedWordSize); */
  nsresult EncodeMimePartIIStr_UTF8(char *header, PRBool structured, char *mailCharset, PRInt32 fieldnamelen, PRInt32 encodedWordSize, char **_retval);

}

