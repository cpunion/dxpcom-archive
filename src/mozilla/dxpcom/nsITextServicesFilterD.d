/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITextServicesFilter.idl
 */

module mozilla.dxpcom.nsITextServicesFilterD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsITextServicesFilter;


public import mozilla.dxpcom.nsITextServicesFilterD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMNode;

public import mozilla.dxpcom.nsIDOMNodeD;


/* starting wrapper class:    nsITextServicesFilter */
class nsITextServicesFilterD : public nsISupportsD {

  static const nsIID IID = NS_ITEXTSERVICESFILTER_IID;


  alias nsITextServicesFilter InnerType;

  this(nsITextServicesFilter intr){
    super(intr);
    this.inner = intr;
  }

  nsITextServicesFilter opCast() {
    return inner;
  }

  void opAssign(nsITextServicesFilter value) {
    inner = value;
  }

  /**
   * Indicates whether the content node should be skipped by the iterator
   *  @param aNode - node to skip
   */
  /* boolean skip (in nsIDOMNode aNode); */
  PRBool Skip(nsIDOMNodeD aNode){
    PRBool _retval;
    nsresult __result = inner.Skip(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsITextServicesFilter inner;

}

