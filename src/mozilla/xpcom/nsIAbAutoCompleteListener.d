/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbAutoCompleteListener.idl
 */

module mozilla.xpcom.nsIAbAutoCompleteListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsrootidl;


/* starting interface:    nsIAbAutoCompleteListener */
const char[] NS_IABAUTOCOMPLETELISTENER_IID_STR = "ca2a6b08-3625-11d3-988e-001083010e9b";

const nsIID NS_IABAUTOCOMPLETELISTENER_IID= 
  {0xca2a6b08, 0x3625, 0x11d3, 
    [ 0x98, 0x8e, 0x00, 0x10, 0x83, 0x01, 0x0e, 0x9b ]};

extern(Windows)
interface nsIAbAutoCompleteListener : nsISupports {
  static const char[] IID_STR = NS_IABAUTOCOMPLETELISTENER_IID_STR;
  static const nsIID IID = NS_IABAUTOCOMPLETELISTENER_IID;

  /* void onAutoCompleteResult (in nsISupports aParam, in wstring aOriginalString, in wstring aMatch); */
  nsresult OnAutoCompleteResult(nsISupports aParam, PRUnichar *aOriginalString, PRUnichar *aMatch);

}

