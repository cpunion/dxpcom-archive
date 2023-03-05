/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISeekableStream.idl
 */

module mozilla.xpcom.nsISeekableStream;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsISeekableStream */
const char[] NS_ISEEKABLESTREAM_IID_STR = "8429d350-1040-4661-8b71-f2a6ba455980";

const nsIID NS_ISEEKABLESTREAM_IID= 
  {0x8429d350, 0x1040, 0x4661, 
    [ 0x8b, 0x71, 0xf2, 0xa6, 0xba, 0x45, 0x59, 0x80 ]};

extern(Windows)
interface nsISeekableStream : nsISupports {
  static const char[] IID_STR = NS_ISEEKABLESTREAM_IID_STR;
  static const nsIID IID = NS_ISEEKABLESTREAM_IID;

  enum { NS_SEEK_SET = 0 };

  enum { NS_SEEK_CUR = 1 };

  enum { NS_SEEK_END = 2 };

  /**
     *  seek
     *
     *  This method moves the stream offset of the steam implementing this
     *  interface.
     *
     *   @param whence specifies how to interpret the 'offset' parameter in
     *                 setting the stream offset associated with the implementing
     *                 stream.
     *     
     *   @param offset specifies a value, in bytes, that is used in conjunction
     *                 with the 'whence' parameter to set the stream offset of the 
     *                 implementing stream.  A negative value causes seeking in 
     *                 the reverse direction.
     */
  /* void seek (in long whence, in long long offset); */
  nsresult Seek(PRInt32 whence, PRInt64 offset);

  /**
     *  tell
     *
     *  This method reports the current offset, in bytes, from the start of the 
     *  stream. 
     */
  /* long long tell (); */
  nsresult Tell(PRInt64 *_retval);

  /**
     *  setEOF
     *
     *  This method truncates the stream at the current offset.
     */
  /* void setEOF (); */
  nsresult SetEOF();

}

