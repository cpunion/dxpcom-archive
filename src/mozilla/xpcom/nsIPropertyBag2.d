/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPropertyBag2.idl
 */

module mozilla.xpcom.nsIPropertyBag2;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIPropertyBag;


/* starting interface:    nsIPropertyBag2 */
const char[] NS_IPROPERTYBAG2_IID_STR = "9bb35f13-0096-4a31-833a-acd97001132d";

const nsIID NS_IPROPERTYBAG2_IID= 
  {0x9bb35f13, 0x0096, 0x4a31, 
    [ 0x83, 0x3a, 0xac, 0xd9, 0x70, 0x01, 0x13, 0x2d ]};

extern(Windows)
interface nsIPropertyBag2 : nsIPropertyBag {
  static const char[] IID_STR = NS_IPROPERTYBAG2_IID_STR;
  static const nsIID IID = NS_IPROPERTYBAG2_IID;

  /* PRInt32 getPropertyAsInt32 (in AString prop); */
  nsresult GetPropertyAsInt32(nsAString * prop, PRInt32 *_retval);

  /* PRUint32 getPropertyAsUint32 (in AString prop); */
  nsresult GetPropertyAsUint32(nsAString * prop, PRUint32 *_retval);

  /* PRInt64 getPropertyAsInt64 (in AString prop); */
  nsresult GetPropertyAsInt64(nsAString * prop, PRInt64 *_retval);

  /* PRUint64 getPropertyAsUint64 (in AString prop); */
  nsresult GetPropertyAsUint64(nsAString * prop, PRUint64 *_retval);

  /* double getPropertyAsDouble (in AString prop); */
  nsresult GetPropertyAsDouble(nsAString * prop, double *_retval);

  /* AString getPropertyAsAString (in AString prop); */
  nsresult GetPropertyAsAString(nsAString * prop, nsAString * _retval);

  /* ACString getPropertyAsACString (in AString prop); */
  nsresult GetPropertyAsACString(nsAString * prop, nsACString * _retval);

  /* AUTF8String getPropertyAsAUTF8String (in AString prop); */
  nsresult GetPropertyAsAUTF8String(nsAString * prop, nsACString * _retval);

  /* boolean getPropertyAsBool (in AString prop); */
  nsresult GetPropertyAsBool(nsAString * prop, PRBool *_retval);

  /**
   * This method returns null if the value exists, but is null.
   */
  /* void getPropertyAsInterface (in AString prop, in nsIIDRef iid, [iid_is (iid), retval] out nsQIResult result); */
  nsresult GetPropertyAsInterface(nsAString * prop, nsIID * iid, void * *result);

}

