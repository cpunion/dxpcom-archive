/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAutoCompleteListener.idl
 */

module mozilla.dxpcom.nsIAutoCompleteListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAutoCompleteListener;


public import mozilla.dxpcom.nsIAutoCompleteListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIAutoCompleteResults;
public import mozilla.dxpcom.nsIAutoCompleteResultsD;


/* starting wrapper class:    nsIAutoCompleteStatus */
class nsIAutoCompleteStatusD {

  static const nsIID IID = NS_IAUTOCOMPLETESTATUS_IID;


  alias nsIAutoCompleteStatus InnerType;

  this(nsIAutoCompleteStatus intr){
    this.inner = intr;
  }

  nsIAutoCompleteStatus opCast() {
    return inner;
  }

  void opAssign(nsIAutoCompleteStatus value) {
    inner = value;
  }

  enum { failed = -1 }

  enum { noMatch = 0 }

  enum { matchFound = 1 }

  enum { ignored = 2 }

  enum { failureItems = 3 }

private:
  nsIAutoCompleteStatus inner;

}


/* starting wrapper class:    nsIAutoCompleteListener */
class nsIAutoCompleteListenerD : public nsISupportsD {

  static const nsIID IID = NS_IAUTOCOMPLETELISTENER_IID;


  alias nsIAutoCompleteListener InnerType;

  this(nsIAutoCompleteListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIAutoCompleteListener opCast() {
    return inner;
  }

  void opAssign(nsIAutoCompleteListener value) {
    inner = value;
  }

  /* void onStatus (in wstring statusText); */
  void OnStatus(PRUnichar*statusText){
    nsresult __result = inner.OnStatus(statusText);
    CheckException(__result);
  }

  /* void onAutoComplete (in nsIAutoCompleteResults result, in AutoCompleteStatus status); */
  void OnAutoComplete(nsIAutoCompleteResultsD result, AutoCompleteStatus status){
    nsresult __result = inner.OnAutoComplete(result ? cast(nsIAutoCompleteResults)result : null, status);
    CheckException(__result);
  }

  /* attribute nsISupports param; */
  nsISupportsD  Param(){
    nsISupports value;
    nsresult __result = inner.GetParam(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }
  void Param(nsISupportsD  aParam){
    nsISupports value;
    nsresult __result = inner.SetParam(value);
    CheckException(__result);
  }

private:
  nsIAutoCompleteListener inner;

}

