/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM inISearchObserver.idl
 */

module mozilla.dxpcom.inISearchObserverD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.inISearchObserver;


public import mozilla.dxpcom.inISearchObserverD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.inISearchProcess;

public import mozilla.dxpcom.inISearchProcessD;


/* starting wrapper class:    inISearchObserver */
class inISearchObserverD : public nsISupportsD {

  static const nsIID IID = INISEARCHOBSERVER_IID;


  alias inISearchObserver InnerType;

  this(inISearchObserver intr){
    super(intr);
    this.inner = intr;
  }

  inISearchObserver opCast() {
    return inner;
  }

  void opAssign(inISearchObserver value) {
    inner = value;
  }

  enum { SUCCESS = 1 }

  enum { INTERRUPTED = 2 }

  enum { ERROR = 3 }

  /* void onSearchStart (in inISearchProcess aModule); */
  void OnSearchStart(inISearchProcessD aModule){
    nsresult __result = inner.OnSearchStart(aModule ? cast(inISearchProcess)aModule : null);
    CheckException(__result);
  }

  /* void onSearchResult (in inISearchProcess aModule); */
  void OnSearchResult(inISearchProcessD aModule){
    nsresult __result = inner.OnSearchResult(aModule ? cast(inISearchProcess)aModule : null);
    CheckException(__result);
  }

  /* void onSearchEnd (in inISearchProcess aModule, in short aResult); */
  void OnSearchEnd(inISearchProcessD aModule, PRInt16 aResult){
    nsresult __result = inner.OnSearchEnd(aModule ? cast(inISearchProcess)aModule : null, aResult);
    CheckException(__result);
  }

  /* void onSearchError (in inISearchProcess aModule, in AString aMessage); */
  void OnSearchError(inISearchProcessD aModule, wchar[] aMessage){
    scope auto _aMessage = new AString(aMessage);
    nsresult __result = inner.OnSearchError(aModule ? cast(inISearchProcess)aModule : null, cast(nsAString*)_aMessage);
    CheckException(__result);
  }

private:
  inISearchObserver inner;

}

