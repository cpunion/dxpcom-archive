/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIInputStreamChannel.idl
 */

module mozilla.dxpcom.nsIInputStreamChannelD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIInputStreamChannel;


public import mozilla.dxpcom.nsIInputStreamChannelD;

public import mozilla.xpcom.nsIChannel;
public import mozilla.dxpcom.nsIChannelD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;


/* starting wrapper class:    nsIInputStreamChannel */
/**
 * nsIInputStreamChannel
 *
 * This interface provides methods to initialize an input stream channel.
 * The input stream channel serves as a data pump for an input stream.
 */
class nsIInputStreamChannelD : public nsIChannelD {

  static const nsIID IID = NS_IINPUTSTREAMCHANNEL_IID;


  alias nsIInputStreamChannel InnerType;

  this(nsIInputStreamChannel intr){
    super(intr);
    this.inner = intr;
  }

  nsIInputStreamChannel opCast() {
    return inner;
  }

  void opAssign(nsIInputStreamChannel value) {
    inner = value;
  }

  /**
     * Sets the URI for this channel.
     */
  /* void setURI (in nsIURI aURI); */
  void SetURI(nsIURID aURI){
    nsresult __result = inner.SetURI(aURI ? cast(nsIURI)aURI : null);
    CheckException(__result);
  }

  /**
     * Get/set the content stream
     *
     * This stream contains the data that will be pushed to the channel's
     * stream listener.  If the stream is non-blocking and supports the
     * nsIAsyncInputStream interface, then the stream will be read directly.
     * Otherwise, the stream will be read on a background thread.
     *
     * This attribute can only be changed before the channel is opened.
     *
     * @throws NS_ERROR_IN_PROGRESS if the setter is called after the channel
     * has been opened.
     */
  /* attribute nsIInputStream contentStream; */
  nsIInputStreamD  ContentStream(){
    nsIInputStream value;
    nsresult __result = inner.GetContentStream(&value);
    CheckException(__result);
    return new nsIInputStreamD(value);
  }
  void ContentStream(nsIInputStreamD  aContentStream){
    nsIInputStream value;
    nsresult __result = inner.SetContentStream(value);
    CheckException(__result);
  }

private:
  nsIInputStreamChannel inner;

}

