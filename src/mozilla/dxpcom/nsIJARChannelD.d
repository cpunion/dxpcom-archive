/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIJARChannel.idl
 */

module mozilla.dxpcom.nsIJARChannelD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIJARChannel;


public import mozilla.dxpcom.nsIJARChannelD;

public import mozilla.xpcom.nsIChannel;
public import mozilla.dxpcom.nsIChannelD;


/* starting wrapper class:    nsIJARChannel */
class nsIJARChannelD : public nsIChannelD {

  static const nsIID IID = NS_IJARCHANNEL_IID;


  alias nsIJARChannel InnerType;

  this(nsIJARChannel intr){
    super(intr);
    this.inner = intr;
  }

  nsIJARChannel opCast() {
    return inner;
  }

  void opAssign(nsIJARChannel value) {
    inner = value;
  }

private:
  nsIJARChannel inner;

}

