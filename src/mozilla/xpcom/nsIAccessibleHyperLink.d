/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessibleHyperLink.idl
 */

module mozilla.xpcom.nsIAccessibleHyperLink;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIAccessible; /* forward declaration */


/* starting interface:    nsIAccessibleHyperLink */
const char[] NS_IACCESSIBLEHYPERLINK_IID_STR = "a492c7d6-1dd1-11b2-9bc0-80614884799a";

const nsIID NS_IACCESSIBLEHYPERLINK_IID= 
  {0xa492c7d6, 0x1dd1, 0x11b2, 
    [ 0x9b, 0xc0, 0x80, 0x61, 0x48, 0x84, 0x79, 0x9a ]};

extern(Windows)
interface nsIAccessibleHyperLink : nsISupports {
  static const char[] IID_STR = NS_IACCESSIBLEHYPERLINK_IID_STR;
  static const nsIID IID = NS_IACCESSIBLEHYPERLINK_IID;

  /* readonly attribute long anchors; */
  nsresult GetAnchors(PRInt32 *aAnchors);

  /* readonly attribute long startIndex; */
  nsresult GetStartIndex(PRInt32 *aStartIndex);

  /* readonly attribute long endIndex; */
  nsresult GetEndIndex(PRInt32 *aEndIndex);

  /* nsIURI getURI (in long i); */
  nsresult GetURI(PRInt32 i, nsIURI *_retval);

  /* nsIAccessible getObject (in long i); */
  nsresult GetObject(PRInt32 i, nsIAccessible *_retval);

  /* boolean isValid (); */
  nsresult IsValid(PRBool *_retval);

  /* boolean isSelected (); */
  nsresult IsSelected(PRBool *_retval);

}

