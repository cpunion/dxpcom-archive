/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMultiPartChannel.idl
 */

module mozilla.xpcom.nsIMultiPartChannel;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIChannel; /* forward declaration */


/* starting interface:    nsIMultiPartChannel */
const char[] NS_IMULTIPARTCHANNEL_IID_STR = "ba78db7b-b88c-4b76-baf9-3c2296a585ae";

const nsIID NS_IMULTIPARTCHANNEL_IID= 
  {0xba78db7b, 0xb88c, 0x4b76, 
    [ 0xba, 0xf9, 0x3c, 0x22, 0x96, 0xa5, 0x85, 0xae ]};

/**
 * An interface to access the the base channel 
 * associated with a MultiPartChannel.
 */
extern(Windows)
interface nsIMultiPartChannel : nsISupports {
  static const char[] IID_STR = NS_IMULTIPARTCHANNEL_IID_STR;
  static const nsIID IID = NS_IMULTIPARTCHANNEL_IID;

  /**
     * readonly attribute to access the underlying channel
     */
  /* readonly attribute nsIChannel baseChannel; */
  nsresult GetBaseChannel(nsIChannel  *aBaseChannel);

  /**
     * Access to the Content-Disposition header field of this part of
     * a multipart message.  This allows getting the preferred
     * handling method, preferred filename, etc.  See RFC 2183.
     */
  /* attribute ACString contentDisposition; */
  nsresult GetContentDisposition(nsACString * aContentDisposition);
  nsresult SetContentDisposition(nsACString * aContentDisposition);

  /**
     * Attribute guaranteed to be different for different parts of
     * the same multipart document.
     */
  /* readonly attribute PRUint32 partID; */
  nsresult GetPartID(PRUint32 *aPartID);

  /**
     * Set to true when onStopRequest is received from the base channel.
     * The listener can check this from its onStopRequest to determine
     * whether more data can be expected.
     */
  /* readonly attribute boolean isLastPart; */
  nsresult GetIsLastPart(PRBool *aIsLastPart);

}

