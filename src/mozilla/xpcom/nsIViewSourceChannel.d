/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIViewSourceChannel.idl
 */

module mozilla.xpcom.nsIViewSourceChannel;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIChannel;


/* starting interface:    nsIViewSourceChannel */
const char[] NS_IVIEWSOURCECHANNEL_IID_STR = "8b77d6e2-2ae9-11d5-be57-000064657374";

const nsIID NS_IVIEWSOURCECHANNEL_IID= 
  {0x8b77d6e2, 0x2ae9, 0x11d5, 
    [ 0xbe, 0x57, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

extern(Windows)
interface nsIViewSourceChannel : nsIChannel {
  static const char[] IID_STR = NS_IVIEWSOURCECHANNEL_IID_STR;
  static const nsIID IID = NS_IVIEWSOURCECHANNEL_IID;

  /**
     * The actual (MIME) content type of the data.
     *
     * nsIViewSourceChannel returns a content type of
     * "application/x-view-source" if you ask it for the contentType
     * attribute.
     *
     * However, callers interested in finding out or setting the
     * actual content type can utilize this attribute.
     */
  /* attribute ACString originalContentType; */
  nsresult GetOriginalContentType(nsACString * aOriginalContentType);
  nsresult SetOriginalContentType(nsACString * aOriginalContentType);

}

