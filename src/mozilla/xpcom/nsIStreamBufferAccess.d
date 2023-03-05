/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIStreamBufferAccess.idl
 */

module mozilla.xpcom.nsIStreamBufferAccess;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsrootidl;


/* starting interface:    nsIStreamBufferAccess */
const char[] NS_ISTREAMBUFFERACCESS_IID_STR = "ac923b72-ac87-4892-ac7a-ca385d429435";

const nsIID NS_ISTREAMBUFFERACCESS_IID= 
  {0xac923b72, 0xac87, 0x4892, 
    [ 0xac, 0x7a, 0xca, 0x38, 0x5d, 0x42, 0x94, 0x35 ]};

/**
 * An interface for access to a buffering stream implementation's underlying
 * memory buffer.
 *
 * Stream implementations that QueryInterface to nsIStreamBufferAccess must
 * ensure that all buffers are aligned on the most restrictive type size for
 * the current architecture (e.g., sizeof(double) for RISCy CPUs).  malloc(3)
 * satisfies this requirement.
 */
extern(Windows)
interface nsIStreamBufferAccess : nsISupports {
  static const char[] IID_STR = NS_ISTREAMBUFFERACCESS_IID_STR;
  static const nsIID IID = NS_ISTREAMBUFFERACCESS_IID;

  /**
     * Get access to a contiguous, aligned run of bytes in the stream's buffer.
     * Exactly one successful getBuffer call must occur before a putBuffer call
     * taking the non-null pointer returned by the successful getBuffer.
     *
     * The run of bytes are the next bytes (modulo alignment padding) to read
     * for an input stream, and the next bytes (modulo alignment padding) to
     * store before (eventually) writing buffered data to an output stream.
     * There can be space beyond this run of bytes in the buffer for further
     * accesses before the fill or flush point is reached.
     *
     * @param aLength
     *    Count of contiguous bytes requested at the address A that satisfies
     *    (A & aAlignMask) == 0 in the buffer, starting from the current stream
     *    position, mapped to a buffer address B.  The stream implementation
     *    must pad from B to A by skipping bytes (if input stream) or storing
     *    zero bytes (if output stream).
     *
     * @param aAlignMask
     *    Bit-mask computed by subtracting 1 from the power-of-two alignment
     *    modulus (e.g., 3 or sizeof(PRUint32)-1 for PRUint32 alignment).
     *
     * @return
     *    The aligned pointer to aLength bytes in the buffer, or null if the
     *    buffer has no room for aLength bytes starting at the next address A
     *    after the current position that satisfies (A & aAlignMask) == 0.
     */
  /* [notxpcom] charPtr getBuffer (in PRUint32 aLength, in PRUint32 aAlignMask); */
  char * GetBuffer(PRUint32 aLength, PRUint32 aAlignMask);

  /**
     * Relinquish access to the stream's buffer, filling if at end of an input
     * buffer, flushing if completing an output buffer.  After a getBuffer call
     * that returns non-null, putBuffer must be called.
     *
     * @param aBuffer
     *    A non-null pointer returned by getBuffer on the same stream buffer
     *    access object.
     *
     * @param aLength
     *    The same count of contiguous bytes passed to the getBuffer call that
     *    returned aBuffer.
     */
  /* [notxpcom] void putBuffer (in charPtr aBuffer, in PRUint32 aLength); */
  void PutBuffer(char * aBuffer, PRUint32 aLength);

  /**
     * Disable and enable buffering on the stream implementing this interface.
     * DisableBuffering flushes an output stream's buffer, and invalidates an
     * input stream's buffer.
     */
  /* void disableBuffering (); */
  nsresult DisableBuffering();

  /* void enableBuffering (); */
  nsresult EnableBuffering();

  /**
     * The underlying, unbuffered input or output stream.
     */
  /* readonly attribute nsISupports unbufferedStream; */
  nsresult GetUnbufferedStream(nsISupports  *aUnbufferedStream);

}

