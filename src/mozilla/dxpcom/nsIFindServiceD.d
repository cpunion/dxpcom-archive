/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFindService.idl
 */

module mozilla.dxpcom.nsIFindServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFindService;


public import mozilla.dxpcom.nsIFindServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIFindService */
class nsIFindServiceD : public nsISupportsD {

  static const nsIID IID = NS_IFINDSERVICE_IID;


  alias nsIFindService InnerType;

  this(nsIFindService intr){
    super(intr);
    this.inner = intr;
  }

  nsIFindService opCast() {
    return inner;
  }

  void opAssign(nsIFindService value) {
    inner = value;
  }

  /* attribute AString searchString; */
  wchar[] SearchString(){
    scope auto value = new AString();
    nsresult __result = inner.GetSearchString(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void SearchString(wchar[] aSearchString){
    scope auto value = new AString(aSearchString);
    nsresult __result = inner.SetSearchString(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute AString replaceString; */
  wchar[] ReplaceString(){
    scope auto value = new AString();
    nsresult __result = inner.GetReplaceString(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void ReplaceString(wchar[] aReplaceString){
    scope auto value = new AString(aReplaceString);
    nsresult __result = inner.SetReplaceString(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute boolean findBackwards; */
  PRBool FindBackwards(){
    PRBool value;
    nsresult __result = inner.GetFindBackwards(&value);
    CheckException(__result);
    return value;
  }
  void FindBackwards(PRBool aFindBackwards){
    nsresult __result = inner.SetFindBackwards(aFindBackwards);
    CheckException(__result);
  }

  /* attribute boolean wrapFind; */
  PRBool WrapFind(){
    PRBool value;
    nsresult __result = inner.GetWrapFind(&value);
    CheckException(__result);
    return value;
  }
  void WrapFind(PRBool aWrapFind){
    nsresult __result = inner.SetWrapFind(aWrapFind);
    CheckException(__result);
  }

  /* attribute boolean entireWord; */
  PRBool EntireWord(){
    PRBool value;
    nsresult __result = inner.GetEntireWord(&value);
    CheckException(__result);
    return value;
  }
  void EntireWord(PRBool aEntireWord){
    nsresult __result = inner.SetEntireWord(aEntireWord);
    CheckException(__result);
  }

  /* attribute boolean matchCase; */
  PRBool MatchCase(){
    PRBool value;
    nsresult __result = inner.GetMatchCase(&value);
    CheckException(__result);
    return value;
  }
  void MatchCase(PRBool aMatchCase){
    nsresult __result = inner.SetMatchCase(aMatchCase);
    CheckException(__result);
  }

private:
  nsIFindService inner;

}

