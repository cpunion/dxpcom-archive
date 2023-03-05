/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIStyleSheetService.idl
 */

module mozilla.dxpcom.nsIStyleSheetServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIStyleSheetService;


public import mozilla.dxpcom.nsIStyleSheetServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIStyleSheetService */
class nsIStyleSheetServiceD : public nsISupportsD {

  static const nsIID IID = NS_ISTYLESHEETSERVICE_IID;


  alias nsIStyleSheetService InnerType;

  this(nsIStyleSheetService intr){
    super(intr);
    this.inner = intr;
  }

  nsIStyleSheetService opCast() {
    return inner;
  }

  void opAssign(nsIStyleSheetService value) {
    inner = value;
  }

  enum { AGENT_SHEET = 0U }

  enum { USER_SHEET = 1U }

  /**
   * Synchronously loads a style sheet from |sheetURI| and adds it to the list
   * of user or agent style sheets.
   *
   * A user sheet loaded via this API will come before userContent.css and
   * userChrome.css in the cascade (so the rules in it will have lower
   * precedence than rules in those sheets).
   *
   * An agent sheet loaded via this API will come after ua.css in the cascade
   * (so the rules in it will have higher precedence than rules in ua.css).
   *
   * The relative ordering of two user or two agent sheets loaded via
   * this API is undefined.
   */
  /* void loadAndRegisterSheet (in nsIURI sheetURI, in unsigned long type); */
  void LoadAndRegisterSheet(nsIURID sheetURI, PRUint32 type){
    nsresult __result = inner.LoadAndRegisterSheet(sheetURI ? cast(nsIURI)sheetURI : null, type);
    CheckException(__result);
  }

  /**
   * Returns true if a style sheet at |sheetURI| has previously been
   * added to the list of style sheets specified by |type|.
   */
  /* boolean sheetRegistered (in nsIURI sheetURI, in unsigned long type); */
  PRBool SheetRegistered(nsIURID sheetURI, PRUint32 type){
    PRBool _retval;
    nsresult __result = inner.SheetRegistered(sheetURI ? cast(nsIURI)sheetURI : null, type, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Remove the style sheet at |sheetURI| from the list of style
   * sheets specified by |type|.  All documents loaded after
   * this call will no longer use the style sheet.
   */
  /* void unregisterSheet (in nsIURI sheetURI, in unsigned long type); */
  void UnregisterSheet(nsIURID sheetURI, PRUint32 type){
    nsresult __result = inner.UnregisterSheet(sheetURI ? cast(nsIURI)sheetURI : null, type);
    CheckException(__result);
  }

private:
  nsIStyleSheetService inner;

}

