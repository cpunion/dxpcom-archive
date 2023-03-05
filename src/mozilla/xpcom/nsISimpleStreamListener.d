/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISimpleStreamListener.idl
 */

module mozilla.xpcom.nsISimpleStreamListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIStreamListener;

public import mozilla.xpcom.nsIOutputStream; /* forward declaration */


/* starting interface:    nsISimpleStreamListener */
const char[] NS_ISIMPLESTREAMLISTENER_IID_STR = "a9b84f6a-0824-4278-bae6-bfca0570a26e";

const nsIID NS_ISIMPLESTREAMLISTENER_IID= 
  {0xa9b84f6a, 0x0824, 0x4278, 
    [ 0xba, 0xe6, 0xbf, 0xca, 0x05, 0x70, 0xa2, 0x6e ]};

/**
 * A simple stream listener can be used with AsyncRead to supply data to
 * a output stream.
 */
extern(Windows)
interface nsISimpleStreamListener : nsIStreamListener {
  static const char[] IID_STR = NS_ISIMPLESTREAMLISTENER_IID_STR;
  static const nsIID IID = NS_ISIMPLESTREAMLISTENER_IID;

  /**
     * Initialize the simple stream listener.
     *
     * @param aSink data will be read from the channel to this output stream.
     *              Must implement writeFrom.
     * @param aObserver optional stream observer (can be NULL)
     */
  /* void init (in nsIOutputStream aSink, in nsIRequestObserver aObserver); */
  nsresult Init(nsIOutputStream aSink, nsIRequestObserver aObserver);

}

