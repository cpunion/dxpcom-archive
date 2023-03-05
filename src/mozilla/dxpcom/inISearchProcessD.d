/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM inISearchProcess.idl
 */

module mozilla.dxpcom.inISearchProcessD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.inISearchProcess;


public import mozilla.dxpcom.inISearchProcessD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.inISearchObserver;

public import mozilla.dxpcom.inISearchObserverD;

public import mozilla.xpcom.nsISupportsArray;

public import mozilla.dxpcom.nsISupportsArrayD;


/* starting wrapper class:    inISearchProcess */
class inISearchProcessD : public nsISupportsD {

  static const nsIID IID = INISEARCHPROCESS_IID;


  alias inISearchProcess InnerType;

  this(inISearchProcess intr){
    super(intr);
    this.inner = intr;
  }

  inISearchProcess opCast() {
    return inner;
  }

  void opAssign(inISearchProcess value) {
    inner = value;
  }

  /* readonly attribute boolean isActive; */
  PRBool IsActive(){
    PRBool value;
    nsresult __result = inner.GetIsActive(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long resultCount; */
  PRInt32 ResultCount(){
    PRInt32 value;
    nsresult __result = inner.GetResultCount(&value);
    CheckException(__result);
    return value;
  }

  /* attribute boolean holdResults; */
  PRBool HoldResults(){
    PRBool value;
    nsresult __result = inner.GetHoldResults(&value);
    CheckException(__result);
    return value;
  }
  void HoldResults(PRBool aHoldResults){
    nsresult __result = inner.SetHoldResults(aHoldResults);
    CheckException(__result);
  }

  /* void searchSync (); */
  void SearchSync(){
    nsresult __result = inner.SearchSync();
    CheckException(__result);
  }

  /* void searchAsync (in inISearchObserver aObserver); */
  void SearchAsync(inISearchObserverD aObserver){
    nsresult __result = inner.SearchAsync(aObserver ? cast(inISearchObserver)aObserver : null);
    CheckException(__result);
  }

  /* void searchStop (); */
  void SearchStop(){
    nsresult __result = inner.SearchStop();
    CheckException(__result);
  }

  /* boolean searchStep (); */
  PRBool SearchStep(){
    PRBool _retval;
    nsresult __result = inner.SearchStep(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* AString getStringResultAt (in long aIndex); */
  wchar[] GetStringResultAt(PRInt32 aIndex){
    scope auto _retval = new AString;
    nsresult __result = inner.GetStringResultAt(aIndex, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* long getIntResultAt (in long aIndex); */
  PRInt32 GetIntResultAt(PRInt32 aIndex){
    PRInt32 _retval;
    nsresult __result = inner.GetIntResultAt(aIndex, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* unsigned long getUIntResultAt (in long aIndex); */
  PRUint32 GetUIntResultAt(PRInt32 aIndex){
    PRUint32 _retval;
    nsresult __result = inner.GetUIntResultAt(aIndex, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  inISearchProcess inner;

}

