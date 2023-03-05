/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIStreamListener.idl
 */

module mozilla.xpcom.nsIStreamListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIRequestObserver;

public import mozilla.xpcom.nsIInputStream; /* forward declaration */


/* starting interface:    nsIStreamListener */
const char[] NS_ISTREAMLISTENER_IID_STR = "1a637020-1482-11d3-9333-00104ba0fd40";

const nsIID NS_ISTREAMLISTENER_IID= 
  {0x1a637020, 0x1482, 0x11d3, 
    [ 0x93, 0x33, 0x00, 0x10, 0x4b, 0xa0, 0xfd, 0x40 ]};

/**
 * nsIStreamListener
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIStreamListener : nsIRequestObserver {
  static const char[] IID_STR = NS_ISTREAMLISTENER_IID_STR;
  static const nsIID IID = NS_ISTREAMLISTENER_IID;

  /**
     * Called when the next chunk of data (corresponding to the request) may
     * be read without blocking the calling thread.  The onDataAvailable impl
     * must read exactly |aCount| bytes of data before returning.
     *
     * @param aRequest request corresponding to the source of the data
     * @param aContext user defined context
     * @param aInputStream input stream containing the data chunk
     * @param aOffset
     *        Number of bytes that were sent in previous onDataAvailable calls
     *        for this request. In other words, the sum of all previous count
     *        parameters.
     *        If that number is greater than or equal to 2^32, this parameter
     *        will be PR_UINT32_MAX (2^32 - 1).
     * @param aCount number of bytes available in the stream
     *
     * NOTE: The aInputStream parameter must implement readSegments.
     *
     * An exception thrown from onDataAvailable has the side-effect of
     * causing the request to be canceled.
     */
  /* void onDataAvailable (in nsIRequest aRequest, in nsISupports aContext, in nsIInputStream aInputStream, in unsigned long aOffset, in unsigned long aCount); */
  nsresult OnDataAvailable(nsIRequest aRequest, nsISupports aContext, nsIInputStream aInputStream, PRUint32 aOffset, PRUint32 aCount);

}

