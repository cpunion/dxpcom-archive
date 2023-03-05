/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXSLTProcessorPrivate.idl
 */

module mozilla.dxpcom.nsIXSLTProcessorPrivateD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXSLTProcessorPrivate;


public import mozilla.dxpcom.nsIXSLTProcessorPrivateD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIXSLTProcessorPrivate */
class nsIXSLTProcessorPrivateD : public nsISupportsD {

  static const nsIID IID = NS_IXSLTPROCESSORPRIVATE_IID;


  alias nsIXSLTProcessorPrivate InnerType;

  this(nsIXSLTProcessorPrivate intr){
    super(intr);
    this.inner = intr;
  }

  nsIXSLTProcessorPrivate opCast() {
    return inner;
  }

  void opAssign(nsIXSLTProcessorPrivate value) {
    inner = value;
  }

  /**
   * Disables all loading of external documents, such as from
   * <xsl:import> and document()
   * Defaults to off and is *not* reset by calls to reset()
   */
  enum { DISABLE_ALL_LOADS = 1U }

  /**
   * Flags for this processor. Defaults to 0. See individual flags above
   * for documentation for effect of reset()
   */
  /* attribute unsigned long flags; */
  PRUint32 Flags(){
    PRUint32 value;
    nsresult __result = inner.GetFlags(&value);
    CheckException(__result);
    return value;
  }
  void Flags(PRUint32 aFlags){
    nsresult __result = inner.SetFlags(aFlags);
    CheckException(__result);
  }

private:
  nsIXSLTProcessorPrivate inner;

}

