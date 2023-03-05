/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIObjectInputStream.idl
 */

module mozilla.dxpcom.nsIObjectInputStreamD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIObjectInputStream;


public import mozilla.dxpcom.nsIObjectInputStreamD;

public import mozilla.xpcom.nsIBinaryInputStream;
public import mozilla.dxpcom.nsIBinaryInputStreamD;
public import mozilla.xpcom.nsrootidl;
public import mozilla.dxpcom.nsrootidlD;


/* starting wrapper class:    nsIObjectInputStream */
/**
 * @see nsIObjectOutputStream
 * @see nsIBinaryInputStream
 */
class nsIObjectInputStreamD : public nsIBinaryInputStreamD {

  static const nsIID IID = NS_IOBJECTINPUTSTREAM_IID;


  alias nsIObjectInputStream InnerType;

  this(nsIObjectInputStream intr){
    super(intr);
    this.inner = intr;
  }

  nsIObjectInputStream opCast() {
    return inner;
  }

  void opAssign(nsIObjectInputStream value) {
    inner = value;
  }

  /**
     * Read an object from this stream to satisfy a strong or weak reference
     * to one of its interfaces.  If the interface was not along the primary
     * inheritance chain ending in the "root" or XPCOM-identity nsISupports,
     * readObject will QueryInterface from the deserialized object root to the
     * correct interface, which was specified when the object was serialized.
     *
     * @see nsIObjectOutputStream
     */
  /* nsISupports readObject (in PRBool aIsStrongRef); */
  nsISupportsD  ReadObject(PRBool aIsStrongRef){
    nsISupports _retval;
    nsresult __result = inner.ReadObject(aIsStrongRef, &_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

  /* [notxpcom] nsresult readID (out nsID aID); */
  nsresult ReadID(out nsID aID){
    nsresult _retval;
    _retval = inner.ReadID(&aID);

    return _retval;
  }

  /**
     * Optimized deserialization support -- see nsIStreamBufferAccess.idl.
     */
  /* [notxpcom] charPtr getBuffer (in PRUint32 aLength, in PRUint32 aAlignMask); */
  char * GetBuffer(PRUint32 aLength, PRUint32 aAlignMask){
    char * _retval;
    _retval = inner.GetBuffer(aLength, aAlignMask);

    return _retval;
  }

  /* [notxpcom] void putBuffer (in charPtr aBuffer, in PRUint32 aLength); */
  void PutBuffer(char * aBuffer, PRUint32 aLength){
  inner.PutBuffer(aBuffer, aLength);

  }

private:
  nsIObjectInputStream inner;

}

