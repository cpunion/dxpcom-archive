/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFNode.idl
 */

module mozilla.xpcom.nsIRDFNode;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIRDFNode */
const char[] NS_IRDFNODE_IID_STR = "0f78da50-8321-11d2-8eac-00805f29f370";

const nsIID NS_IRDFNODE_IID= 
  {0x0f78da50, 0x8321, 0x11d2, 
    [ 0x8e, 0xac, 0x00, 0x80, 0x5f, 0x29, 0xf3, 0x70 ]};

extern(Windows)
interface nsIRDFNode : nsISupports {
  static const char[] IID_STR = NS_IRDFNODE_IID_STR;
  static const nsIID IID = NS_IRDFNODE_IID;

  /* boolean EqualsNode (in nsIRDFNode aNode); */
  nsresult EqualsNode(nsIRDFNode aNode, PRBool *_retval);

}

