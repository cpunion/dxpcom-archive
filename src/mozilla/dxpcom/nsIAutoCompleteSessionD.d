/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAutoCompleteSession.idl
 */

module mozilla.dxpcom.nsIAutoCompleteSessionD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAutoCompleteSession;


public import mozilla.dxpcom.nsIAutoCompleteSessionD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIAutoCompleteResults;

public import mozilla.dxpcom.nsIAutoCompleteResultsD;

public import mozilla.xpcom.nsIAutoCompleteListener;

public import mozilla.dxpcom.nsIAutoCompleteListenerD;


/* starting wrapper class:    nsIAutoCompleteSession */
class nsIAutoCompleteSessionD : public nsISupportsD {

  static const nsIID IID = NS_IAUTOCOMPLETESESSION_IID;


  alias nsIAutoCompleteSession InnerType;

  this(nsIAutoCompleteSession intr){
    super(intr);
    this.inner = intr;
  }

  nsIAutoCompleteSession opCast() {
    return inner;
  }

  void opAssign(nsIAutoCompleteSession value) {
    inner = value;
  }

  /* void onStartLookup (in wstring searchString, in nsIAutoCompleteResults previousSearchResult, in nsIAutoCompleteListener listener); */
  void OnStartLookup(PRUnichar*searchString, nsIAutoCompleteResultsD previousSearchResult, nsIAutoCompleteListenerD listener){
    nsresult __result = inner.OnStartLookup(searchString, previousSearchResult ? cast(nsIAutoCompleteResults)previousSearchResult : null, listener ? cast(nsIAutoCompleteListener)listener : null);
    CheckException(__result);
  }

  /* void onStopLookup (); */
  void OnStopLookup(){
    nsresult __result = inner.OnStopLookup();
    CheckException(__result);
  }

  /* void onAutoComplete (in wstring searchString, in nsIAutoCompleteResults previousSearchResult, in nsIAutoCompleteListener listener); */
  void OnAutoComplete(PRUnichar*searchString, nsIAutoCompleteResultsD previousSearchResult, nsIAutoCompleteListenerD listener){
    nsresult __result = inner.OnAutoComplete(searchString, previousSearchResult ? cast(nsIAutoCompleteResults)previousSearchResult : null, listener ? cast(nsIAutoCompleteListener)listener : null);
    CheckException(__result);
  }

private:
  nsIAutoCompleteSession inner;

}

