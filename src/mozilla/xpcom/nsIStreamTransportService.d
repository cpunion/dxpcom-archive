/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIStreamTransportService.idl
 */

module mozilla.xpcom.nsIStreamTransportService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsITransport; /* forward declaration */

public import mozilla.xpcom.nsIInputStream; /* forward declaration */

public import mozilla.xpcom.nsIOutputStream; /* forward declaration */


/* starting interface:    nsIStreamTransportService */
const char[] NS_ISTREAMTRANSPORTSERVICE_IID_STR = "8268d474-efbf-494f-a152-e8a8616f4e52";

const nsIID NS_ISTREAMTRANSPORTSERVICE_IID= 
  {0x8268d474, 0xefbf, 0x494f, 
    [ 0xa1, 0x52, 0xe8, 0xa8, 0x61, 0x6f, 0x4e, 0x52 ]};

/**
 * This service read/writes a stream on a background thread.
 *
 * Use this service to transform any blocking stream (e.g., file stream)
 * into a fully asynchronous stream that can be read/written without 
 * blocking the main thread.
 */
extern(Windows)
interface nsIStreamTransportService : nsISupports {
  static const char[] IID_STR = NS_ISTREAMTRANSPORTSERVICE_IID_STR;
  static const nsIID IID = NS_ISTREAMTRANSPORTSERVICE_IID;

  /**
     * CreateInputTransport
     *
     * @param aStream
     *        The input stream that will be read on a background thread.
     *        This stream must implement "blocking" stream semantics.
     * @param aStartOffset
     *        The input stream will be read starting from this offset.  Pass
     *        -1 to read from the current stream offset.  NOTE: this parameter
     *        is ignored if the stream does not support nsISeekableStream.
     * @param aReadLimit
     *        This parameter limits the number of bytes that will be read from
     *        the input stream.  Pass -1 to read everything.
     * @param aCloseWhenDone
     *        Specify this flag to have the input stream closed once its
     *        contents have been completely read.
     *
     * @return nsITransport instance.
     */
  /* nsITransport createInputTransport (in nsIInputStream aStream, in long long aStartOffset, in long long aReadLimit, in boolean aCloseWhenDone); */
  nsresult CreateInputTransport(nsIInputStream aStream, PRInt64 aStartOffset, PRInt64 aReadLimit, PRBool aCloseWhenDone, nsITransport *_retval);

  /**
     * CreateOutputTransport
     *
     * @param aStream
     *        The output stream that will be written to on a background thread.
     *        This stream must implement "blocking" stream semantics.
     * @param aStartOffset
     *        The output stream will be written starting at this offset.  Pass
     *        -1 to write to the current stream offset.  NOTE: this parameter
     *        is ignored if the stream does not support nsISeekableStream.
     * @param aWriteLimit
     *        This parameter limits the number of bytes that will be written to
     *        the output stream.  Pass -1 for unlimited writing.
     * @param aCloseWhenDone
     *        Specify this flag to have the output stream closed once its
     *        contents have been completely written.
     *
     * @return nsITransport instance.
     */
  /* nsITransport createOutputTransport (in nsIOutputStream aStream, in long long aStartOffset, in long long aWriteLimit, in boolean aCloseWhenDone); */
  nsresult CreateOutputTransport(nsIOutputStream aStream, PRInt64 aStartOffset, PRInt64 aWriteLimit, PRBool aCloseWhenDone, nsITransport *_retval);

}

