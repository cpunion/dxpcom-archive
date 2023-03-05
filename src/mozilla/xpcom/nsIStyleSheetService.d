/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIStyleSheetService.idl
 */

module mozilla.xpcom.nsIStyleSheetService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsIStyleSheetService */
const char[] NS_ISTYLESHEETSERVICE_IID_STR = "41d979dc-ea03-4235-86ff-1e3c090c5630";

const nsIID NS_ISTYLESHEETSERVICE_IID= 
  {0x41d979dc, 0xea03, 0x4235, 
    [ 0x86, 0xff, 0x1e, 0x3c, 0x09, 0x0c, 0x56, 0x30 ]};

extern(Windows)
interface nsIStyleSheetService : nsISupports {
  static const char[] IID_STR = NS_ISTYLESHEETSERVICE_IID_STR;
  static const nsIID IID = NS_ISTYLESHEETSERVICE_IID;

  enum { AGENT_SHEET = 0U };

  enum { USER_SHEET = 1U };

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
  nsresult LoadAndRegisterSheet(nsIURI sheetURI, PRUint32 type);

  /**
   * Returns true if a style sheet at |sheetURI| has previously been
   * added to the list of style sheets specified by |type|.
   */
  /* boolean sheetRegistered (in nsIURI sheetURI, in unsigned long type); */
  nsresult SheetRegistered(nsIURI sheetURI, PRUint32 type, PRBool *_retval);

  /**
   * Remove the style sheet at |sheetURI| from the list of style
   * sheets specified by |type|.  All documents loaded after
   * this call will no longer use the style sheet.
   */
  /* void unregisterSheet (in nsIURI sheetURI, in unsigned long type); */
  nsresult UnregisterSheet(nsIURI sheetURI, PRUint32 type);

}

