/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAutoCompleteListener.idl
 */

module mozilla.xpcom.nsIAutoCompleteListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIAutoCompleteResults;

alias PRInt32 AutoCompleteStatus;


/* starting interface:    nsIAutoCompleteStatus */
const char[] NS_IAUTOCOMPLETESTATUS_IID_STR = "4ba0a180-097c-11d4-a449-cd1a8b47ed7c";

const nsIID NS_IAUTOCOMPLETESTATUS_IID= 
  {0x4ba0a180, 0x097c, 0x11d4, 
    [ 0xa4, 0x49, 0xcd, 0x1a, 0x8b, 0x47, 0xed, 0x7c ]};

extern(Windows)
interface nsIAutoCompleteStatus {
  static const char[] IID_STR = NS_IAUTOCOMPLETESTATUS_IID_STR;
  static const nsIID IID = NS_IAUTOCOMPLETESTATUS_IID;

  enum { failed = -1 };

  enum { noMatch = 0 };

  enum { matchFound = 1 };

  enum { ignored = 2 };

  enum { failureItems = 3 };

}


/* starting interface:    nsIAutoCompleteListener */
const char[] NS_IAUTOCOMPLETELISTENER_IID_STR = "4ba0a181-097c-11d4-a449-cd1a8b47ed7c";

const nsIID NS_IAUTOCOMPLETELISTENER_IID= 
  {0x4ba0a181, 0x097c, 0x11d4, 
    [ 0xa4, 0x49, 0xcd, 0x1a, 0x8b, 0x47, 0xed, 0x7c ]};

extern(Windows)
interface nsIAutoCompleteListener : nsISupports {
  static const char[] IID_STR = NS_IAUTOCOMPLETELISTENER_IID_STR;
  static const nsIID IID = NS_IAUTOCOMPLETELISTENER_IID;

  /* void onStatus (in wstring statusText); */
  nsresult OnStatus(PRUnichar *statusText);

  /* void onAutoComplete (in nsIAutoCompleteResults result, in AutoCompleteStatus status); */
  nsresult OnAutoComplete(nsIAutoCompleteResults result, AutoCompleteStatus status);

  /* attribute nsISupports param; */
  nsresult GetParam(nsISupports  *aParam);
  nsresult SetParam(nsISupports  aParam);

}

