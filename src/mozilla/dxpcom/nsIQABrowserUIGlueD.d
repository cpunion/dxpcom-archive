/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIQABrowserUIGlue.idl
 */

module mozilla.dxpcom.nsIQABrowserUIGlueD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIQABrowserUIGlue;


public import mozilla.dxpcom.nsIQABrowserUIGlueD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIBaseWindow;
public import mozilla.dxpcom.nsIBaseWindowD;

public import mozilla.xpcom.nsIWebBrowserChrome;

public import mozilla.dxpcom.nsIWebBrowserChromeD;

public import mozilla.xpcom.nsIWebBrowser;

public import mozilla.dxpcom.nsIWebBrowserD;

public import mozilla.xpcom.nsIDOMEvent;

public import mozilla.dxpcom.nsIDOMEventD;

public import mozilla.xpcom.nsIDOMNode;

public import mozilla.dxpcom.nsIDOMNodeD;


/* starting wrapper class:    nsIQABrowserUIGlue */
class nsIQABrowserUIGlueD : public nsISupportsD {

  static const nsIID IID = NS_IQABROWSERUIGLUE_IID;


  alias nsIQABrowserUIGlue InnerType;

  this(nsIQABrowserUIGlue intr){
    super(intr);
    this.inner = intr;
  }

  nsIQABrowserUIGlue opCast() {
    return inner;
  }

  void opAssign(nsIQABrowserUIGlue value) {
    inner = value;
  }

  /* void destroy (in nsIWebBrowserChrome aChrome); */
  void Destroy(nsIWebBrowserChromeD aChrome){
    nsresult __result = inner.Destroy(aChrome ? cast(nsIWebBrowserChrome)aChrome : null);
    CheckException(__result);
  }

  /* void destroyed (in nsIWebBrowserChrome aChrome); */
  void Destroyed(nsIWebBrowserChromeD aChrome){
    nsresult __result = inner.Destroyed(aChrome ? cast(nsIWebBrowserChrome)aChrome : null);
    CheckException(__result);
  }

  /* void setFocus (in nsIWebBrowserChrome aChrome); */
  void SetFocus(nsIWebBrowserChromeD aChrome){
    nsresult __result = inner.SetFocus(aChrome ? cast(nsIWebBrowserChrome)aChrome : null);
    CheckException(__result);
  }

  /* void updateStatusBarText (in nsIWebBrowserChrome aChrome, in wstring aStatusText); */
  void UpdateStatusBarText(nsIWebBrowserChromeD aChrome, PRUnichar*aStatusText){
    nsresult __result = inner.UpdateStatusBarText(aChrome ? cast(nsIWebBrowserChrome)aChrome : null, aStatusText);
    CheckException(__result);
  }

  /* void updateCurrentURI (in nsIWebBrowserChrome aChrome); */
  void UpdateCurrentURI(nsIWebBrowserChromeD aChrome){
    nsresult __result = inner.UpdateCurrentURI(aChrome ? cast(nsIWebBrowserChrome)aChrome : null);
    CheckException(__result);
  }

  /* void updateBusyState (in nsIWebBrowserChrome aChrome, in boolean aBusy); */
  void UpdateBusyState(nsIWebBrowserChromeD aChrome, PRBool aBusy){
    nsresult __result = inner.UpdateBusyState(aChrome ? cast(nsIWebBrowserChrome)aChrome : null, aBusy);
    CheckException(__result);
  }

  /* void updateProgress (in nsIWebBrowserChrome aChrome, in long aCurrent, in long aMax); */
  void UpdateProgress(nsIWebBrowserChromeD aChrome, PRInt32 aCurrent, PRInt32 aMax){
    nsresult __result = inner.UpdateProgress(aChrome ? cast(nsIWebBrowserChrome)aChrome : null, aCurrent, aMax);
    CheckException(__result);
  }

