/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIListBoxObject.idl
 */

module mozilla.xpcom.nsIListBoxObject;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIBoxObject;

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */


/* starting interface:    nsIListBoxObject */
const char[] NS_ILISTBOXOBJECT_IID_STR = "fde7c970-0b4e-49f4-b1eb-974ae6c96336";

const nsIID NS_ILISTBOXOBJECT_IID= 
  {0xfde7c970, 0x0b4e, 0x49f4, 
    [ 0xb1, 0xeb, 0x97, 0x4a, 0xe6, 0xc9, 0x63, 0x36 ]};

extern(Windows)
interface nsIListBoxObject : nsISupports {
  static const char[] IID_STR = NS_ILISTBOXOBJECT_IID_STR;
  static const nsIID IID = NS_ILISTBOXOBJECT_IID;

  /* readonly attribute nsIListBoxObject listboxBody; */
  nsresult GetListboxBody(nsIListBoxObject  *aListboxBody);

  /* long getRowCount (); */
  nsresult GetRowCount(PRInt32 *_retval);

  /* long getNumberOfVisibleRows (); */
  nsresult GetNumberOfVisibleRows(PRInt32 *_retval);

  /* long getIndexOfFirstVisibleRow (); */
  nsresult GetIndexOfFirstVisibleRow(PRInt32 *_retval);

  /* void ensureIndexIsVisible (in long rowIndex); */
  nsresult EnsureIndexIsVisible(PRInt32 rowIndex);

  /* void scrollToIndex (in long rowIndex); */
  nsresult ScrollToIndex(PRInt32 rowIndex);

  /* void scrollByLines (in long numLines); */
  nsresult ScrollByLines(PRInt32 numLines);

  /* nsIDOMElement getItemAtIndex (in long index); */
  nsresult GetItemAtIndex(PRInt32 index, nsIDOMElement *_retval);

  /* long getIndexOfItem (in nsIDOMElement item); */
  nsresult GetIndexOfItem(nsIDOMElement item, PRInt32 *_retval);

}

