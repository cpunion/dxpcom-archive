/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbView.idl
 */

module mozilla.xpcom.nsIAbView;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISupportsArray;

public import mozilla.xpcom.nsIAbCard; /* forward declaration */

public import mozilla.xpcom.nsIAbDirectory; /* forward declaration */


/* starting interface:    nsIAbViewListener */
const char[] NS_IABVIEWLISTENER_IID_STR = "79ad5d6e-1dd2-11b2-addd-f547dab50d75";

const nsIID NS_IABVIEWLISTENER_IID= 
  {0x79ad5d6e, 0x1dd2, 0x11b2, 
    [ 0xad, 0xdd, 0xf5, 0x47, 0xda, 0xb5, 0x0d, 0x75 ]};

extern(Windows)
interface nsIAbViewListener : nsISupports {
  static const char[] IID_STR = NS_IABVIEWLISTENER_IID_STR;
  static const nsIID IID = NS_IABVIEWLISTENER_IID;

  /* void onSelectionChanged (); */
  nsresult OnSelectionChanged();

  /* void onCountChanged (in long total); */
  nsresult OnCountChanged(PRInt32 total);

}


/* starting interface:    nsIAbView */
const char[] NS_IABVIEW_IID_STR = "e35c015c-1dd1-11b2-9494-f88326252aae";

const nsIID NS_IABVIEW_IID= 
  {0xe35c015c, 0x1dd1, 0x11b2, 
    [ 0x94, 0x94, 0xf8, 0x83, 0x26, 0x25, 0x2a, 0xae ]};

extern(Windows)
interface nsIAbView : nsISupports {
  static const char[] IID_STR = NS_IABVIEW_IID_STR;
  static const nsIID IID = NS_IABVIEW_IID;

  /**
     * returns the actual sortColumn.  migration, switching from mozilla 
     * to netscape 6.x, etc, could cause
     * the "persisted" sortColumn to be bogus.
     */
  /* wstring init (in string URI, in boolean aSearchView, in nsIAbViewListener abViewListener, in wstring sortColumn, in wstring sortDirection); */
  nsresult Init(char *URI, PRBool aSearchView, nsIAbViewListener abViewListener, PRUnichar *sortColumn, PRUnichar *sortDirection, PRUnichar **_retval);

  /* void close (); */
  nsresult Close();

  /**
     * sortBy does not optimize for the case when sortColumn and sortDirection
     * is identical since the last call, the caller is responsible optimizing
     * for that case
     */
  /* void sortBy (in wstring sortColumn, in wstring sortDirection); */
  nsresult SortBy(PRUnichar *sortColumn, PRUnichar *sortDirection);

  /* readonly attribute string URI; */
  nsresult GetURI(char * *aURI);

  /* readonly attribute AString sortColumn; */
  nsresult GetSortColumn(nsAString * aSortColumn);

  /* readonly attribute AString sortDirection; */
  nsresult GetSortDirection(nsAString * aSortDirection);

  /* readonly attribute nsIAbDirectory directory; */
  nsresult GetDirectory(nsIAbDirectory  *aDirectory);

  /* nsIAbCard getCardFromRow (in long row); */
  nsresult GetCardFromRow(PRInt32 row, nsIAbCard *_retval);

  /* void selectAll (); */
  nsresult SelectAll();

  /* void deleteSelectedCards (); */
  nsresult DeleteSelectedCards();

  /* void swapFirstNameLastName (); */
  nsresult SwapFirstNameLastName();

  /* readonly attribute nsISupportsArray selectedAddresses; */
  nsresult GetSelectedAddresses(nsISupportsArray  *aSelectedAddresses);

}