  /* void showContextMenu (in nsIWebBrowserChrome aChrome, in long aContextFlags, in nsIDOMEvent aEvent, in nsIDOMNode aNode); */
  void ShowContextMenu(nsIWebBrowserChromeD aChrome, PRInt32 aContextFlags, nsIDOMEventD aEvent, nsIDOMNodeD aNode){
    nsresult __result = inner.ShowContextMenu(aChrome ? cast(nsIWebBrowserChrome)aChrome : null, aContextFlags, aEvent ? cast(nsIDOMEvent)aEvent : null, aNode ? cast(nsIDOMNode)aNode : null);
    CheckException(__result);
  }

  /* void showTooltip (in nsIWebBrowserChrome aChrome, in long aXCoords, in long aYCoords, in wstring aTipText); */
  void ShowTooltip(nsIWebBrowserChromeD aChrome, PRInt32 aXCoords, PRInt32 aYCoords, PRUnichar*aTipText){
    nsresult __result = inner.ShowTooltip(aChrome ? cast(nsIWebBrowserChrome)aChrome : null, aXCoords, aYCoords, aTipText);
    CheckException(__result);
  }

  /* void hideTooltip (in nsIWebBrowserChrome aChrome); */
  void HideTooltip(nsIWebBrowserChromeD aChrome){
    nsresult __result = inner.HideTooltip(aChrome ? cast(nsIWebBrowserChrome)aChrome : null);
    CheckException(__result);
  }

  /* void showWindow (in nsIWebBrowserChrome aChrome, in boolean aShow); */
  void ShowWindow(nsIWebBrowserChromeD aChrome, PRBool aShow){
    nsresult __result = inner.ShowWindow(aChrome ? cast(nsIWebBrowserChrome)aChrome : null, aShow);
    CheckException(__result);
  }

  /* void sizeTo (in nsIWebBrowserChrome aChrome, in long aWidth, in long aHeight); */
  void SizeTo(nsIWebBrowserChromeD aChrome, PRInt32 aWidth, PRInt32 aHeight){
    nsresult __result = inner.SizeTo(aChrome ? cast(nsIWebBrowserChrome)aChrome : null, aWidth, aHeight);
    CheckException(__result);
  }

  /* string getResourceStringById (in long aID); */
  char* GetResourceStringById(PRInt32 aID){
    char* _retval;
    nsresult __result = inner.GetResourceStringById(aID, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* attribute boolean visibility; */
  PRBool Visibility(){
    PRBool value;
    nsresult __result = inner.GetVisibility(&value);
    CheckException(__result);
    return value;
  }
  void Visibility(PRBool aVisibility){
    nsresult __result = inner.SetVisibility(aVisibility);
    CheckException(__result);
  }

  /* attribute wstring title; */
  PRUnichar* Title(){
    PRUnichar* value;
    nsresult __result = inner.GetTitle(&value);
    CheckException(__result);
    return value;
  }
  void Title(PRUnichar* aTitle){
    nsresult __result = inner.SetTitle(aTitle);
    CheckException(__result);
  }

  /* attribute boolean allowNewBrowserWindows; */
  PRBool AllowNewBrowserWindows(){
    PRBool value;
    nsresult __result = inner.GetAllowNewBrowserWindows(&value);
    CheckException(__result);
    return value;
  }
  void AllowNewBrowserWindows(PRBool aAllowNewBrowserWindows){
    nsresult __result = inner.SetAllowNewBrowserWindows(aAllowNewBrowserWindows);
    CheckException(__result);
  }

  /* nsIWebBrowserChrome createNewBrowserWindow (in long aChromeFlags, in nsIWebBrowserChrome aParent); */
  nsIWebBrowserChromeD  CreateNewBrowserWindow(PRInt32 aChromeFlags, nsIWebBrowserChromeD aParent){
    nsIWebBrowserChrome _retval;
    nsresult __result = inner.CreateNewBrowserWindow(aChromeFlags, aParent ? cast(nsIWebBrowserChrome)aParent : null, &_retval);
    CheckException(__result);
    return new nsIWebBrowserChromeD(_retval);
  }

  /* void loadURL (in string aURL); */
  void LoadURL(char*aURL){
    nsresult __result = inner.LoadURL(aURL);
    CheckException(__result);
  }

  /* void loadHomePage (); */
  void LoadHomePage(){
    nsresult __result = inner.LoadHomePage();
    CheckException(__result);
  }

private:
  nsIQABrowserUIGlue inner;

}

