/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMultiPartChannel.idl
 */

module mozilla.dxpcom.nsIMultiPartChannelD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMultiPartChannel;


public import mozilla.dxpcom.nsIMultiPartChannelD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIChannel;

public import mozilla.dxpcom.nsIChannelD;


/* starting wrapper class:    nsIMultiPartChannel */
/**
 * An interface to access the the base channel 
 * associated with a MultiPartChannel.
 */
class nsIMultiPartChannelD : public nsISupportsD {

  static const nsIID IID = NS_IMULTIPARTCHANNEL_IID;


  alias nsIMultiPartChannel InnerType;

  this(nsIMultiPartChannel intr){
    super(intr);
    this.inner = intr;
  }

  nsIMultiPartChannel opCast() {
    return inner;
  }

  void opAssign(nsIMultiPartChannel value) {
    inner = value;
  }

  /**
     * readonly attribute to access the underlying channel
     */
  /* readonly attribute nsIChannel baseChannel; */
  nsIChannelD  BaseChannel(){
    nsIChannel value;
    nsresult __result = inner.GetBaseChannel(&value);
    CheckException(__result);
    return new nsIChannelD(value);
  }

  /**
     * Access to the Content-Disposition header field of this part of
     * a multipart message.  This allows getting the preferred
     * handling method, preferred filename, etc.  See RFC 2183.
     */
  /* attribute ACString contentDisposition; */
  char[] ContentDisposition(){
    scope auto value = new ACString();
    nsresult __result = inner.GetContentDisposition(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void ContentDisposition(char[] aContentDisposition){
    scope auto value = new ACString(aContentDisposition);
    nsresult __result = inner.SetContentDisposition(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     * Attribute guaranteed to be different for different parts of
     * the same multipart document.
     */
  /* readonly attribute PRUint32 partID; */
  PRUint32 PartID(){
    PRUint32 value;
    nsresult __result = inner.GetPartID(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Set to true when onStopRequest is received from the base channel.
     * The listener can check this from its onStopRequest to determine
     * whether more data can be expected.
     */
  /* readonly attribute boolean isLastPart; */
  PRBool IsLastPart(){
    PRBool value;
    nsresult __result = inner.GetIsLastPart(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIMultiPartChannel inner;

}

