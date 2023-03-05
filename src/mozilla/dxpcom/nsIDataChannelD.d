/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDataChannel.idl
 */

module mozilla.dxpcom.nsIDataChannelD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDataChannel;


public import mozilla.dxpcom.nsIDataChannelD;

public import mozilla.xpcom.nsIChannel;
public import mozilla.dxpcom.nsIChannelD;


/* starting wrapper class:    nsIDataChannel */
class nsIDataChannelD : public nsIChannelD {

  static const nsIID IID = NS_IDATACHANNEL_IID;


  alias nsIDataChannel InnerType;

  this(nsIDataChannel intr){
    super(intr);
    this.inner = intr;
  }

  nsIDataChannel opCast() {
    return inner;
  }

  void opAssign(nsIDataChannel value) {
    inner = value;
  }

private:
  nsIDataChannel inner;

}

