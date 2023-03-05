/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDocumentStateListener.idl
 */

module mozilla.xpcom.nsIDocumentStateListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIDocumentStateListener */
const char[] NS_IDOCUMENTSTATELISTENER_IID_STR = "050cdc00-3b8e-11d3-9ce4-a458f454fcbc";

const nsIID NS_IDOCUMENTSTATELISTENER_IID= 
  {0x050cdc00, 0x3b8e, 0x11d3, 
    [ 0x9c, 0xe4, 0xa4, 0x58, 0xf4, 0x54, 0xfc, 0xbc ]};

extern(Windows)
interface nsIDocumentStateListener : nsISupports {
  static const char[] IID_STR = NS_IDOCUMENTSTATELISTENER_IID_STR;
  static const nsIID IID = NS_IDOCUMENTSTATELISTENER_IID;

  /* void NotifyDocumentCreated (); */
  nsresult NotifyDocumentCreated();

  /* void NotifyDocumentWillBeDestroyed (); */
  nsresult NotifyDocumentWillBeDestroyed();

  /* void NotifyDocumentStateChanged (in boolean nowDirty); */
  nsresult NotifyDocumentStateChanged(PRBool nowDirty);

}

