/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAutoCompleteResults.idl
 */

module mozilla.dxpcom.nsIAutoCompleteResultsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAutoCompleteResults;


public import mozilla.dxpcom.nsIAutoCompleteResultsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.dxpcom.nsISupportsArrayD;


/* starting wrapper class:    nsIAutoCompleteItem */
class nsIAutoCompleteItemD : public nsISupportsD {

  static const nsIID IID = NS_IAUTOCOMPLETEITEM_IID;


  alias nsIAutoCompleteItem InnerType;

  this(nsIAutoCompleteItem intr){
    super(intr);
    this.inner = intr;
  }

  nsIAutoCompleteItem opCast() {
    return inner;
  }

  void opAssign(nsIAutoCompleteItem value) {
    inner = value;
  }

  /**
     * the result value
     * using AString to avoid excess allocations
     */
  /* attribute AString value; */
  wchar[] Value(){
    scope auto value = new AString();
    nsresult __result = inner.GetValue(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Value(wchar[] aValue){
    scope auto value = new AString(aValue);
    nsresult __result = inner.SetValue(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
     * an extra comment that will be
     * displayed next to the value but that
     * will not be part of the value
     * itself
     */
  /* attribute wstring comment; */
  PRUnichar* Comment(){
    PRUnichar* value;
    nsresult __result = inner.GetComment(&value);
    CheckException(__result);
    return value;
  }
  void Comment(PRUnichar* aComment){
    nsresult __result = inner.SetComment(aComment);
    CheckException(__result);
  }

  /**
     * class name used to define some style through
     * css like the colors, an icon url, etc...
     */
  /* attribute string className; */
  char* ClassName(){
    char* value;
    nsresult __result = inner.GetClassName(&value);
    CheckException(__result);
    return value;
  }
  void ClassName(char* aClassName){
    nsresult __result = inner.SetClassName(aClassName);
    CheckException(__result);
  }

  /**
     * parameter use by the search engine
     */
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
  nsIAutoCompleteItem inner;

}


/* starting wrapper class:    nsIAutoCompleteResults */
class nsIAutoCompleteResultsD : public nsISupportsD {

  static const nsIID IID = NS_IAUTOCOMPLETERESULTS_IID;


  alias nsIAutoCompleteResults InnerType;

  this(nsIAutoCompleteResults intr){
    super(intr);
    this.inner = intr;
  }

  nsIAutoCompleteResults opCast() {
    return inner;
  }

  void opAssign(nsIAutoCompleteResults value) {
    inner = value;
  }

  /**
     * the original search string
     */
  /* attribute wstring searchString; */
  PRUnichar* SearchString(){
    PRUnichar* value;
    nsresult __result = inner.GetSearchString(&value);
    CheckException(__result);
    return value;
  }
  void SearchString(PRUnichar* aSearchString){
    nsresult __result = inner.SetSearchString(aSearchString);
    CheckException(__result);
  }

  /**
     * Array of result items (nsIAutoCompleteItem)
     */
  /* attribute nsISupportsArray items; */
  nsISupportsArrayD  Items(){
    nsISupportsArray value;
    nsresult __result = inner.GetItems(&value);
    CheckException(__result);
    return new nsISupportsArrayD(value);
  }
  void Items(nsISupportsArrayD  aItems){
    nsISupportsArray value;
    nsresult __result = inner.SetItems(value);
    CheckException(__result);
  }

  /**
     * Index (0 base) of the default item that
     * will be preselected and displayed
     */
  /* attribute long defaultItemIndex; */
  PRInt32 DefaultItemIndex(){
    PRInt32 value;
    nsresult __result = inner.GetDefaultItemIndex(&value);
    CheckException(__result);
    return value;
  }
  void DefaultItemIndex(PRInt32 aDefaultItemIndex){
    nsresult __result = inner.SetDefaultItemIndex(aDefaultItemIndex);
    CheckException(__result);
  }

  /**
     * param use by the the search engine
     */
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
  nsIAutoCompleteResults inner;

}

