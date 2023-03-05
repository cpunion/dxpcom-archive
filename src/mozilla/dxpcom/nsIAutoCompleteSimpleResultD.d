/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAutoCompleteSimpleResult.idl
 */

module mozilla.dxpcom.nsIAutoCompleteSimpleResultD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAutoCompleteSimpleResult;


public import mozilla.dxpcom.nsIAutoCompleteSimpleResultD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIAutoCompleteResult;
public import mozilla.dxpcom.nsIAutoCompleteResultD;


/* starting wrapper class:    nsIAutoCompleteSimpleResult */
/**
 * This class implements nsIAutoCompleteResult and provides simple methods
 * for setting the value and result items. It can be used whenever some basic
 * auto complete results are needed that can be pre-generated and filled into
 * an array.
 */
class nsIAutoCompleteSimpleResultD : public nsIAutoCompleteResultD {

  static const nsIID IID = NS_IAUTOCOMPLETESIMPLERESULT_IID;


  alias nsIAutoCompleteSimpleResult InnerType;

  this(nsIAutoCompleteSimpleResult intr){
    super(intr);
    this.inner = intr;
  }

  nsIAutoCompleteSimpleResult opCast() {
    return inner;
  }

  void opAssign(nsIAutoCompleteSimpleResult value) {
    inner = value;
  }

  /**
   * A writer for the readonly attribute 'searchString' which should contain
   * the string that the user typed.
   */
  /* void setSearchString (in AString aSearchString); */
  void SetSearchString(wchar[] aSearchString){
    scope auto _aSearchString = new AString(aSearchString);
    nsresult __result = inner.SetSearchString(cast(nsAString*)_aSearchString);
    CheckException(__result);
  }

  /**
   * A writer for the readonly attribute 'errorDescription'.
   */
  /* void setErrorDescription (in AString aErrorDescription); */
  void SetErrorDescription(wchar[] aErrorDescription){
    scope auto _aErrorDescription = new AString(aErrorDescription);
    nsresult __result = inner.SetErrorDescription(cast(nsAString*)_aErrorDescription);
    CheckException(__result);
  }

  /**
   * A writer for the readonly attribute 'defaultIndex' which should contain
   * the index of the list that will be selected by default (normally 0).
   */
  /* void setDefaultIndex (in long aDefaultIndex); */
  void SetDefaultIndex(PRInt32 aDefaultIndex){
    nsresult __result = inner.SetDefaultIndex(aDefaultIndex);
    CheckException(__result);
  }

  /**
   * A writer for the readonly attribute 'searchResult' which should contain
   * one of the constants nsIAutoCompleteResult.RESULT_* indicating the success
   * of the search.
   */
  /* void setSearchResult (in unsigned short aSearchResult); */
  void SetSearchResult(PRUint16 aSearchResult){
    nsresult __result = inner.SetSearchResult(aSearchResult);
    CheckException(__result);
  }

  /**
   * Appends a result item consisting of the given value and comment. This is
   * how you add results.
   */
  /* void appendMatch (in AString aValue, in AString aComment); */
  void AppendMatch(wchar[] aValue, wchar[] aComment){
    scope auto _aValue = new AString(aValue);
    scope auto _aComment = new AString(aComment);
    nsresult __result = inner.AppendMatch(cast(nsAString*)_aValue, cast(nsAString*)_aComment);
    CheckException(__result);
  }

private:
  nsIAutoCompleteSimpleResult inner;

}

