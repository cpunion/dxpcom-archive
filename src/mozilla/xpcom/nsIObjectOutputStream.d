/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIObjectOutputStream.idl
 */

module mozilla.xpcom.nsIObjectOutputStream;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIBinaryOutputStream;
public import mozilla.xpcom.nsrootidl;


/* starting interface:    nsIObjectOutputStream */
const char[] NS_IOBJECTOUTPUTSTREAM_IID_STR = "92c898ac-5fde-4b99-87b3-5d486422094b";

const nsIID NS_IOBJECTOUTPUTSTREAM_IID= 
  {0x92c898ac, 0x5fde, 0x4b99, 
    [ 0x87, 0xb3, 0x5d, 0x48, 0x64, 0x22, 0x09, 0x4b ]};

/**
 * @See nsIObjectInputStream
 * @See nsIBinaryOutputStream
 */
extern(Windows)
interface nsIObjectOutputStream : nsIBinaryOutputStream {
  static const char[] IID_STR = NS_IOBJECTOUTPUTSTREAM_IID_STR;
  static const nsIID IID = NS_IOBJECTOUTPUTSTREAM_IID;

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
  nsresult WriteObject(nsISupports aObject, PRBool aIsStrongRef);

  /**
     * Write an object referenced singly and strongly via its root nsISupports
     * or a subclass of its root nsISupports.  There must not be other refs to
     * aObject in memory, or in the serialization.
     */
  /* void writeSingleRefObject (in nsISupports aObject); */
  nsresult WriteSingleRefObject(nsISupports aObject);

  /**
     * Write the object referenced by an interface pointer at aObject that
     * inherits from a non-primary nsISupports, i.e., a reference to one of
     * the multiply inherited interfaces derived from an nsISupports other
     * than the root or XPCOM-identity nsISupports; or a reference to an
     * inner object in the case of true XPCOM aggregation.  aIID identifies
     * this interface.
     */
  /* void writeCompoundObject (in nsISupports aObject, in nsIIDRef aIID, in PRBool aIsStrongRef); */
  nsresult WriteCompoundObject(nsISupports aObject, nsIID * aIID, PRBool aIsStrongRef);

  /* void writeID (in nsIDRef aID); */
  nsresult WriteID(nsID * aID);

  /**
     * Optimized serialization support -- see nsIStreamBufferAccess.idl.
     */
  /* [notxpcom] charPtr getBuffer (in PRUint32 aLength, in PRUint32 aAlignMask); */
  char * GetBuffer(PRUint32 aLength, PRUint32 aAlignMask);

  /* [notxpcom] void putBuffer (in charPtr aBuffer, in PRUint32 aLength); */
  void PutBuffer(char * aBuffer, PRUint32 aLength);

}

