/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAutoCompleteSession.idl
 */

module mozilla.xpcom.nsIAutoCompleteSession;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIAutoCompleteResults; /* forward declaration */

public import mozilla.xpcom.nsIAutoCompleteListener; /* forward declaration */


/* starting interface:    nsIAutoCompleteSession */
const char[] NS_IAUTOCOMPLETESESSION_IID_STR = "e0140b60-0264-11d4-8378-000000000000";

const nsIID NS_IAUTOCOMPLETESESSION_IID= 
  {0xe0140b60, 0x0264, 0x11d4, 
    [ 0x83, 0x78, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ]};

extern(Windows)
interface nsIAutoCompleteSession : nsISupports {
  static const char[] IID_STR = NS_IAUTOCOMPLETESESSION_IID_STR;
  static const nsIID IID = NS_IAUTOCOMPLETESESSION_IID;

  /* void onStartLookup (in wstring searchString, in nsIAutoCompleteResults previousSearchResult, in nsIAutoCompleteListener listener); */
  nsresult OnStartLookup(PRUnichar *searchString, nsIAutoCompleteResults previousSearchResult, nsIAutoCompleteListener listener);

  /* void onStopLookup (); */
  nsresult OnStopLookup();

  /* void onAutoComplete (in wstring searchString, in nsIAutoCompleteResults previousSearchResult, in nsIAutoCompleteListener listener); */
  nsresult OnAutoComplete(PRUnichar *searchString, nsIAutoCompleteResults previousSearchResult, nsIAutoCompleteListener listener);

}

