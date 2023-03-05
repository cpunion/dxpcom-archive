/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBinaryOutputStream.idl
 */

module mozilla.dxpcom.nsIBinaryOutputStreamD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIBinaryOutputStream;


public import mozilla.dxpcom.nsIBinaryOutputStreamD;

public import mozilla.xpcom.nsIOutputStream;
public import mozilla.dxpcom.nsIOutputStreamD;
public import mozilla.xpcom.nsrootidl;
public import mozilla.dxpcom.nsrootidlD;


/* starting wrapper class:    nsIBinaryOutputStream */
/**
 * This interface allows writing of primitive data types (integers,
 * floating-point values, booleans, etc.) to a stream in a binary, untagged,
 * fixed-endianness format.  This might be used, for example, to implement
 * network protocols or to produce architecture-neutral binary disk files,
 * i.e. ones that can be read and written by both big-endian and little-endian
 * platforms.  Output is written in big-endian order (high-order byte first),
 * as this is traditional network order.
 *
 * @See nsIBinaryInputStream
 */
class nsIBinaryOutputStreamD : public nsIOutputStreamD {

  static const nsIID IID = NS_IBINARYOUTPUTSTREAM_IID;


  alias nsIBinaryOutputStream InnerType;

  this(nsIBinaryOutputStream intr){
    super(intr);
    this.inner = intr;
  }

  nsIBinaryOutputStream opCast() {
    return inner;
  }

  void opAssign(nsIBinaryOutputStream value) {
    inner = value;
  }

  /* void setOutputStream (in nsIOutputStream aOutputStream); */
  void SetOutputStream(nsIOutputStreamD aOutputStream){
    nsresult __result = inner.SetOutputStream(aOutputStream ? cast(nsIOutputStream)aOutputStream : null);
    CheckException(__result);
  }

  /* void writeBoolean (in PRBool aBoolean); */
  void WriteBoolean(PRBool aBoolean){
    nsresult __result = inner.WriteBoolean(aBoolean);
    CheckException(__result);
  }

  /* void write8 (in PRUint8 aByte); */
  void Write8(PRUint8 aByte){
    nsresult __result = inner.Write8(aByte);
    CheckException(__result);
  }

  /* void write16 (in PRUint16 a16); */
  void Write16(PRUint16 a16){
    nsresult __result = inner.Write16(a16);
    CheckException(__result);
  }

  /* void write32 (in PRUint32 a32); */
  void Write32(PRUint32 a32){
    nsresult __result = inner.Write32(a32);
    CheckException(__result);
  }

  /* void write64 (in PRUint64 a64); */
  void Write64(PRUint64 a64){
    nsresult __result = inner.Write64(a64);
    CheckException(__result);
  }

  /* void writeFloat (in float aFloat); */
  void WriteFloat(float aFloat){
    nsresult __result = inner.WriteFloat(aFloat);
    CheckException(__result);
  }

  /* void writeDouble (in double aDouble); */
  void WriteDouble(double aDouble){
    nsresult __result = inner.WriteDouble(aDouble);
    CheckException(__result);
  }

  /**
     * Write a NUL-terminated 8-bit char* string to a binary stream.
     */
  /* void writeStringZ (in string aString); */
  void WriteStringZ(char*aString){
    nsresult __result = inner.WriteStringZ(aString);
    CheckException(__result);
  }

  /**
     * Write a NUL-terminated 16-bit PRUnichar* string to a binary stream.
     */
  /* void writeWStringZ (in wstring aString); */
  void WriteWStringZ(PRUnichar*aString){
    nsresult __result = inner.WriteWStringZ(aString);
    CheckException(__result);
  }

  /**
     * Write a NUL-terminated UTF8-encoded string to a binary stream, produced
     * from a NUL-terminated 16-bit PRUnichar* string argument.
     */
  /* void writeUtf8Z (in wstring aString); */
  void WriteUtf8Z(PRUnichar*aString){
    nsresult __result = inner.WriteUtf8Z(aString);
    CheckException(__result);
  }

  /**
     * Write an opaque byte array to a binary stream.
     */
  /* void writeBytes ([size_is (aLength)] in string aString, in PRUint32 aLength); */
  void WriteBytes(char*aString, PRUint32 aLength){
    nsresult __result = inner.WriteBytes(aString, aLength);
    CheckException(__result);
  }

  /**
     * Write an opaque byte array to a binary stream.
     */
  /* void writeByteArray ([array, size_is (aLength)] in PRUint8 aBytes, in PRUint32 aLength); */
  void WriteByteArray(PRUint8 *aBytes, PRUint32 aLength){
    nsresult __result = inner.WriteByteArray(aBytes, aLength);
    CheckException(__result);
  }

private:
  nsIBinaryOutputStream inner;

}

