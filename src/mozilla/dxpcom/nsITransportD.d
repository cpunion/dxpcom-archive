/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITransport.idl
 */

module mozilla.dxpcom.nsITransportD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsITransport;


public import mozilla.dxpcom.nsITransportD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;

public import mozilla.xpcom.nsIOutputStream;

public import mozilla.dxpcom.nsIOutputStreamD;

public import mozilla.xpcom.nsITransport;

import mozilla.dxpcom.nsITransportD;

public import mozilla.xpcom.nsIEventTarget;

public import mozilla.dxpcom.nsIEventTargetD;


/* starting wrapper class:    nsITransport */
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
class nsITransportD : public nsISupportsD {

  static const nsIID IID = NS_ITRANSPORT_IID;


  alias nsITransport InnerType;

  this(nsITransport intr){
    super(intr);
    this.inner = intr;
  }

  nsITransport opCast() {
    return inner;
  }

  void opAssign(nsITransport value) {
    inner = value;
  }

  /**
     * Open flags.
     */
  enum { OPEN_BLOCKING = 1U }

  enum { OPEN_UNBUFFERED = 2U }

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
  nsIInputStreamD  OpenInputStream(PRUint32 aFlags, PRUint32 aSegmentSize, PRUint32 aSegmentCount){
    nsIInputStream _retval;
    nsresult __result = inner.OpenInputStream(aFlags, aSegmentSize, aSegmentCount, &_retval);
    CheckException(__result);
    return new nsIInputStreamD(_retval);
  }

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
  nsIOutputStreamD  OpenOutputStream(PRUint32 aFlags, PRUint32 aSegmentSize, PRUint32 aSegmentCount){
    nsIOutputStream _retval;
    nsresult __result = inner.OpenOutputStream(aFlags, aSegmentSize, aSegmentCount, &_retval);
    CheckException(__result);
    return new nsIOutputStreamD(_retval);
  }

  /**
     * Close the transport and any open streams.
     *
     * @param aReason
     *        the reason for closing the stream.
     */
  /* void close (in nsresult aReason); */
  void Close(nsresult aReason){
    nsresult __result = inner.Close(aReason);
    CheckException(__result);
  }

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
  void SetEventSink(nsITransportEventSinkD aSink, nsIEventTargetD aEventTarget){
    nsresult __result = inner.SetEventSink(aSink ? cast(nsITransportEventSink)aSink : null, aEventTarget ? cast(nsIEventTarget)aEventTarget : null);
    CheckException(__result);
  }

  /**
     * Generic nsITransportEventSink status codes.  nsITransport
     * implementations may override these status codes with their own more
     * specific status codes (e.g., see nsISocketTransport).
     */
  enum { STATUS_READING = 2152398856U }

  enum { STATUS_WRITING = 2152398857U }

private:
  nsITransport inner;

}


/* starting wrapper class:    nsITransportEventSink */
class nsITransportEventSinkD : public nsISupportsD {

  static const nsIID IID = NS_ITRANSPORTEVENTSINK_IID;


  alias nsITransportEventSink InnerType;

  this(nsITransportEventSink intr){
    super(intr);
    this.inner = intr;
  }

  nsITransportEventSink opCast() {
    return inner;
  }

  void opAssign(nsITransportEventSink value) {
    inner = value;
  }

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
  void OnTransportStatus(nsITransportD aTransport, nsresult aStatus, PRUint64 aProgress, PRUint64 aProgressMax){
    nsresult __result = inner.OnTransportStatus(aTransport ? cast(nsITransport)aTransport : null, aStatus, aProgress, aProgressMax);
    CheckException(__result);
  }

private:
  nsITransportEventSink inner;

}

