/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIASN1Tree.idl
 */

module mozilla.xpcom.nsIASN1Tree;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsITreeView;
public import mozilla.xpcom.nsIX509Cert;


/* starting interface:    nsIASN1Tree */
const char[] NS_IASN1TREE_IID_STR = "c727b2f2-1dd1-11b2-95df-f63c15b4cd35";

const nsIID NS_IASN1TREE_IID= 
  {0xc727b2f2, 0x1dd1, 0x11b2, 
    [ 0x95, 0xdf, 0xf6, 0x3c, 0x15, 0xb4, 0xcd, 0x35 ]};

extern(Windows)
interface nsIASN1Tree : nsITreeView {
  static const char[] IID_STR = NS_IASN1TREE_IID_STR;
  static const nsIID IID = NS_IASN1TREE_IID;

  /* void loadASN1Structure (in nsIASN1Object asn1Object); */
  nsresult LoadASN1Structure(nsIASN1Object asn1Object);

  /* AString getDisplayData (in unsigned long index); */
  nsresult GetDisplayData(PRUint32 index, nsAString * _retval);

}

