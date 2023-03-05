/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIStreamConverterService.idl
 */

module mozilla.xpcom.nsIStreamConverterService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIInputStream;
public import mozilla.xpcom.nsIStreamListener;


/* starting interface:    nsIStreamConverterService */
const char[] NS_ISTREAMCONVERTERSERVICE_IID_STR = "e086e1e2-40ff-4193-8b8c-bd548babe70d";

const nsIID NS_ISTREAMCONVERTERSERVICE_IID= 
  {0xe086e1e2, 0x40ff, 0x4193, 
    [ 0x8b, 0x8c, 0xbd, 0x54, 0x8b, 0xab, 0xe7, 0x0d ]};

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
extern(Windows)
interface nsIStreamConverterService : nsISupports {
  static const char[] IID_STR = NS_ISTREAMCONVERTERSERVICE_IID_STR;
  static const nsIID IID = NS_ISTREAMCONVERTERSERVICE_IID;

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
  nsresult Convert(nsIInputStream aFromStream, char *aFromType, char *aToType, nsISupports aContext, nsIInputStream *_retval);

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
  nsresult AsyncConvertData(char *aFromType, char *aToType, nsIStreamListener aListener, nsISupports aContext, nsIStreamListener *_retval);

}

