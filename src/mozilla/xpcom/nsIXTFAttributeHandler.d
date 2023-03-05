/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXTFAttributeHandler.idl
 */

module mozilla.xpcom.nsIXTFAttributeHandler;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIAtom; /* forward declaration */


/* starting interface:    nsIXTFAttributeHandler */
const char[] NS_IXTFATTRIBUTEHANDLER_IID_STR = "72152f7f-7e8d-43fd-8477-3f29ae8d240d";

const nsIID NS_IXTFATTRIBUTEHANDLER_IID= 
  {0x72152f7f, 0x7e8d, 0x43fd, 
    [ 0x84, 0x77, 0x3f, 0x29, 0xae, 0x8d, 0x24, 0x0d ]};

extern(Windows)
interface nsIXTFAttributeHandler : nsISupports {
  static const char[] IID_STR = NS_IXTFATTRIBUTEHANDLER_IID_STR;
  static const nsIID IID = NS_IXTFATTRIBUTEHANDLER_IID;

  /* boolean handlesAttribute (in nsIAtom name); */
  nsresult HandlesAttribute(nsIAtom name, PRBool *_retval);

  /* void setAttribute (in nsIAtom name, in AString newValue); */
  nsresult SetAttribute(nsIAtom name, nsAString * newValue);

  /* void removeAttribute (in nsIAtom name); */
  nsresult RemoveAttribute(nsIAtom name);

  /* AString getAttribute (in nsIAtom name); */
  nsresult GetAttribute(nsIAtom name, nsAString * _retval);

  /* boolean hasAttribute (in nsIAtom name); */
  nsresult HasAttribute(nsIAtom name, PRBool *_retval);

  /* unsigned long getAttributeCount (); */
  nsresult GetAttributeCount(PRUint32 *_retval);

  /* nsIAtom getAttributeNameAt (in unsigned long index); */
  nsresult GetAttributeNameAt(PRUint32 index, nsIAtom *_retval);

}

