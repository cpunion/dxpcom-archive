/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAutoCompleteSearch.idl
 */

module mozilla.xpcom.nsIAutoCompleteSearch;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIAutoCompleteResult; /* forward declaration */

public import mozilla.xpcom.nsIAutoCompleteSearch;


/* starting interface:    nsIAutoCompleteSearch */
const char[] NS_IAUTOCOMPLETESEARCH_IID_STR = "de8db85f-c1de-4d87-94ba-7844890f91fe";

const nsIID NS_IAUTOCOMPLETESEARCH_IID= 
  {0xde8db85f, 0xc1de, 0x4d87, 
    [ 0x94, 0xba, 0x78, 0x44, 0x89, 0x0f, 0x91, 0xfe ]};

extern(Windows)
interface nsIAutoCompleteSearch : nsISupports {
  static const char[] IID_STR = NS_IAUTOCOMPLETESEARCH_IID_STR;
  static const nsIID IID = NS_IAUTOCOMPLETESEARCH_IID;

  /* void startSearch (in AString searchString, in AString searchParam, in nsIAutoCompleteResult previousResult, in nsIAutoCompleteObserver listener); */
  nsresult StartSearch(nsAString * searchString, nsAString * searchParam, nsIAutoCompleteResult previousResult, nsIAutoCompleteObserver listener);

  /* void stopSearch (); */
  nsresult StopSearch();

}


/* starting interface:    nsIAutoCompleteObserver */
const char[] NS_IAUTOCOMPLETEOBSERVER_IID_STR = "18c36504-9a4c-4ac3-8494-bd05e00ae27f";

const nsIID NS_IAUTOCOMPLETEOBSERVER_IID= 
  {0x18c36504, 0x9a4c, 0x4ac3, 
    [ 0x84, 0x94, 0xbd, 0x05, 0xe0, 0x0a, 0xe2, 0x7f ]};

extern(Windows)
interface nsIAutoCompleteObserver : nsISupports {
  static const char[] IID_STR = NS_IAUTOCOMPLETEOBSERVER_IID_STR;
  static const nsIID IID = NS_IAUTOCOMPLETEOBSERVER_IID;

  /* void onSearchResult (in nsIAutoCompleteSearch search, in nsIAutoCompleteResult result); */
  nsresult OnSearchResult(nsIAutoCompleteSearch search, nsIAutoCompleteResult result);

}

