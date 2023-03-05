/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIViewSourceChannel.idl
 */

module mozilla.dxpcom.nsIViewSourceChannelD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIViewSourceChannel;


public import mozilla.dxpcom.nsIViewSourceChannelD;

public import mozilla.xpcom.nsIChannel;
public import mozilla.dxpcom.nsIChannelD;


/* starting wrapper class:    nsIViewSourceChannel */
class nsIViewSourceChannelD : public nsIChannelD {

  static const nsIID IID = NS_IVIEWSOURCECHANNEL_IID;


  alias nsIViewSourceChannel InnerType;

  this(nsIViewSourceChannel intr){
    super(intr);
    this.inner = intr;
  }

  nsIViewSourceChannel opCast() {
    return inner;
  }

  void opAssign(nsIViewSourceChannel value) {
    inner = value;
  }

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
  char[] OriginalContentType(){
    scope auto value = new ACString();
    nsresult __result = inner.GetOriginalContentType(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void OriginalContentType(char[] aOriginalContentType){
    scope auto value = new ACString(aOriginalContentType);
    nsresult __result = inner.SetOriginalContentType(cast(nsACString*)value);
    CheckException(__result);
  }

private:
  nsIViewSourceChannel inner;

}

