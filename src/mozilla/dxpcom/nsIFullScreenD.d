/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFullScreen.idl
 */

module mozilla.dxpcom.nsIFullScreenD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFullScreen;


public import mozilla.dxpcom.nsIFullScreenD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;


/* starting wrapper class:    nsIFullScreen */
class nsIFullScreenD : public nsISupportsD {

  static const nsIID IID = NS_IFULLSCREEN_IID;


  alias nsIFullScreen InnerType;

  this(nsIFullScreen intr){
    super(intr);
    this.inner = intr;
  }

  nsIFullScreen opCast() {
    return inner;
  }

  void opAssign(nsIFullScreen value) {
    inner = value;
  }

  /**
   * Hide all registered OS chrome components
   */
  /* void hideAllOSChrome (); */
  void HideAllOSChrome(){
    nsresult __result = inner.HideAllOSChrome();
    CheckException(__result);
  }

  /**
   * Show all registered OS chrome components
   */
  /* void showAllOSChrome (); */
  void ShowAllOSChrome(){
    nsresult __result = inner.ShowAllOSChrome();
    CheckException(__result);
  }

  /**
   * Return an enumerator of all registered OS chrome components
   */
  /* nsISimpleEnumerator getChromeItems (); */
  nsISimpleEnumeratorD  GetChromeItems(){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.GetChromeItems(&_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

private:
  nsIFullScreen inner;

}


/* starting wrapper class:    nsIOSChromeItem */
class nsIOSChromeItemD : public nsISupportsD {

  static const nsIID IID = NS_IOSCHROMEITEM_IID;


  alias nsIOSChromeItem InnerType;

  this(nsIOSChromeItem intr){
    super(intr);
    this.inner = intr;
  }

  nsIOSChromeItem opCast() {
    return inner;
  }

  void opAssign(nsIOSChromeItem value) {
    inner = value;
  }

  /* readonly attribute string name; */
  char* Name(){
    char* value;
    nsresult __result = inner.GetName(&value);
    CheckException(__result);
    return value;
  }

  /* attribute boolean hidden; */
  PRBool Hidden(){
    PRBool value;
    nsresult __result = inner.GetHidden(&value);
    CheckException(__result);
    return value;
  }
  void Hidden(PRBool aHidden){
    nsresult __result = inner.SetHidden(aHidden);
    CheckException(__result);
  }

  /* readonly attribute long x; */
  PRInt32 X(){
    PRInt32 value;
    nsresult __result = inner.GetX(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long y; */
  PRInt32 Y(){
    PRInt32 value;
    nsresult __result = inner.GetY(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long width; */
  PRInt32 Width(){
    PRInt32 value;
    nsresult __result = inner.GetWidth(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long height; */
  PRInt32 Height(){
    PRInt32 value;
    nsresult __result = inner.GetHeight(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIOSChromeItem inner;

}

