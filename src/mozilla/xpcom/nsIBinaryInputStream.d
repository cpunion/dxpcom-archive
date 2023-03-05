/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBinaryInputStream.idl
 */

module mozilla.xpcom.nsIBinaryInputStream;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIInputStream;
public import mozilla.xpcom.nsrootidl;


/* starting interface:    nsIBinaryInputStream */
const char[] NS_IBINARYINPUTSTREAM_IID_STR = "7b456cb0-8772-11d3-90cf-0040056a906e";

const nsIID NS_IBINARYINPUTSTREAM_IID= 
  {0x7b456cb0, 0x8772, 0x11d3, 
    [ 0x90, 0xcf, 0x00, 0x40, 0x05, 0x6a, 0x90, 0x6e ]};

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
extern(Windows)
interface nsIBinaryInputStream : nsIInputStream {
  static const char[] IID_STR = NS_IBINARYINPUTSTREAM_IID_STR;
  static const nsIID IID = NS_IBINARYINPUTSTREAM_IID;

  /* void setInputStream (in nsIInputStream aInputStream); */
  nsresult SetInputStream(nsIInputStream aInputStream);

  /* PRBool readBoolean (); */
  nsresult ReadBoolean(PRBool *_retval);

  /* PRUint8 read8 (); */
  nsresult Read8(PRUint8 *_retval);

  /* PRUint16 read16 (); */
  nsresult Read16(PRUint16 *_retval);

  /* PRUint32 read32 (); */
  nsresult Read32(PRUint32 *_retval);

  /* PRUint64 read64 (); */
  nsresult Read64(PRUint64 *_retval);

  /* float readFloat (); */
  nsresult ReadFloat(float *_retval);

  /* double readDouble (); */
  nsresult ReadDouble(double *_retval);

  /**
     * Read a NUL-terminated 8-bit char* string from a binary stream.
     */
  /* ACString readCString (); */
  nsresult ReadCString(nsACString * _retval);

  /**
     * Read a NUL-terminated 16-bit PRUnichar* string from a binary stream.
     */
  /* AString readString (); */
  nsresult ReadString(nsAString * _retval);

  /**
     * Read an opaque byte array from a binary stream.
     */
  /* void readBytes (in PRUint32 aLength, [size_is (aLength), retval] out string aString); */
  nsresult ReadBytes(PRUint32 aLength, char **aString);

  /**
     * Read an opaque byte array from a binary stream, storing the results
     * as an array of PRUint8s.
     */
  /* void readByteArray (in PRUint32 aLength, [array, size_is (aLength), retval] out PRUint8 aBytes); */
  nsresult ReadByteArray(PRUint32 aLength, PRUint8 **aBytes);

}

