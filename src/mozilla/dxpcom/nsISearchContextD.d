/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISearchContext.idl
 */

module mozilla.dxpcom.nsISearchContextD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISearchContext;


public import mozilla.dxpcom.nsISearchContextD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMWindowInternal;

public import mozilla.dxpcom.nsIDOMWindowInternalD;


/* starting wrapper class:    nsISearchContext */
class nsISearchContextD : public nsISupportsD {

  static const nsIID IID = NS_ISEARCHCONTEXT_IID;


  alias nsISearchContext InnerType;

  this(nsISearchContext intr){
    super(intr);
    this.inner = intr;
  }

  nsISearchContext opCast() {
    return inner;
  }

  void opAssign(nsISearchContext value) {
    inner = value;
  }

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

  /* attribute wstring replaceString; */
  PRUnichar* ReplaceString(){
    PRUnichar* value;
    nsresult __result = inner.GetReplaceString(&value);
    CheckException(__result);
    return value;
  }
  void ReplaceString(PRUnichar* aReplaceString){
    nsresult __result = inner.SetReplaceString(aReplaceString);
    CheckException(__result);
  }

  /* attribute boolean searchBackwards; */
  PRBool SearchBackwards(){
    PRBool value;
    nsresult __result = inner.GetSearchBackwards(&value);
    CheckException(__result);
    return value;
  }
  void SearchBackwards(PRBool aSearchBackwards){
    nsresult __result = inner.SetSearchBackwards(aSearchBackwards);
    CheckException(__result);
  }

  /* attribute boolean caseSensitive; */
  PRBool CaseSensitive(){
    PRBool value;
    nsresult __result = inner.GetCaseSensitive(&value);
    CheckException(__result);
    return value;
  }
  void CaseSensitive(PRBool aCaseSensitive){
    nsresult __result = inner.SetCaseSensitive(aCaseSensitive);
    CheckException(__result);
  }

  /* attribute boolean wrapSearch; */
  PRBool WrapSearch(){
    PRBool value;
    nsresult __result = inner.GetWrapSearch(&value);
    CheckException(__result);
    return value;
  }
  void WrapSearch(PRBool aWrapSearch){
    nsresult __result = inner.SetWrapSearch(aWrapSearch);
    CheckException(__result);
  }

  /* readonly attribute nsIDOMWindowInternal targetWindow; */
  nsIDOMWindowInternalD  TargetWindow(){
    nsIDOMWindowInternal value;
    nsresult __result = inner.GetTargetWindow(&value);
    CheckException(__result);
    return new nsIDOMWindowInternalD(value);
  }

  /* attribute nsIDOMWindowInternal findDialog; */
  nsIDOMWindowInternalD  FindDialog(){
    nsIDOMWindowInternal value;
    nsresult __result = inner.GetFindDialog(&value);
    CheckException(__result);
    return new nsIDOMWindowInternalD(value);
  }
  void FindDialog(nsIDOMWindowInternalD  aFindDialog){
    nsIDOMWindowInternal value;
    nsresult __result = inner.SetFindDialog(value);
    CheckException(__result);
  }

  /* attribute nsIDOMWindowInternal replaceDialog; */
  nsIDOMWindowInternalD  ReplaceDialog(){
    nsIDOMWindowInternal value;
    nsresult __result = inner.GetReplaceDialog(&value);
    CheckException(__result);
    return new nsIDOMWindowInternalD(value);
  }
  void ReplaceDialog(nsIDOMWindowInternalD  aReplaceDialog){
    nsIDOMWindowInternal value;
    nsresult __result = inner.SetReplaceDialog(value);
    CheckException(__result);
  }

private:
  nsISearchContext inner;

}

