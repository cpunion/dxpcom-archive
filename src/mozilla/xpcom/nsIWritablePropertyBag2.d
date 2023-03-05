/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWritablePropertyBag2.idl
 */

module mozilla.xpcom.nsIWritablePropertyBag2;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIPropertyBag2;


/* starting interface:    nsIWritablePropertyBag2 */
const char[] NS_IWRITABLEPROPERTYBAG2_IID_STR = "ee42c54a-19d3-472b-8bc3-76318d5ab5f4";

const nsIID NS_IWRITABLEPROPERTYBAG2_IID= 
  {0xee42c54a, 0x19d3, 0x472b, 
    [ 0x8b, 0xc3, 0x76, 0x31, 0x8d, 0x5a, 0xb5, 0xf4 ]};

extern(Windows)
interface nsIWritablePropertyBag2 : nsIPropertyBag2 {
  static const char[] IID_STR = NS_IWRITABLEPROPERTYBAG2_IID_STR;
  static const nsIID IID = NS_IWRITABLEPROPERTYBAG2_IID;

  /* void setPropertyAsInt32 (in AString prop, in PRInt32 value); */
  nsresult SetPropertyAsInt32(nsAString * prop, PRInt32 value);

  /* void setPropertyAsUint32 (in AString prop, in PRUint32 value); */
  nsresult SetPropertyAsUint32(nsAString * prop, PRUint32 value);

  /* void setPropertyAsInt64 (in AString prop, in PRInt64 value); */
  nsresult SetPropertyAsInt64(nsAString * prop, PRInt64 value);

  /* void setPropertyAsUint64 (in AString prop, in PRUint64 value); */
  nsresult SetPropertyAsUint64(nsAString * prop, PRUint64 value);

  /* void setPropertyAsDouble (in AString prop, in double value); */
  nsresult SetPropertyAsDouble(nsAString * prop, double value);

  /* void setPropertyAsAString (in AString prop, in AString value); */
  nsresult SetPropertyAsAString(nsAString * prop, nsAString * value);

  /* void setPropertyAsACString (in AString prop, in ACString value); */
  nsresult SetPropertyAsACString(nsAString * prop, nsACString * value);

  /* void setPropertyAsAUTF8String (in AString prop, in AUTF8String value); */
  nsresult SetPropertyAsAUTF8String(nsAString * prop, nsACString * value);

  /* void setPropertyAsBool (in AString prop, in boolean value); */
  nsresult SetPropertyAsBool(nsAString * prop, PRBool value);

  /* void setPropertyAsInterface (in AString prop, in nsISupports value); */
  nsresult SetPropertyAsInterface(nsAString * prop, nsISupports value);

}

