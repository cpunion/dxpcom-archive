/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBufEntropyCollector.idl
 */

module mozilla.dxpcom.nsIBufEntropyCollectorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIBufEntropyCollector;


public import mozilla.dxpcom.nsIBufEntropyCollectorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIEntropyCollector;
public import mozilla.dxpcom.nsIEntropyCollectorD;


/* starting wrapper class:    nsIBufEntropyCollector */
class nsIBufEntropyCollectorD : public nsIEntropyCollectorD {

  static const nsIID IID = NS_IBUFENTROPYCOLLECTOR_IID;


  alias nsIBufEntropyCollector InnerType;

  this(nsIBufEntropyCollector intr){
    super(intr);
    this.inner = intr;
  }

  nsIBufEntropyCollector opCast() {
    return inner;
  }

  void opAssign(nsIBufEntropyCollector value) {
    inner = value;
  }

  /**
   * Forward the entropy collected so far to |collector| and then
   * continue forwarding new entropy as it arrives.
   */
  /* void forwardTo (in nsIEntropyCollector collector); */
  void ForwardTo(nsIEntropyCollectorD collector){
    nsresult __result = inner.ForwardTo(collector ? cast(nsIEntropyCollector)collector : null);
    CheckException(__result);
  }

  /**
   * No longer forward to a (possibly) previously remembered collector.
   * Do buffering again.
   */
  /* void dontForward (); */
  void DontForward(){
    nsresult __result = inner.DontForward();
    CheckException(__result);
  }

private:
  nsIBufEntropyCollector inner;

}

