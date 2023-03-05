/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIObjectOutputStream.idl
 */

module mozilla.dxpcom.nsIObjectOutputStreamD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIObjectOutputStream;


public import mozilla.dxpcom.nsIObjectOutputStreamD;

public import mozilla.xpcom.nsIBinaryOutputStream;
public import mozilla.dxpcom.nsIBinaryOutputStreamD;
public import mozilla.xpcom.nsrootidl;
public import mozilla.dxpcom.nsrootidlD;


/* starting wrapper class:    nsIObjectOutputStream */
/**
 * @See nsIObjectInputStream
 * @See nsIBinaryOutputStream
 */
class nsIObjectOutputStreamD : public nsIBinaryOutputStreamD {

  static const nsIID IID = NS_IOBJECTOUTPUTSTREAM_IID;


  alias nsIObjectOutputStream InnerType;

  this(nsIObjectOutputStream intr){
    super(intr);
    this.inner = intr;
  }

  nsIObjectOutputStream opCast() {
    return inner;
  }

  void opAssign(nsIObjectOutputStream value) {
    inner = value;
  }

  /**
     * Write the object whose "root" or XPCOM-identity nsISupports is aObject.
     * The cause for writing this object is a strong or weak reference, so the
     * aIsStrongRef argument must tell which kind of pointer is being followed
     * here during serialization.
     *
     * If the object has only one strong reference in the serialization and no
     * weak refs, use writeSingleRefObject.  This is a valuable optimization:
     * it saves space in the stream, and cycles on both ends of the process.
     *
     * If the reference being serialized is a pointer to an interface not on
     * the primary inheritance chain ending in the root nsISupports, you must
     * call writeCompoundObject instead of this method.
     */
  /* void writeObject (in nsISupports aObject, in PRBool aIsStrongRef); */
  void WriteObject(nsISupportsD aObject, PRBool aIsStrongRef){
    nsresult __result = inner.WriteObject(aObject ? cast(nsISupports)aObject : null, aIsStrongRef);
    CheckException(__result);
  }

  /**
     * Write an object referenced singly and strongly via its root nsISupports
     * or a subclass of its root nsISupports.  There must not be other refs to
     * aObject in memory, or in the serialization.
     */
  /* void writeSingleRefObject (in nsISupports aObject); */
  void WriteSingleRefObject(nsISupportsD aObject){
    nsresult __result = inner.WriteSingleRefObject(aObject ? cast(nsISupports)aObject : null);
    CheckException(__result);
  }

  /**
     * Write the object referenced by an interface pointer at aObject that
     * inherits from a non-primary nsISupports, i.e., a reference to one of
     * the multiply inherited interfaces derived from an nsISupports other
     * than the root or XPCOM-identity nsISupports; or a reference to an
     * inner object in the case of true XPCOM aggregation.  aIID identifies
     * this interface.
     */
  /* void writeCompoundObject (in nsISupports aObject, in nsIIDRef aIID, in PRBool aIsStrongRef); */
  void WriteCompoundObject(nsISupportsD aObject, nsIID * aIID, PRBool aIsStrongRef){
    nsresult __result = inner.WriteCompoundObject(aObject ? cast(nsISupports)aObject : null, aIID, aIsStrongRef);
    CheckException(__result);
  }

  /* void writeID (in nsIDRef aID); */
  void WriteID(nsID * aID){
    nsresult __result = inner.WriteID(aID);
    CheckException(__result);
  }

  /**
     * Optimized serialization support -- see nsIStreamBufferAccess.idl.
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
  nsIObjectOutputStream inner;

}

