/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbAddressCollecter.idl
 */

module mozilla.xpcom.nsIAbAddressCollecter;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIAbCard; /* forward declaration */


/* starting interface:    nsIAbAddressCollecter */
const char[] NS_IABADDRESSCOLLECTER_IID_STR = "fe04c8e6-501e-11d3-a527-0060b0fc04b7";

const nsIID NS_IABADDRESSCOLLECTER_IID= 
  {0xfe04c8e6, 0x501e, 0x11d3, 
    [ 0xa5, 0x27, 0x00, 0x60, 0xb0, 0xfc, 0x04, 0xb7 ]};

extern(Windows)
interface nsIAbAddressCollecter : nsISupports {
  static const char[] IID_STR = NS_IABADDRESSCOLLECTER_IID_STR;
  static const nsIID IID = NS_IABADDRESSCOLLECTER_IID;

  /* void collectAddress (in string aAddress, in boolean aCreateCard, in unsigned long aSendFormat); */
  nsresult CollectAddress(char *aAddress, PRBool aCreateCard, PRUint32 aSendFormat);

  /* void collectUnicodeAddress (in wstring aAddress, in boolean aCreateCard, in unsigned long aSendFormat); */
  nsresult CollectUnicodeAddress(PRUnichar *aAddress, PRBool aCreateCard, PRUint32 aSendFormat);

  /* nsIAbCard getCardFromAttribute (in string aName, in string aValue); */
  nsresult GetCardFromAttribute(char *aName, char *aValue, nsIAbCard *_retval);

}

