/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPop3URL.idl
 */

module mozilla.xpcom.nsIPop3URL;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIPop3Sink;


/* starting interface:    nsIPop3URL */
const char[] NS_IPOP3URL_IID_STR = "73c043d0-b7e2-11d2-ab5c-00805f8ac968";

const nsIID NS_IPOP3URL_IID= 
  {0x73c043d0, 0xb7e2, 0x11d2, 
    [ 0xab, 0x5c, 0x00, 0x80, 0x5f, 0x8a, 0xc9, 0x68 ]};

extern(Windows)
interface nsIPop3URL : nsISupports {
  static const char[] IID_STR = NS_IPOP3URL_IID_STR;
  static const nsIID IID = NS_IPOP3URL_IID;

  /* attribute nsIPop3Sink pop3Sink; */
  nsresult GetPop3Sink(nsIPop3Sink  *aPop3Sink);
  nsresult SetPop3Sink(nsIPop3Sink  aPop3Sink);

  /* attribute string messageUri; */
  nsresult GetMessageUri(char * *aMessageUri);
  nsresult SetMessageUri(char * aMessageUri);

}

