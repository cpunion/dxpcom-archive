/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISerializable.idl
 */

module mozilla.dxpcom.nsISerializableD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISerializable;


public import mozilla.dxpcom.nsISerializableD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIObjectInputStream;

public import mozilla.dxpcom.nsIObjectInputStreamD;

public import mozilla.xpcom.nsIObjectOutputStream;

public import mozilla.dxpcom.nsIObjectOutputStreamD;


/* starting wrapper class:    nsISerializable */
class nsISerializableD : public nsISupportsD {

  static const nsIID IID = NS_ISERIALIZABLE_IID;


  alias nsISerializable InnerType;

  this(nsISerializable intr){
    super(intr);
    this.inner = intr;
  }

  nsISerializable opCast() {
    return inner;
  }

  void opAssign(nsISerializable value) {
    inner = value;
  }

  /**
     * Initialize the object implementing nsISerializable, which must have
     * been freshly constructed via CreateInstance.  All data members that
     * can't be set to default values must have been serialized by write,
     * and should be read from aInputStream in the same order by this method.
     */
  /* void read (in nsIObjectInputStream aInputStream); */
  void Read(nsIObjectInputStreamD aInputStream){
    nsresult __result = inner.Read(aInputStream ? cast(nsIObjectInputStream)aInputStream : null);
    CheckException(__result);
  }

  /**
     * Serialize the object implementing nsISerializable to aOutputStream, by
     * writing each data member that must be recovered later to reconstitute
     * a working replica of this object, in a canonical member and byte order,
     * to aOutputStream.
     *
     * NB: a class that implements nsISerializable *must* also implement
     * nsIClassInfo, in particular nsIClassInfo::GetClassID.
     */
  /* void write (in nsIObjectOutputStream aOutputStream); */
  void Write(nsIObjectOutputStreamD aOutputStream){
    nsresult __result = inner.Write(aOutputStream ? cast(nsIObjectOutputStream)aOutputStream : null);
    CheckException(__result);
  }

private:
  nsISerializable inner;

}

