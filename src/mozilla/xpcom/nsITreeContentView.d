/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITreeContentView.idl
 */

module mozilla.xpcom.nsITreeContentView;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIDOMElement;


/* starting interface:    nsITreeContentView */
const char[] NS_ITREECONTENTVIEW_IID_STR = "5ef62896-0c0a-41f1-bb3c-44a60f5dfdab";

const nsIID NS_ITREECONTENTVIEW_IID= 
  {0x5ef62896, 0x0c0a, 0x41f1, 
    [ 0xbb, 0x3c, 0x44, 0xa6, 0x0f, 0x5d, 0xfd, 0xab ]};

extern(Windows)
interface nsITreeContentView : nsISupports {
  static const char[] IID_STR = NS_ITREECONTENTVIEW_IID_STR;
  static const nsIID IID = NS_ITREECONTENTVIEW_IID;

  /**
   * Retrieve the content item associated with the specified index.
   */
  /* nsIDOMElement getItemAtIndex (in long index); */
  nsresult GetItemAtIndex(PRInt32 index, nsIDOMElement *_retval);

  /**
   * Retrieve the index associated with the specified content item.
   */
  /* long getIndexOfItem (in nsIDOMElement item); */
  nsresult GetIndexOfItem(nsIDOMElement item, PRInt32 *_retval);

}

