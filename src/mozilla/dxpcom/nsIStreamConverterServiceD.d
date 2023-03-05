/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIStreamConverterService.idl
 */

module mozilla.dxpcom.nsIStreamConverterServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIStreamConverterService;


public import mozilla.dxpcom.nsIStreamConverterServiceD;

public import mozilla.xpcom.nsIInputStream;
public import mozilla.dxpcom.nsIInputStreamD;
public import mozilla.xpcom.nsIStreamListener;
public import mozilla.dxpcom.nsIStreamListenerD;


/* starting wrapper class:    nsIStreamConverterService */
/**
 * The nsIStreamConverterService is a higher level stream converter factory
 * responsible for locating and creating stream converters
 * (nsIStreamConverter).
 *
 * This service retrieves an interface that can convert data from a particular
 * MIME type, to a particular MIME type. It is responsible for any intermediary
 * conversion required in order to get from X to Z, assuming direct conversion
 * is not possible.
 *
 * @author Jud Valeski
 * @see nsIStreamConverter
 */
class nsIStreamConverterServiceD : public nsISupportsD {

  static const nsIID IID = NS_ISTREAMCONVERTERSERVICE_IID;


  alias nsIStreamConverterService InnerType;

  this(nsIStreamConverterService intr){
    super(intr);
    this.inner = intr;
  }

  nsIStreamConverterService opCast() {
    return inner;
  }

  void opAssign(nsIStreamConverterService value) {
    inner = value;
  }

  /**
     * <b>SYNCRONOUS VERSION</b>
     * Converts a stream of one type, to a stream of another type.
     *
     * Use this method when you have a stream you want to convert.
     *
     * @param aFromStream   The stream representing the original/raw data.
     * @param aFromType     The MIME type of aFromStream.
     * @param aToType       The MIME type of the returned stream.
     * @param aContext      Either an opaque context, or a converter specific
     *                      context (implementation specific).
     * @return              The converted stream. NOTE: The returned stream
     *                      may not already be converted. An efficient stream
     *                      converter implementation will convert data on
     *                      demand rather than buffering the converted data
     *                      until it is used.
     */
  /* nsIInputStream convert (in nsIInputStream aFromStream, in string aFromType, in string aToType, in nsISupports aContext); */
  nsIInputStreamD  Convert(nsIInputStreamD aFromStream, char*aFromType, char*aToType, nsISupportsD aContext){
    nsIInputStream _retval;
    nsresult __result = inner.Convert(aFromStream ? cast(nsIInputStream)aFromStream : null, aFromType, aToType, aContext ? cast(nsISupports)aContext : null, &_retval);
    CheckException(__result);
    return new nsIInputStreamD(_retval);
  }

  /**
     * <b>ASYNCRONOUS VERSION</b>
     * Retrieves a nsIStreamListener that receives the original/raw data via its
     * nsIStreamListener::OnDataAvailable() callback, then converts and pushes 
     * the data to aListener.
     *
     * Use this method when you want to proxy (and convert) nsIStreamListener
     * callbacks asynchronously.
     *
     * @param aFromType     The MIME type of the original/raw data.
     * @param aToType       The MIME type of the converted data.
     * @param aListener     The listener that receives the converted data.
     * @param aCtxt         Either an opaque context, or a converter specific
     *                      context (implementation specific).
     * @return              A nsIStreamListener that receives data via its
     *                      OnDataAvailable() method.
     */
  /* nsIStreamListener asyncConvertData (in string aFromType, in string aToType, in nsIStreamListener aListener, in nsISupports aContext); */
  nsIStreamListenerD  AsyncConvertData(char*aFromType, char*aToType, nsIStreamListenerD aListener, nsISupportsD aContext){
    nsIStreamListener _retval;
    nsresult __result = inner.AsyncConvertData(aFromType, aToType, aListener ? cast(nsIStreamListener)aListener : null, aContext ? cast(nsISupports)aContext : null, &_retval);
    CheckException(__result);
    return new nsIStreamListenerD(_retval);
  }

private:
  nsIStreamConverterService inner;

}

