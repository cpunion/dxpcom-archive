/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsPIAccessNode.idl
 */

module mozilla.xpcom.nsPIAccessNode;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsPIAccessNode */
const char[] NS_PIACCESSNODE_IID_STR = "b3507946-4a44-4e40-b66c-f23e320997c5";

const nsIID NS_PIACCESSNODE_IID= 
  {0xb3507946, 0x4a44, 0x4e40, 
    [ 0xb6, 0x6c, 0xf2, 0x3e, 0x32, 0x09, 0x97, 0xc5 ]};

extern(Windows)
interface nsPIAccessNode : nsISupports {
  static const char[] IID_STR = NS_PIACCESSNODE_IID_STR;
  static const nsIID IID = NS_PIACCESSNODE_IID;

  /* [noscript] void init (); */
  nsresult Init();

  /* [noscript] void shutdown (); */
  nsresult Shutdown();

  /* [notxpcom] nsIFrame GetFrame (); */
  nsIFrame  GetFrame();

}

