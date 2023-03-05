/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIInputStreamChannel.idl
 */

module mozilla.xpcom.nsIInputStreamChannel;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIChannel;

public import mozilla.xpcom.nsIInputStream; /* forward declaration */


/* starting interface:    nsIInputStreamChannel */
const char[] NS_IINPUTSTREAMCHANNEL_IID_STR = "560a64ce-6d66-44db-b38e-864469c52d03";

const nsIID NS_IINPUTSTREAMCHANNEL_IID= 
  {0x560a64ce, 0x6d66, 0x44db, 
    [ 0xb3, 0x8e, 0x86, 0x44, 0x69, 0xc5, 0x2d, 0x03 ]};

/**
 * nsIInputStreamChannel
 *
 * This interface provides methods to initialize an input stream channel.
 * The input stream channel serves as a data pump for an input stream.
 */
extern(Windows)
interface nsIInputStreamChannel : nsIChannel {
  static const char[] IID_STR = NS_IINPUTSTREAMCHANNEL_IID_STR;
  static const nsIID IID = NS_IINPUTSTREAMCHANNEL_IID;

  /**
     * Sets the URI for this channel.
     */
  /* void setURI (in nsIURI aURI); */
  nsresult SetURI(nsIURI aURI);

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
  nsresult GetContentStream(nsIInputStream  *aContentStream);
  nsresult SetContentStream(nsIInputStream  aContentStream);

}

