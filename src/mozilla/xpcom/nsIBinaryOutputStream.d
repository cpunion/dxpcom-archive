/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBinaryOutputStream.idl
 */

module mozilla.xpcom.nsIBinaryOutputStream;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIOutputStream;
public import mozilla.xpcom.nsrootidl;


/* starting interface:    nsIBinaryOutputStream */
const char[] NS_IBINARYOUTPUTSTREAM_IID_STR = "204ee610-8765-11d3-90cf-0040056a906e";

const nsIID NS_IBINARYOUTPUTSTREAM_IID= 
  {0x204ee610, 0x8765, 0x11d3, 
    [ 0x90, 0xcf, 0x00, 0x40, 0x05, 0x6a, 0x90, 0x6e ]};

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
extern(Windows)
interface nsIBinaryOutputStream : nsIOutputStream {
  static const char[] IID_STR = NS_IBINARYOUTPUTSTREAM_IID_STR;
  static const nsIID IID = NS_IBINARYOUTPUTSTREAM_IID;

  /* void setOutputStream (in nsIOutputStream aOutputStream); */
  nsresult SetOutputStream(nsIOutputStream aOutputStream);

  /* void writeBoolean (in PRBool aBoolean); */
  nsresult WriteBoolean(PRBool aBoolean);

  /* void write8 (in PRUint8 aByte); */
  nsresult Write8(PRUint8 aByte);

  /* void write16 (in PRUint16 a16); */
  nsresult Write16(PRUint16 a16);

  /* void write32 (in PRUint32 a32); */
  nsresult Write32(PRUint32 a32);

  /* void write64 (in PRUint64 a64); */
  nsresult Write64(PRUint64 a64);

  /* void writeFloat (in float aFloat); */
  nsresult WriteFloat(float aFloat);

  /* void writeDouble (in double aDouble); */
  nsresult WriteDouble(double aDouble);

  /**
     * Write a NUL-terminated 8-bit char* string to a binary stream.
     */
  /* void writeStringZ (in string aString); */
  nsresult WriteStringZ(char *aString);

  /**
     * Write a NUL-terminated 16-bit PRUnichar* string to a binary stream.
     */
  /* void writeWStringZ (in wstring aString); */
  nsresult WriteWStringZ(PRUnichar *aString);

  /**
     * Write a NUL-terminated UTF8-encoded string to a binary stream, produced
     * from a NUL-terminated 16-bit PRUnichar* string argument.
     */
  /* void writeUtf8Z (in wstring aString); */
  nsresult WriteUtf8Z(PRUnichar *aString);

  /**
     * Write an opaque byte array to a binary stream.
     */
  /* void writeBytes ([size_is (aLength)] in string aString, in PRUint32 aLength); */
  nsresult WriteBytes(char *aString, PRUint32 aLength);

  /**
     * Write an opaque byte array to a binary stream.
     */
  /* void writeByteArray ([array, size_is (aLength)] in PRUint8 aBytes, in PRUint32 aLength); */
  nsresult WriteByteArray(PRUint8 *aBytes, PRUint32 aLength);

}

