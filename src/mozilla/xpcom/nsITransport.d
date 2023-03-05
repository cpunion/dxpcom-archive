/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITransport.idl
 */

module mozilla.xpcom.nsITransport;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIInputStream; /* forward declaration */

public import mozilla.xpcom.nsIOutputStream; /* forward declaration */

public import mozilla.xpcom.nsITransport;

public import mozilla.xpcom.nsIEventTarget; /* forward declaration */


/* starting interface:    nsITransport */
const char[] NS_ITRANSPORT_IID_STR = "cbb0baeb-5fcb-408b-a2be-9f8fc98d0af1";

const nsIID NS_ITRANSPORT_IID= 
  {0xcbb0baeb, 0x5fcb, 0x408b, 
    [ 0xa2, 0xbe, 0x9f, 0x8f, 0xc9, 0x8d, 0x0a, 0xf1 ]};

/**
 * nsITransport
 *
 * This interface provides a common way of accessing i/o streams connected
 * to some resource.  This interface does not in any way specify the resource.
 * It provides methods to open blocking or non-blocking, buffered or unbuffered
 * streams to the resource.  The name "transport" is meant to connote the 
 * inherent data transfer implied by this interface (i.e., data is being
 * transfered in some fashion via the streams exposed by this interface).
 *
 * A transport can have an event sink associated with it.  The event sink 
 * receives transport-specific events as the transfer is occuring.  For a
 * socket transport, these events can include status about the connection.
 * See nsISocketTransport for more info about socket transport specifics.
 */
extern(Windows)
interface nsITransport : nsISupports {
  static const char[] IID_STR = NS_ITRANSPORT_IID_STR;
  static const nsIID IID = NS_ITRANSPORT_IID;

  /**
     * Open flags.
     */
  enum { OPEN_BLOCKING = 1U };

  enum { OPEN_UNBUFFERED = 2U };

  /**
     * Open an input stream on this transport.
     *
     * Flags have the following meaning:
     *
     * OPEN_BLOCKING
     *   If specified, then the resulting stream will have blocking stream
     *   semantics.  This means that if the stream has no data and is not
     *   closed, then reading from it will block the calling thread until
     *   at least one byte is available or until the stream is closed.
     *   If this flag is NOT specified, then the stream has non-blocking
     *   stream semantics.  This means that if the stream has no data and is
     *   not closed, then reading from it returns NS_BASE_STREAM_WOULD_BLOCK.
     *   In addition, in non-blocking mode, the stream is guaranteed to 
     *   support nsIAsyncInputStream.  This interface allows the consumer of
     *   the stream to be notified when the stream can again be read.
     *
     * OPEN_UNBUFFERED
     *   If specified, the resulting stream may not support ReadSegments.
     *   ReadSegments is only gauranteed to be implemented when this flag is
     *   NOT specified.
     *
     * @param aFlags
     *        optional transport specific flags.
     * @param aSegmentSize
     *        if OPEN_UNBUFFERED is not set, then this parameter specifies the
     *        size of each buffer segment (pass 0 to use default value).
     * @param aSegmentCount
     *        if OPEN_UNBUFFERED is not set, then this parameter specifies the
     *        maximum number of buffer segments (pass 0 to use default value).
     */
  /* nsIInputStream openInputStream (in unsigned long aFlags, in unsigned long aSegmentSize, in unsigned long aSegmentCount); */
  nsresult OpenInputStream(PRUint32 aFlags, PRUint32 aSegmentSize, PRUint32 aSegmentCount, nsIInputStream *_retval);

