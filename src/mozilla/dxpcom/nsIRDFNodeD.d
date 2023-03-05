/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFNode.idl
 */

module mozilla.dxpcom.nsIRDFNodeD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIRDFNode;


public import mozilla.dxpcom.nsIRDFNodeD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIRDFNode */
class nsIRDFNodeD : public nsISupportsD {

  static const nsIID IID = NS_IRDFNODE_IID;


  alias nsIRDFNode InnerType;

  this(nsIRDFNode intr){
    super(intr);
    this.inner = intr;
  }

  nsIRDFNode opCast() {
    return inner;
  }

  void opAssign(nsIRDFNode value) {
    inner = value;
  }

  /* boolean EqualsNode (in nsIRDFNode aNode); */
  PRBool EqualsNode(nsIRDFNodeD aNode){
    PRBool _retval;
    nsresult __result = inner.EqualsNode(aNode ? cast(nsIRDFNode)aNode : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIRDFNode inner;

}

