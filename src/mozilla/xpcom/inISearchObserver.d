/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM inISearchObserver.idl
 */

module mozilla.xpcom.inISearchObserver;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.inISearchProcess; /* forward declaration */


/* starting interface:    inISearchObserver */
const char[] INISEARCHOBSERVER_IID_STR = "46226d9b-e398-4106-8d9b-225d4d0589f5";

const nsIID INISEARCHOBSERVER_IID= 
  {0x46226d9b, 0xe398, 0x4106, 
    [ 0x8d, 0x9b, 0x22, 0x5d, 0x4d, 0x05, 0x89, 0xf5 ]};

extern(Windows)
interface inISearchObserver : nsISupports {
  static const char[] IID_STR = INISEARCHOBSERVER_IID_STR;
  static const nsIID IID = INISEARCHOBSERVER_IID;

  enum { SUCCESS = 1 };

  enum { INTERRUPTED = 2 };

  enum { ERROR = 3 };

  /* void onSearchStart (in inISearchProcess aModule); */
  nsresult OnSearchStart(inISearchProcess aModule);

  /* void onSearchResult (in inISearchProcess aModule); */
  nsresult OnSearchResult(inISearchProcess aModule);

  /* void onSearchEnd (in inISearchProcess aModule, in short aResult); */
  nsresult OnSearchEnd(inISearchProcess aModule, PRInt16 aResult);

  /* void onSearchError (in inISearchProcess aModule, in AString aMessage); */
  nsresult OnSearchError(inISearchProcess aModule, nsAString * aMessage);

}

