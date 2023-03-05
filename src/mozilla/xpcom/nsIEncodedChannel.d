/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEncodedChannel.idl
 */

module mozilla.xpcom.nsIEncodedChannel;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIStringEnumerator;


/* starting interface:    nsIEncodedChannel */
const char[] NS_IENCODEDCHANNEL_IID_STR = "30d7ec3a-f376-4652-9276-3092ec57abb6";

const nsIID NS_IENCODEDCHANNEL_IID= 
  {0x30d7ec3a, 0xf376, 0x4652, 
    [ 0x92, 0x76, 0x30, 0x92, 0xec, 0x57, 0xab, 0xb6 ]};

/**
 * A channel interface which allows special handling of encoded content
 */
extern(Windows)
interface nsIEncodedChannel : nsISupports {
  static const char[] IID_STR = NS_IENCODEDCHANNEL_IID_STR;
  static const nsIID IID = NS_IENCODEDCHANNEL_IID;

  /**
     * This attribute holds the MIME types corresponding to the content
     * encodings on the channel.  The enumerator returns nsISupportsCString
     * objects.  The first one corresponds to the outermost encoding on the
     * channel and then we work our way inward.  "identity" is skipped and not
     * represented on the list.  Unknown encodings make the enumeration stop.
     * If you want the actual Content-Encoding value, use
     * getResponseHeader("Content-Encoding").
     *
     * When there is no Content-Encoding header, this property is null.
     *
     * Modifying the Content-Encoding header on the channel will cause
     * this enumerator to have undefined behavior.  Don't do it.
     *
     * Also note that contentEncodings only exist during or after OnStartRequest.
     * Calling contentEncodings before OnStartRequest is an error.
     */
  /* readonly attribute nsIUTF8StringEnumerator contentEncodings; */
  nsresult GetContentEncodings(nsIUTF8StringEnumerator  *aContentEncodings);

  /**
     * This attribute controls whether or not content conversion should be
     * done per the Content-Encoding response header.  applyConversion can only 
     * be set before or during OnStartRequest.  Calling this during 
     * OnDataAvailable is an error. 
     *
     * TRUE by default.
     */
  /* attribute boolean applyConversion; */
  nsresult GetApplyConversion(PRBool *aApplyConversion);
  nsresult SetApplyConversion(PRBool aApplyConversion);

}

