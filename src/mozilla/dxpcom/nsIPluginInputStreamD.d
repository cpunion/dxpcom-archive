/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPluginInputStream.idl
 */

module mozilla.dxpcom.nsIPluginInputStreamD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPluginInputStream;


public import mozilla.dxpcom.nsIPluginInputStreamD;

public import mozilla.xpcom.nsIInputStream;
public import mozilla.dxpcom.nsIInputStreamD;
public import mozilla.xpcom.nspluginroot;
public import mozilla.dxpcom.nspluginrootD;


/* starting wrapper class:    nsIPluginInputStream */
/**
 * The nsIPluginInputStream interface ...
 */
class nsIPluginInputStreamD : public nsIInputStreamD {

  static const nsIID IID = NS_IPLUGININPUTSTREAM_IID;


  alias nsIPluginInputStream InnerType;

  this(nsIPluginInputStream intr){
    super(intr);
    this.inner = intr;
  }

  nsIPluginInputStream opCast() {
    return inner;
  }

  void opAssign(nsIPluginInputStream value) {
    inner = value;
  }

  /**
   *  Corresponds to NPStream's lastmodified field.)
   */
  /* void getLastModified (out unsigned long aResult); */
  void GetLastModified(out PRUint32 aResult){
    nsresult __result = inner.GetLastModified(&aResult);
    CheckException(__result);
  }

  /* void requestRead (out nsByteRange aRangeList); */
  void RequestRead(out nsByteRange aRangeList){
    nsresult __result = inner.RequestRead(&aRangeList);
    CheckException(__result);
  }

private:
  nsIPluginInputStream inner;

}

