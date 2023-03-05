/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISelectionPrivate.idl
 */

module mozilla.xpcom.nsISelectionPrivate;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISelectionListener;
public import mozilla.xpcom.nsIEnumerator;

public import mozilla.xpcom.nsIDOMRange; /* forward declaration */

public import mozilla.xpcom.nsISelectionListener; /* forward declaration */


/* starting interface:    nsISelectionPrivate */
const char[] NS_ISELECTIONPRIVATE_IID_STR = "3225ca54-d7e1-4ff5-8ee9-091b0bfcda1f";

const nsIID NS_ISELECTIONPRIVATE_IID= 
  {0x3225ca54, 0xd7e1, 0x4ff5, 
    [ 0x8e, 0xe9, 0x09, 0x1b, 0x0b, 0xfc, 0xda, 0x1f ]};

extern(Windows)
interface nsISelectionPrivate : nsISupports {
  static const char[] IID_STR = NS_ISELECTIONPRIVATE_IID_STR;
  static const nsIID IID = NS_ISELECTIONPRIVATE_IID;

  enum { ENDOFPRECEDINGLINE = 0 };

  enum { STARTOFNEXTLINE = 1 };

  /* attribute boolean interlinePosition; */
  nsresult GetInterlinePosition(PRBool *aInterlinePosition);
  nsresult SetInterlinePosition(PRBool aInterlinePosition);

  /* void startBatchChanges (); */
  nsresult StartBatchChanges();

  /* void endBatchChanges (); */
  nsresult EndBatchChanges();

  /* nsIEnumerator getEnumerator (); */
  nsresult GetEnumerator(nsIEnumerator *_retval);

  /* wstring toStringWithFormat (in string formatType, in unsigned long flags, in PRInt32 wrapColumn); */
  nsresult ToStringWithFormat(char *formatType, PRUint32 flags, PRInt32 wrapColumn, PRUnichar **_retval);

  /* void addSelectionListener (in nsISelectionListener newListener); */
  nsresult AddSelectionListener(nsISelectionListener newListener);

  /* void removeSelectionListener (in nsISelectionListener listenerToRemove); */
  nsresult RemoveSelectionListener(nsISelectionListener listenerToRemove);

  enum { TABLESELECTION_NONE = 0 };

  enum { TABLESELECTION_CELL = 1 };

  enum { TABLESELECTION_ROW = 2 };

  enum { TABLESELECTION_COLUMN = 3 };

  enum { TABLESELECTION_TABLE = 4 };

  enum { TABLESELECTION_ALLCELLS = 5 };

  /** Test if supplied range points to a single table element:
      *    Result is one of above constants. "None" means
      *    a table element isn't selected.
      */
  /* long getTableSelectionType (in nsIDOMRange range); */
  nsresult GetTableSelectionType(nsIDOMRange range, PRInt32 *_retval);

  /* [noscript] void setPresShell (in nsIPresShell aPresShell); */
  nsresult SetPresShell(nsIPresShell * aPresShell);

  /* [noscript] attribute boolean canCacheFrameOffset; */
  nsresult GetCanCacheFrameOffset(PRBool *aCanCacheFrameOffset);
  nsresult SetCanCacheFrameOffset(PRBool aCanCacheFrameOffset);

  /* [noscript] void getCachedFrameOffset (in nsIFrame aFrame, in PRInt32 inOffset, in nsPointRef aPoint); */
  nsresult GetCachedFrameOffset(nsIFrame * aFrame, PRInt32 inOffset, nsPoint * aPoint);

  /* [noscript] nsIFrameSelection getFrameSelection (); */
  nsresult GetFrameSelection(nsIFrameSelection *_retval);

}

