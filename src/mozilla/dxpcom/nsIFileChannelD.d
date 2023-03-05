/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFileChannel.idl
 */

module mozilla.dxpcom.nsIFileChannelD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFileChannel;


public import mozilla.dxpcom.nsIFileChannelD;

public import mozilla.xpcom.nsIChannel;
public import mozilla.dxpcom.nsIChannelD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;


/* starting wrapper class:    nsIFileChannel */
/**
 * nsIFileChannel
 */
class nsIFileChannelD : public nsIChannelD {

  static const nsIID IID = NS_IFILECHANNEL_IID;


  alias nsIFileChannel InnerType;

  this(nsIFileChannel intr){
    super(intr);
    this.inner = intr;
  }

  nsIFileChannel opCast() {
    return inner;
  }

  void opAssign(nsIFileChannel value) {
    inner = value;
  }

  /* readonly attribute nsIFile file; */
  nsIFileD  File(){
    nsIFile value;
    nsresult __result = inner.GetFile(&value);
    CheckException(__result);
    return new nsIFileD(value);
  }

private:
  nsIFileChannel inner;

}