  /**
     * Open an output stream on this transport.
     *
     * Flags have the following meaning:
     *
     * OPEN_BLOCKING
     *   If specified, then the resulting stream will have blocking stream
     *   semantics.  This means that if the stream is full and is not closed,
     *   then writing to it will block the calling thread until ALL of the
     *   data can be written or until the stream is closed.  If this flag is
     *   NOT specified, then the stream has non-blocking stream semantics.
     *   This means that if the stream is full and is not closed, then writing
     *   to it returns NS_BASE_STREAM_WOULD_BLOCK.  In addition, in non-
     *   blocking mode, the stream is guaranteed to support
     *   nsIAsyncOutputStream.  This interface allows the consumer of the
     *   stream to be notified when the stream can again accept more data.
     *
     * OPEN_UNBUFFERED
     *   If specified, the resulting stream may not support WriteSegments and
     *   WriteFrom.  WriteSegments and WriteFrom are only gauranteed to be
     *   implemented when this flag is NOT specified.
     *
     * @param aFlags
     *        optional transport specific flags.
     * @param aSegmentSize
     *        if OPEN_UNBUFFERED is not set, then this parameter specifies the
     *        size of each buffer segment (pass 0 to use default value).
     * @param aSegmentCount
     *        if OPEN_UNBUFFERED is not set, then this parameter specifies the
     *        maximum number of buffer segments (pass 0 to use default value).
     */
  /* nsIOutputStream openOutputStream (in unsigned long aFlags, in unsigned long aSegmentSize, in unsigned long aSegmentCount); */
  nsresult OpenOutputStream(PRUint32 aFlags, PRUint32 aSegmentSize, PRUint32 aSegmentCount, nsIOutputStream *_retval);

  /**
     * Close the transport and any open streams.
     *
     * @param aReason
     *        the reason for closing the stream.
     */
  /* void close (in nsresult aReason); */
  nsresult Close(nsresult aReason);

  /**
     * Set the transport event sink.
     *
     * @param aSink
     *        receives transport layer notifications
     * @param aEventTarget
     *        indicates the event target to which the notifications should
     *        be delivered.  if NULL, then the notifications may occur on
     *        any thread.
     */
  /* void setEventSink (in nsITransportEventSink aSink, in nsIEventTarget aEventTarget); */
  nsresult SetEventSink(nsITransportEventSink aSink, nsIEventTarget aEventTarget);

  /**
     * Generic nsITransportEventSink status codes.  nsITransport
     * implementations may override these status codes with their own more
     * specific status codes (e.g., see nsISocketTransport).
     */
  enum { STATUS_READING = 2152398856U };

  enum { STATUS_WRITING = 2152398857U };

}


/* starting interface:    nsITransportEventSink */
const char[] NS_ITRANSPORTEVENTSINK_IID_STR = "eda4f520-67f7-484b-a691-8c3226a5b0a6";

const nsIID NS_ITRANSPORTEVENTSINK_IID= 
  {0xeda4f520, 0x67f7, 0x484b, 
    [ 0xa6, 0x91, 0x8c, 0x32, 0x26, 0xa5, 0xb0, 0xa6 ]};

extern(Windows)
interface nsITransportEventSink : nsISupports {
  static const char[] IID_STR = NS_ITRANSPORTEVENTSINK_IID_STR;
  static const nsIID IID = NS_ITRANSPORTEVENTSINK_IID;

  /**
     * Transport status notification.
     *
     * @param aTransport
     *        the transport sending this status notification.
     * @param aStatus
     *        the transport status (resolvable to a string using
     *        nsIErrorService). See nsISocketTransport for socket specific
     *        status codes and more comments.
     * @param aProgress
     *        the amount of data either read or written depending on the value
     *        of the status code.  this value is relative to aProgressMax.
     * @param aProgressMax
     *        the maximum amount of data that will be read or written.  if
     *        unknown, 0xFFFFFFFF will be passed.
     */
  /* void onTransportStatus (in nsITransport aTransport, in nsresult aStatus, in unsigned long long aProgress, in unsigned long long aProgressMax); */
  nsresult OnTransportStatus(nsITransport aTransport, nsresult aStatus, PRUint64 aProgress, PRUint64 aProgressMax);

}

