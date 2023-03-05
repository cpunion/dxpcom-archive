/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIStreamTransportService.idl
 */

module mozilla.dxpcom.nsIStreamTransportServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIStreamTransportService;


public import mozilla.dxpcom.nsIStreamTransportServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsITransport;

public import mozilla.dxpcom.nsITransportD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;

public import mozilla.xpcom.nsIOutputStream;

public import mozilla.dxpcom.nsIOutputStreamD;


/* starting wrapper class:    nsIStreamTransportService */
/**
 * This service read/writes a stream on a background thread.
 *
 * Use this service to transform any blocking stream (e.g., file stream)
 * into a fully asynchronous stream that can be read/written without 
 * blocking the main thread.
 */
class nsIStreamTransportServiceD : public nsISupportsD {

  static const nsIID IID = NS_ISTREAMTRANSPORTSERVICE_IID;


  alias nsIStreamTransportService InnerType;

  this(nsIStreamTransportService intr){
    super(intr);
    this.inner = intr;
  }

  nsIStreamTransportService opCast() {
    return inner;
  }

  void opAssign(nsIStreamTransportService value) {
    inner = value;
  }

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
  nsITransportD  CreateInputTransport(nsIInputStreamD aStream, PRInt64 aStartOffset, PRInt64 aReadLimit, PRBool aCloseWhenDone){
    nsITransport _retval;
    nsresult __result = inner.CreateInputTransport(aStream ? cast(nsIInputStream)aStream : null, aStartOffset, aReadLimit, aCloseWhenDone, &_retval);
    CheckException(__result);
    return new nsITransportD(_retval);
  }

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
  nsITransportD  CreateOutputTransport(nsIOutputStreamD aStream, PRInt64 aStartOffset, PRInt64 aWriteLimit, PRBool aCloseWhenDone){
    nsITransport _retval;
    nsresult __result = inner.CreateOutputTransport(aStream ? cast(nsIOutputStream)aStream : null, aStartOffset, aWriteLimit, aCloseWhenDone, &_retval);
    CheckException(__result);
    return new nsITransportD(_retval);
  }

private:
  nsIStreamTransportService inner;

}

