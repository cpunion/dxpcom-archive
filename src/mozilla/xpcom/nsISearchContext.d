/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISearchContext.idl
 */

module mozilla.xpcom.nsISearchContext;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMWindowInternal; /* forward declaration */


/* starting interface:    nsISearchContext */
const char[] NS_ISEARCHCONTEXT_IID_STR = "31aba0f0-2d93-11d3-8069-00600811a9c3";

const nsIID NS_ISEARCHCONTEXT_IID= 
  {0x31aba0f0, 0x2d93, 0x11d3, 
    [ 0x80, 0x69, 0x00, 0x60, 0x08, 0x11, 0xa9, 0xc3 ]};

extern(Windows)
interface nsISearchContext : nsISupports {
  static const char[] IID_STR = NS_ISEARCHCONTEXT_IID_STR;
  static const nsIID IID = NS_ISEARCHCONTEXT_IID;

  /* attribute wstring searchString; */
  nsresult GetSearchString(PRUnichar * *aSearchString);
  nsresult SetSearchString(PRUnichar * aSearchString);

  /* attribute wstring replaceString; */
  nsresult GetReplaceString(PRUnichar * *aReplaceString);
  nsresult SetReplaceString(PRUnichar * aReplaceString);

  /* attribute boolean searchBackwards; */
  nsresult GetSearchBackwards(PRBool *aSearchBackwards);
  nsresult SetSearchBackwards(PRBool aSearchBackwards);

  /* attribute boolean caseSensitive; */
  nsresult GetCaseSensitive(PRBool *aCaseSensitive);
  nsresult SetCaseSensitive(PRBool aCaseSensitive);

  /* attribute boolean wrapSearch; */
  nsresult GetWrapSearch(PRBool *aWrapSearch);
  nsresult SetWrapSearch(PRBool aWrapSearch);

  /* readonly attribute nsIDOMWindowInternal targetWindow; */
  nsresult GetTargetWindow(nsIDOMWindowInternal  *aTargetWindow);

  /* attribute nsIDOMWindowInternal findDialog; */
  nsresult GetFindDialog(nsIDOMWindowInternal  *aFindDialog);
  nsresult SetFindDialog(nsIDOMWindowInternal  aFindDialog);

  /* attribute nsIDOMWindowInternal replaceDialog; */
  nsresult GetReplaceDialog(nsIDOMWindowInternal  *aReplaceDialog);
  nsresult SetReplaceDialog(nsIDOMWindowInternal  aReplaceDialog);

}

