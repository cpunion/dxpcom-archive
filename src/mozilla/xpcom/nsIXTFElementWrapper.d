/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXTFElementWrapper.idl
 */

module mozilla.xpcom.nsIXTFElementWrapper;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIAtom; /* forward declaration */

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */

public import mozilla.xpcom.nsIDOMDocument; /* forward declaration */


/* starting interface:    nsIXTFElementWrapper */
const char[] NS_IXTFELEMENTWRAPPER_IID_STR = "444d0276-3302-4d35-a74e-25c4e9c483c9";

const nsIID NS_IXTFELEMENTWRAPPER_IID= 
  {0x444d0276, 0x3302, 0x4d35, 
    [ 0xa7, 0x4e, 0x25, 0xc4, 0xe9, 0xc4, 0x83, 0xc9 ]};

extern(Windows)
interface nsIXTFElementWrapper : nsISupports {
  static const char[] IID_STR = NS_IXTFELEMENTWRAPPER_IID_STR;
  static const nsIID IID = NS_IXTFELEMENTWRAPPER_IID;

  /* readonly attribute nsIDOMElement elementNode; */
  nsresult GetElementNode(nsIDOMElement  *aElementNode);

  /* readonly attribute nsIDOMElement documentFrameElement; */
  nsresult GetDocumentFrameElement(nsIDOMElement  *aDocumentFrameElement);

  /**
   * Events can be unmasked by setting the corresponding bit as given
   * by the NOTIFY_* constants in nsIXTFElement and nsIXTFVisual:
   */
  /* attribute unsigned long notificationMask; */
  nsresult GetNotificationMask(PRUint32 *aNotificationMask);
  nsresult SetNotificationMask(PRUint32 aNotificationMask);

  /**
   * Sets the intrinsic state for the element.
   * @see nsIContent::IntrinsicState().
   */
  /* void setIntrinsicState (in long newState); */
  nsresult SetIntrinsicState(PRInt32 newState);

}

