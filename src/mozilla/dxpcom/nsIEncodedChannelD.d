/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEncodedChannel.idl
 */

module mozilla.dxpcom.nsIEncodedChannelD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIEncodedChannel;


public import mozilla.dxpcom.nsIEncodedChannelD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIStringEnumerator;

import mozilla.dxpcom.nsIStringEnumeratorD;


/* starting wrapper class:    nsIEncodedChannel */
/**
 * A channel interface which allows special handling of encoded content
 */
class nsIEncodedChannelD : public nsISupportsD {

  static const nsIID IID = NS_IENCODEDCHANNEL_IID;


  alias nsIEncodedChannel InnerType;

  this(nsIEncodedChannel intr){
    super(intr);
    this.inner = intr;
  }

  nsIEncodedChannel opCast() {
    return inner;
  }

  void opAssign(nsIEncodedChannel value) {
    inner = value;
  }

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
  nsIUTF8StringEnumeratorD  ContentEncodings(){
    nsIUTF8StringEnumerator value;
    nsresult __result = inner.GetContentEncodings(&value);
    CheckException(__result);
    return new nsIUTF8StringEnumeratorD(value);
  }

  /**
     * This attribute controls whether or not content conversion should be
     * done per the Content-Encoding response header.  applyConversion can only 
     * be set before or during OnStartRequest.  Calling this during 
     * OnDataAvailable is an error. 
     *
     * TRUE by default.
     */
  /* attribute boolean applyConversion; */
  PRBool ApplyConversion(){
    PRBool value;
    nsresult __result = inner.GetApplyConversion(&value);
    CheckException(__result);
    return value;
  }
  void ApplyConversion(PRBool aApplyConversion){
    nsresult __result = inner.SetApplyConversion(aApplyConversion);
    CheckException(__result);
  }

private:
  nsIEncodedChannel inner;

}

