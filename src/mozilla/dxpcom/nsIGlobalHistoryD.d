/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIGlobalHistory.idl
 */

module mozilla.dxpcom.nsIGlobalHistoryD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIGlobalHistory;


public import mozilla.dxpcom.nsIGlobalHistoryD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIGlobalHistory */
class nsIGlobalHistoryD : public nsISupportsD {

  static const nsIID IID = NS_IGLOBALHISTORY_IID;


  alias nsIGlobalHistory InnerType;

  this(nsIGlobalHistory intr){
    super(intr);
    this.inner = intr;
  }

  nsIGlobalHistory opCast() {
    return inner;
  }

  void opAssign(nsIGlobalHistory value) {
    inner = value;
  }

  /**
     * addPage
     * Add a page to the history
     *
     * @param aURL the url to the page
     */
  /* void addPage (in string aURL); */
  void AddPage(char*aURL){
    nsresult __result = inner.AddPage(aURL);
    CheckException(__result);
  }

  /**
     * isVisited
     * Checks to see if the given page is in history
     *
     * @return true if a page has been passed into addPage().
     * @param aURL the url to the page
     */
  /* boolean isVisited (in string aURL); */
  PRBool IsVisited(char*aURL){
    PRBool _retval;
    nsresult __result = inner.IsVisited(aURL, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIGlobalHistory inner;

}

