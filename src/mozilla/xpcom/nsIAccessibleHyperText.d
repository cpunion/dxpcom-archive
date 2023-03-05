/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessibleHyperText.idl
 */

module mozilla.xpcom.nsIAccessibleHyperText;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIAccessibleHyperLink;


/* starting interface:    nsIAccessibleHyperText */
const char[] NS_IACCESSIBLEHYPERTEXT_IID_STR = "8f18d922-1dd2-11b2-82ea-829b78a44413";

const nsIID NS_IACCESSIBLEHYPERTEXT_IID= 
  {0x8f18d922, 0x1dd2, 0x11b2, 
    [ 0x82, 0xea, 0x82, 0x9b, 0x78, 0xa4, 0x44, 0x13 ]};

extern(Windows)
interface nsIAccessibleHyperText : nsISupports {
  static const char[] IID_STR = NS_IACCESSIBLEHYPERTEXT_IID_STR;
  static const nsIID IID = NS_IACCESSIBLEHYPERTEXT_IID;

  /* readonly attribute long links; */
  nsresult GetLinks(PRInt32 *aLinks);

  /* nsIAccessibleHyperLink getLink (in long index); */
  nsresult GetLink(PRInt32 index, nsIAccessibleHyperLink *_retval);

  /* long getLinkIndex (in long charIndex); */
  nsresult GetLinkIndex(PRInt32 charIndex, PRInt32 *_retval);

  /* long getSelectedLinkIndex (); */
  nsresult GetSelectedLinkIndex(PRInt32 *_retval);

}

