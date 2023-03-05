/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIASN1PrintableItem.idl
 */

module mozilla.xpcom.nsIASN1PrintableItem;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIASN1Object;


/* starting interface:    nsIASN1PrintableItem */
const char[] NS_IASN1PRINTABLEITEM_IID_STR = "114e1142-1dd2-11b2-ac26-b6db19d9184a";

const nsIID NS_IASN1PRINTABLEITEM_IID= 
  {0x114e1142, 0x1dd2, 0x11b2, 
    [ 0xac, 0x26, 0xb6, 0xdb, 0x19, 0xd9, 0x18, 0x4a ]};

extern(Windows)
interface nsIASN1PrintableItem : nsIASN1Object {
  static const char[] IID_STR = NS_IASN1PRINTABLEITEM_IID_STR;
  static const nsIID IID = NS_IASN1PRINTABLEITEM_IID;

  /* [noscript] void setData (in charPtr data, in unsigned long len); */
  nsresult SetData(char * data, PRUint32 len);

  /* [noscript] void getData (out charPtr data, out unsigned long len); */
  nsresult GetData(char * *data, PRUint32 *len);

}

