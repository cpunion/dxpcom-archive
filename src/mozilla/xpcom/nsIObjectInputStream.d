/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIObjectInputStream.idl
 */

module mozilla.xpcom.nsIObjectInputStream;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIBinaryInputStream;
public import mozilla.xpcom.nsrootidl;


/* starting interface:    nsIObjectInputStream */
const char[] NS_IOBJECTINPUTSTREAM_IID_STR = "6c248606-4eae-46fa-9df0-ba58502368eb";

const nsIID NS_IOBJECTINPUTSTREAM_IID= 
  {0x6c248606, 0x4eae, 0x46fa, 
    [ 0x9d, 0xf0, 0xba, 0x58, 0x50, 0x23, 0x68, 0xeb ]};

/**
 * @see nsIObjectOutputStream
 * @see nsIBinaryInputStream
 */
extern(Windows)
interface nsIObjectInputStream : nsIBinaryInputStream {
  static const char[] IID_STR = NS_IOBJECTINPUTSTREAM_IID_STR;
  static const nsIID IID = NS_IOBJECTINPUTSTREAM_IID;

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
  nsresult ReadObject(PRBool aIsStrongRef, nsISupports *_retval);

  /* [notxpcom] nsresult readID (out nsID aID); */
  nsresult ReadID(nsID *aID);

  /**
     * Optimized deserialization support -- see nsIStreamBufferAccess.idl.
     */
  /* [notxpcom] charPtr getBuffer (in PRUint32 aLength, in PRUint32 aAlignMask); */
  char * GetBuffer(PRUint32 aLength, PRUint32 aAlignMask);

  /* [notxpcom] void putBuffer (in charPtr aBuffer, in PRUint32 aLength); */
  void PutBuffer(char * aBuffer, PRUint32 aLength);

}

