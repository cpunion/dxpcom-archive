/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFeedProcessor.idl
 */

module mozilla.dxpcom.nsIFeedProcessorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFeedProcessor;


public import mozilla.dxpcom.nsIFeedProcessorD;

public import mozilla.xpcom.nsIStreamListener;
public import mozilla.dxpcom.nsIStreamListenerD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIFeedListener;

import mozilla.dxpcom.nsIFeedListenerD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;


/* starting wrapper class:    nsIFeedProcessor */
/**
 * An nsIFeedProcessor parses feeds, triggering callbacks based on
 * their contents.
 */
class nsIFeedProcessorD : public nsIStreamListenerD {

  static const nsIID IID = NS_IFEEDPROCESSOR_IID;


  alias nsIFeedProcessor InnerType;

  this(nsIFeedProcessor intr){
    super(intr);
    this.inner = intr;
  }

  nsIFeedProcessor opCast() {
    return inner;
  }

  void opAssign(nsIFeedProcessor value) {
    inner = value;
  }

  /**
   * The listener that will respond to feed events. 
   */
  /* attribute nsIFeedResultListener listener; */
  nsIFeedResultListenerD  Listener(){
    nsIFeedResultListener value;
    nsresult __result = inner.GetListener(&value);
    CheckException(__result);
    return new nsIFeedResultListenerD(value);
  }
  void Listener(nsIFeedResultListenerD  aListener){
    nsIFeedResultListener value;
    nsresult __result = inner.SetListener(value);
    CheckException(__result);
  }

  /**
   * Parse a feed from an nsIInputStream.
   *
   * @param stream The input stream.
   * @param uri The base URI.
   */
  /* void parseFromStream (in nsIInputStream stream, in nsIURI uri); */
  void ParseFromStream(nsIInputStreamD stream, nsIURID uri){
    nsresult __result = inner.ParseFromStream(stream ? cast(nsIInputStream)stream : null, uri ? cast(nsIURI)uri : null);
    CheckException(__result);
  }

  /**
   * Parse a feed from a string.
   *
   * @param str The string to parse.
   * @param uri The base URI.
   */
  /* void parseFromString (in AString str, in nsIURI uri); */
  void ParseFromString(wchar[] str, nsIURID uri){
    scope auto _str = new AString(str);
    nsresult __result = inner.ParseFromString(cast(nsAString*)_str, uri ? cast(nsIURI)uri : null);
    CheckException(__result);
  }

  /**
   * Parse a feed asynchronously. The caller must then call the
   * nsIFeedProcessor's nsIStreamListener methods to drive the
   * parse. Do not call the other parse methods during an asynchronous
   * parse.
   *
   * @param requestObserver The observer to notify on start/stop. This
   *                        argument can be null.
   * @param uri The base URI.
   */
  /* void parseAsync (in nsIRequestObserver requestObserver, in nsIURI uri); */
  void ParseAsync(nsIRequestObserverD requestObserver, nsIURID uri){
    nsresult __result = inner.ParseAsync(requestObserver ? cast(nsIRequestObserver)requestObserver : null, uri ? cast(nsIURI)uri : null);
    CheckException(__result);
  }

private:
  nsIFeedProcessor inner;

}

