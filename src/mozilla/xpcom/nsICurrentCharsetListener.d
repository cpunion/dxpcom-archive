/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICurrentCharsetListener.idl
 */

module mozilla.xpcom.nsICurrentCharsetListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsICurrentCharsetListener */
const char[] NS_ICURRENTCHARSETLISTENER_IID_STR = "cf9428c1-df50-11d3-9d0c-0050040007b2";

const nsIID NS_ICURRENTCHARSETLISTENER_IID= 
  {0xcf9428c1, 0xdf50, 0x11d3, 
    [ 0x9d, 0x0c, 0x00, 0x50, 0x04, 0x00, 0x07, 0xb2 ]};

extern(Windows)
interface nsICurrentCharsetListener : nsISupports {
  static const char[] IID_STR = NS_ICURRENTCHARSETLISTENER_IID_STR;
  static const nsIID IID = NS_ICURRENTCHARSETLISTENER_IID;

  /* void SetCurrentCharset (in wstring charset); */
  nsresult SetCurrentCharset(PRUnichar *charset);

  /* void SetCurrentMailCharset (in wstring charset); */
  nsresult SetCurrentMailCharset(PRUnichar *charset);

  /* void SetCurrentComposerCharset (in wstring charset); */
  nsresult SetCurrentComposerCharset(PRUnichar *charset);

}

