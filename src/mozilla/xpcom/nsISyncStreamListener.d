/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISyncStreamListener.idl
 */

module mozilla.xpcom.nsISyncStreamListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIStreamListener;


/* starting interface:    nsISyncStreamListener */
const char[] NS_ISYNCSTREAMLISTENER_IID_STR = "7e1aa658-6e3f-4521-9946-9685a169f764";

const nsIID NS_ISYNCSTREAMLISTENER_IID= 
  {0x7e1aa658, 0x6e3f, 0x4521, 
    [ 0x99, 0x46, 0x96, 0x85, 0xa1, 0x69, 0xf7, 0x64 ]};

extern(Windows)
interface nsISyncStreamListener : nsIStreamListener {
  static const char[] IID_STR = NS_ISYNCSTREAMLISTENER_IID_STR;
  static const nsIID IID = NS_ISYNCSTREAMLISTENER_IID;

  /**
     * Returns an input stream that when read will fetch data delivered to the
     * sync stream listener.  The nsIInputStream implementation will wait for
     * OnDataAvailable events before returning from Read.
     *
     * NOTE: Reading from the returned nsIInputStream may spin the current
     * thread's event queue, which could result in any event being processed.
     */
  /* readonly attribute nsIInputStream inputStream; */
  nsresult GetInputStream(nsIInputStream  *aInputStream);

}

