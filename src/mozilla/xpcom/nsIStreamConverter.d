/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIStreamConverter.idl
 */

module mozilla.xpcom.nsIStreamConverter;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIStreamListener;
public import mozilla.xpcom.nsIInputStream;
public import mozilla.xpcom.nsIURI;


/* starting interface:    nsIStreamConverter */
const char[] NS_ISTREAMCONVERTER_IID_STR = "0b6e2c69-5cf5-48b0-9dfd-c95950e2cc7b";

const nsIID NS_ISTREAMCONVERTER_IID= 
  {0x0b6e2c69, 0x5cf5, 0x48b0, 
    [ 0x9d, 0xfd, 0xc9, 0x59, 0x50, 0xe2, 0xcc, 0x7b ]};

/**
 * nsIStreamConverter provides an interface to implement when you have code
 * that converts data from one type to another.
 *
 * Suppose you had code that converted plain text into HTML. You could implement
 * this interface to allow everyone else to use your conversion logic using a 
 * standard api.
 * <p>
 * <b>STREAM CONVERTER USERS</b>
 *
 * There are currently two ways to use a stream converter:
 * <ol>
 * <li> <b>SYNCHRONOUS</b> Stream to Stream
 *    You can supply the service with a stream of type X
 *    and it will convert it to your desired output type and return
 *    a converted (blocking) stream to you.</li>
 *
 * <li> <b>ASYNCHRONOUS</b> nsIStreamListener to nsIStreamListener
 *    You can supply data directly to the converter by calling it's
 *    nsIStreamListener::OnDataAvailable() method. It will then
 *    convert that data from type X to your desired output type and
 *    return converted data to you via the nsIStreamListener you passed
 *    in by calling its OnDataAvailable() method.</li>
 * </ol>
 * <p>
 *
 * <b>STREAM CONVERTER SUPPLIERS</b>
 *
 * Registering a stream converter:
 * Stream converter registration is a two step process. First of all the stream
 * converter implementation must register itself with the component manager using
 * a contractid in the format below. Second, the stream converter must add the contractid
 * to the registry.
 *
 * Stream converter contractid format (the stream converter root key is defined in this
 * file):
 *
 * <pre>@mozilla.org/streamconv;1?from=FROM_MIME_TYPE&to=TO_MIME_TYPE</pre>
 *
 * @author Jud Valeski
 * @see nsIStreamConverterService
 */
extern(Windows)
interface nsIStreamConverter : nsIStreamListener {
  static const char[] IID_STR = NS_ISTREAMCONVERTER_IID_STR;
  static const nsIID IID = NS_ISTREAMCONVERTER_IID;

  /**
     * <b>SYNCRONOUS VERSION</b>
     * Converts a stream of one type, to a stream of another type.
     *
     * Use this method when you have a stream you want to convert.
     *
     * @param aFromStream   The stream representing the original/raw data.
     * @param aFromType     The MIME type of aFromStream.
     * @param aToType       The MIME type of the returned stream.
     * @param aCtxt         Either an opaque context, or a converter specific context
     *                      (implementation specific).
     * @return              The converted stream. NOTE: The returned stream may not
     *                      already be converted. An efficient stream converter
     *                      implementation will converter data on demand rather than
     *                      buffering the converted data until it is used.
     */
  /* nsIInputStream convert (in nsIInputStream aFromStream, in string aFromType, in string aToType, in nsISupports aCtxt); */
  nsresult Convert(nsIInputStream aFromStream, char *aFromType, char *aToType, nsISupports aCtxt, nsIInputStream *_retval);

  /**
     * <b>ASYNCRONOUS VERSION</b>
     * Converts data arriving via the converter's nsIStreamListener::OnDataAvailable() 
     * method from one type to another, pushing the converted data out to the caller 
     * via aListener::OnDataAvailable().
     *
     * Use this method when you want to proxy (and convert) nsIStreamListener callbacks
     * asynchronously.
     *
     * @param aFromType     The MIME type of the original/raw data.
     * @param aToType       The MIME type of the converted data.
     * @param aListener     The listener who receives the converted data.
     * @param aCtxt         Either an opaque context, or a converter specific context
     *                      (implementation specific).
     */
  /* void asyncConvertData (in string aFromType, in string aToType, in nsIStreamListener aListener, in nsISupports aCtxt); */
  nsresult AsyncConvertData(char *aFromType, char *aToType, nsIStreamListener aListener, nsISupports aCtxt);

}

