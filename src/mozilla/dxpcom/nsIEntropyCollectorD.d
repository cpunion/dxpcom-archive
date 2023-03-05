/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEntropyCollector.idl
 */

module mozilla.dxpcom.nsIEntropyCollectorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIEntropyCollector;


public import mozilla.dxpcom.nsIEntropyCollectorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIEntropyCollector */
class nsIEntropyCollectorD : public nsISupportsD {

  static const nsIID IID = NS_IENTROPYCOLLECTOR_IID;


  alias nsIEntropyCollector InnerType;

  this(nsIEntropyCollector intr){
    super(intr);
    this.inner = intr;
  }

  nsIEntropyCollector opCast() {
    return inner;
  }

  void opAssign(nsIEntropyCollector value) {
    inner = value;
  }

  /**
   * Add the following bytes to the pool of data to be used
   * in gathering entropy.
   */
  /* void randomUpdate (in buffer entropy, in long bufLen); */
  void RandomUpdate(void * entropy, PRInt32 bufLen){
    nsresult __result = inner.RandomUpdate(entropy, bufLen);
    CheckException(__result);
  }

private:
  nsIEntropyCollector inner;

}

