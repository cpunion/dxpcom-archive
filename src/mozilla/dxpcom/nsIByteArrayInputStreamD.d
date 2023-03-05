/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIByteArrayInputStream.idl
 */

module mozilla.dxpcom.nsIByteArrayInputStreamD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIByteArrayInputStream;


public import mozilla.dxpcom.nsIByteArrayInputStreamD;

public import mozilla.xpcom.nsIInputStream;
public import mozilla.dxpcom.nsIInputStreamD;


/* starting wrapper class:    nsIByteArrayInputStream */
class nsIByteArrayInputStreamD : public nsIInputStreamD {

  static const nsIID IID = NS_IBYTEARRAYINPUTSTREAM_IID;


  alias nsIByteArrayInputStream InnerType;

  this(nsIByteArrayInputStream intr){
    super(intr);
    this.inner = intr;
  }

  nsIByteArrayInputStream opCast() {
    return inner;
  }

  void opAssign(nsIByteArrayInputStream value) {
    inner = value;
  }

private:
  nsIByteArrayInputStream inner;

}

