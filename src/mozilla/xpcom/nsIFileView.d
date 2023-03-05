/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFileView.idl
 */

module mozilla.xpcom.nsIFileView;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIArray; /* forward declaration */

public import mozilla.xpcom.nsIFile; /* forward declaration */


/* starting interface:    nsIFileView */
const char[] NS_IFILEVIEW_IID_STR = "60b320d2-1dd2-11b2-bd73-dc3575f78ddd";

const nsIID NS_IFILEVIEW_IID= 
  {0x60b320d2, 0x1dd2, 0x11b2, 
    [ 0xbd, 0x73, 0xdc, 0x35, 0x75, 0xf7, 0x8d, 0xdd ]};

extern(Windows)
interface nsIFileView : nsISupports {
  static const char[] IID_STR = NS_IFILEVIEW_IID_STR;
  static const nsIID IID = NS_IFILEVIEW_IID;

  enum { sortName = 0 };

  enum { sortSize = 1 };

  enum { sortDate = 2 };

  /* attribute boolean showHiddenFiles; */
  nsresult GetShowHiddenFiles(PRBool *aShowHiddenFiles);
  nsresult SetShowHiddenFiles(PRBool aShowHiddenFiles);

  /* attribute boolean showOnlyDirectories; */
  nsresult GetShowOnlyDirectories(PRBool *aShowOnlyDirectories);
  nsresult SetShowOnlyDirectories(PRBool aShowOnlyDirectories);

  /* readonly attribute short sortType; */
  nsresult GetSortType(PRInt16 *aSortType);

  /* readonly attribute boolean reverseSort; */
  nsresult GetReverseSort(PRBool *aReverseSort);

  /* void sort (in short sortType, in boolean reverseSort); */
  nsresult Sort(PRInt16 sortType, PRBool reverseSort);

  /* void setDirectory (in nsIFile directory); */
  nsresult SetDirectory(nsIFile directory);

  /* void setFilter (in wstring filterString); */
  nsresult SetFilter(PRUnichar *filterString);

  /* readonly attribute nsIArray selectedFiles; */
  nsresult GetSelectedFiles(nsIArray  *aSelectedFiles);

}

