/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIStreamListenerProxy.idl
 */

module mozilla.xpcom.nsIStreamListenerProxy;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIStreamListener;

public import mozilla.xpcom.nsIEventQueue; /* forward declaration */


/* starting interface:    nsIStreamListenerProxy */
const char[] NS_ISTREAMLISTENERPROXY_IID_STR = "e400e688-6b54-4a84-8c4e-56b40281981a";

const nsIID NS_ISTREAMLISTENERPROXY_IID= 
  {0xe400e688, 0x6b54, 0x4a84, 
    [ 0x8c, 0x4e, 0x56, 0xb4, 0x02, 0x81, 0x98, 0x1a ]};

/**
 * A stream listener proxy is used to ship data over to another thread specified
 * by the thread's event queue.  The "true" stream listener's methods are
 * invoked on the other thread.
 *
 * This interface only provides the initialization needed after construction. 
 * Otherwise, these objects are used as nsIStreamListener.
 */
extern(Windows)
interface nsIStreamListenerProxy : nsIStreamListener {
  static const char[] IID_STR = NS_ISTREAMLISTENERPROXY_IID_STR;
  static const nsIID IID = NS_ISTREAMLISTENERPROXY_IID;

  /**
     * Initializes an nsIStreamListenerProxy.
     *
     * @param aListener receives listener notifications on the other thread
     * @param aEventQ may be NULL indicating the calling thread's event queue
     * @param aBufferSegmentSize passing zero indicates the default
     * @param aBufferMaxSize passing zero indicates the default
     */
  /* void init (in nsIStreamListener aListener, in nsIEventQueue aEventQ, in unsigned long aBufferSegmentSize, in unsigned long aBufferMaxSize); */
  nsresult Init(nsIStreamListener aListener, nsIEventQueue aEventQ, PRUint32 aBufferSegmentSize, PRUint32 aBufferMaxSize);

}


/* starting interface:    nsIAsyncStreamListener */
const char[] NS_IASYNCSTREAMLISTENER_IID_STR = "1b012ade-91bf-11d3-8cd9-0060b0fc14a3";

const nsIID NS_IASYNCSTREAMLISTENER_IID= 
  {0x1b012ade, 0x91bf, 0x11d3, 
    [ 0x8c, 0xd9, 0x00, 0x60, 0xb0, 0xfc, 0x14, 0xa3 ]};

/**
 * THIS INTERFACE IS DEPRECATED
 *
 * An asynchronous stream listener is used to ship data over to another thread specified
 * by the thread's event queue. The receiver stream listener is then used to receive
 * the notifications on the other thread. 
 *
 * This interface only provides the initialization needed after construction. Otherwise,
 * these objects are used simply as nsIStreamListener.
 */
extern(Windows)
interface nsIAsyncStreamListener : nsIStreamListener {
  static const char[] IID_STR = NS_IASYNCSTREAMLISTENER_IID_STR;
  static const nsIID IID = NS_IASYNCSTREAMLISTENER_IID;

  /**
     * Initializes an nsIAsyncStreamListener. 
     *
     * @param aReceiver receives listener notifications on the other thread
     * @param aEventQ may be null indicating the calling thread's event queue
     */
  /* void init (in nsIStreamListener aReceiver, in nsIEventQueue aEventQ); */
  nsresult Init(nsIStreamListener aReceiver, nsIEventQueue aEventQ);

}

