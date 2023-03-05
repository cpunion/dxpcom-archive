/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAutoCompleteSearch.idl
 */

module mozilla.dxpcom.nsIAutoCompleteSearchD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAutoCompleteSearch;


public import mozilla.dxpcom.nsIAutoCompleteSearchD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIAutoCompleteResult;

public import mozilla.dxpcom.nsIAutoCompleteResultD;

public import mozilla.xpcom.nsIAutoCompleteSearch;

import mozilla.dxpcom.nsIAutoCompleteSearchD;


/* starting wrapper class:    nsIAutoCompleteSearch */
class nsIAutoCompleteSearchD : public nsISupportsD {

  static const nsIID IID = NS_IAUTOCOMPLETESEARCH_IID;


  alias nsIAutoCompleteSearch InnerType;

  this(nsIAutoCompleteSearch intr){
    super(intr);
    this.inner = intr;
  }

  nsIAutoCompleteSearch opCast() {
    return inner;
  }

  void opAssign(nsIAutoCompleteSearch value) {
    inner = value;
  }

  /* void startSearch (in AString searchString, in AString searchParam, in nsIAutoCompleteResult previousResult, in nsIAutoCompleteObserver listener); */
  void StartSearch(wchar[] searchString, wchar[] searchParam, nsIAutoCompleteResultD previousResult, nsIAutoCompleteObserverD listener){
    scope auto _searchString = new AString(searchString);
    scope auto _searchParam = new AString(searchParam);
    nsresult __result = inner.StartSearch(cast(nsAString*)_searchString, cast(nsAString*)_searchParam, previousResult ? cast(nsIAutoCompleteResult)previousResult : null, listener ? cast(nsIAutoCompleteObserver)listener : null);
    CheckException(__result);
  }

  /* void stopSearch (); */
  void StopSearch(){
    nsresult __result = inner.StopSearch();
    CheckException(__result);
  }

private:
  nsIAutoCompleteSearch inner;

}


/* starting wrapper class:    nsIAutoCompleteObserver */
class nsIAutoCompleteObserverD : public nsISupportsD {

  static const nsIID IID = NS_IAUTOCOMPLETEOBSERVER_IID;


  alias nsIAutoCompleteObserver InnerType;

  this(nsIAutoCompleteObserver intr){
    super(intr);
    this.inner = intr;
  }

  nsIAutoCompleteObserver opCast() {
    return inner;
  }

  void opAssign(nsIAutoCompleteObserver value) {
    inner = value;
  }

  /* void onSearchResult (in nsIAutoCompleteSearch search, in nsIAutoCompleteResult result); */
  void OnSearchResult(nsIAutoCompleteSearchD search, nsIAutoCompleteResultD result){
    nsresult __result = inner.OnSearchResult(search ? cast(nsIAutoCompleteSearch)search : null, result ? cast(nsIAutoCompleteResult)result : null);
    CheckException(__result);
  }

private:
  nsIAutoCompleteObserver inner;

}

