/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrintProgressParams.idl
 */

module mozilla.xpcom.nsIPrintProgressParams;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIPrintProgressParams */
const char[] NS_IPRINTPROGRESSPARAMS_IID_STR = "ca89b55b-6faf-4051-9645-1c03ef5108f8";

const nsIID NS_IPRINTPROGRESSPARAMS_IID= 
  {0xca89b55b, 0x6faf, 0x4051, 
    [ 0x96, 0x45, 0x1c, 0x03, 0xef, 0x51, 0x08, 0xf8 ]};

extern(Windows)
interface nsIPrintProgressParams : nsISupports {
  static const char[] IID_STR = NS_IPRINTPROGRESSPARAMS_IID_STR;
  static const nsIID IID = NS_IPRINTPROGRESSPARAMS_IID;

  /* attribute wstring docTitle; */
  nsresult GetDocTitle(PRUnichar * *aDocTitle);
  nsresult SetDocTitle(PRUnichar * aDocTitle);

  /* attribute wstring docURL; */
  nsresult GetDocURL(PRUnichar * *aDocURL);
  nsresult SetDocURL(PRUnichar * aDocURL);

}

