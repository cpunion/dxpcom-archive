/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBinaryInputStream.idl
 */

module mozilla.dxpcom.nsIBinaryInputStreamD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIBinaryInputStream;


public import mozilla.dxpcom.nsIBinaryInputStreamD;

public import mozilla.xpcom.nsIInputStream;
public import mozilla.dxpcom.nsIInputStreamD;
public import mozilla.xpcom.nsrootidl;
public import mozilla.dxpcom.nsrootidlD;


/* starting wrapper class:    nsIBinaryInputStream */
/**
 * This interface allows consumption of primitive data types from a "binary
 * stream" containing untagged, big-endian binary data, i.e. as produced by an
 * implementation of nsIBinaryOutputStream.  This might be used, for example,
 * to implement network protocols or to read from architecture-neutral disk
 * files, i.e. ones that can be read and written by both big-endian and
 * little-endian platforms.
 *
 * @See nsIBinaryOutputStream
 */
class nsIBinaryInputStreamD : public nsIInputStreamD {

  static const nsIID IID = NS_IBINARYINPUTSTREAM_IID;


  alias nsIBinaryInputStream InnerType;

  this(nsIBinaryInputStream intr){
    super(intr);
    this.inner = intr;
  }

  nsIBinaryInputStream opCast() {
    return inner;
  }

  void opAssign(nsIBinaryInputStream value) {
    inner = value;
  }

  /* void setInputStream (in nsIInputStream aInputStream); */
  void SetInputStream(nsIInputStreamD aInputStream){
    nsresult __result = inner.SetInputStream(aInputStream ? cast(nsIInputStream)aInputStream : null);
    CheckException(__result);
  }

  /* PRBool readBoolean (); */
  PRBool ReadBoolean(){
    PRBool _retval;
    nsresult __result = inner.ReadBoolean(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRUint8 read8 (); */
  PRUint8 Read8(){
    PRUint8 _retval;
    nsresult __result = inner.Read8(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRUint16 read16 (); */
  PRUint16 Read16(){
    PRUint16 _retval;
    nsresult __result = inner.Read16(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRUint32 read32 (); */
  PRUint32 Read32(){
    PRUint32 _retval;
    nsresult __result = inner.Read32(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRUint64 read64 (); */
  PRUint64 Read64(){
    PRUint64 _retval;
    nsresult __result = inner.Read64(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* float readFloat (); */
  float ReadFloat(){
    float _retval;
    nsresult __result = inner.ReadFloat(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* double readDouble (); */
  double ReadDouble(){
    double _retval;
    nsresult __result = inner.ReadDouble(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Read a NUL-terminated 8-bit char* string from a binary stream.
     */
  /* ACString readCString (); */
  char[] ReadCString(){
    scope auto _retval = new ACString;
    nsresult __result = inner.ReadCString(cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
     * Read a NUL-terminated 16-bit PRUnichar* string from a binary stream.
     */
  /* AString readString (); */
  wchar[] ReadString(){
    scope auto _retval = new AString;
    nsresult __result = inner.ReadString(cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
     * Read an opaque byte array from a binary stream.
     */
  /* void readBytes (in PRUint32 aLength, [size_is (aLength), retval] out string aString); */
  void ReadBytes(PRUint32 aLength, out char*aString){
    nsresult __result = inner.ReadBytes(aLength, &aString);
    CheckException(__result);
  }

  /**
     * Read an opaque byte array from a binary stream, storing the results
     * as an array of PRUint8s.
     */
  /* void readByteArray (in PRUint32 aLength, [array, size_is (aLength), retval] out PRUint8 aBytes); */
  void ReadByteArray(PRUint32 aLength, out PRUint8 *aBytes){
    nsresult __result = inner.ReadByteArray(aLength, &aBytes);
    CheckException(__result);
  }

private:
  nsIBinaryInputStream inner;

}

