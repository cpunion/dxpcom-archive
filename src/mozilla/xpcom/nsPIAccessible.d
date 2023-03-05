/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsPIAccessible.idl
 */

module mozilla.xpcom.nsPIAccessible;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIAccessible; /* forward declaration */


/* starting interface:    nsPIAccessible */
const char[] NS_PIACCESSIBLE_IID_STR = "52f1be88-84f7-4f7f-b31c-062afe7df15d";

const nsIID NS_PIACCESSIBLE_IID= 
  {0x52f1be88, 0x84f7, 0x4f7f, 
    [ 0xb3, 0x1c, 0x06, 0x2a, 0xfe, 0x7d, 0xf1, 0x5d ]};

extern(Windows)
interface nsPIAccessible : nsISupports {
  static const char[] IID_STR = NS_PIACCESSIBLE_IID_STR;
  static const nsIID IID = NS_PIACCESSIBLE_IID;

  /* [noscript] void setParent (in nsIAccessible aAccParent); */
  nsresult SetParent(nsIAccessible aAccParent);

  /* [noscript] void setFirstChild (in nsIAccessible aAccFirstChild); */
  nsresult SetFirstChild(nsIAccessible aAccFirstChild);

  /* [noscript] void setNextSibling (in nsIAccessible aAccNextSibling); */
  nsresult SetNextSibling(nsIAccessible aAccNextSibling);

  /**
   * Set the child count to -1 (unknown) and null out cached child pointers
   */
  /* [noscript] void invalidateChildren (); */
  nsresult InvalidateChildren();

  /* [noscript] void fireToolkitEvent (in unsigned long aEvent, in nsIAccessible aTarget, in voidPtr aData); */
  nsresult FireToolkitEvent(PRUint32 aEvent, nsIAccessible aTarget, void * aData);

}

