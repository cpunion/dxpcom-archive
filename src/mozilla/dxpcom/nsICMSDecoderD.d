/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICMSDecoder.idl
 */

module mozilla.dxpcom.nsICMSDecoderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICMSDecoder;


public import mozilla.dxpcom.nsICMSDecoderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsICMSMessage;

public import mozilla.dxpcom.nsICMSMessageD;


/* starting wrapper class:    nsICMSDecoder */
/**
 * nsICMSDecoder
 *  Interface to decode an CMS message
 */
class nsICMSDecoderD : public nsISupportsD {

  static const nsIID IID = NS_ICMSDECODER_IID;


  alias nsICMSDecoder InnerType;

  this(nsICMSDecoder intr){
    super(intr);
    this.inner = intr;
  }

  nsICMSDecoder opCast() {
    return inner;
  }

  void opAssign(nsICMSDecoder value) {
    inner = value;
  }

  /* void start (in NSSCMSContentCallback cb, in voidPtr arg); */
  void Start(NSSCMSContentCallback cb, void * arg){
    nsresult __result = inner.Start(cb, arg);
    CheckException(__result);
  }

  /* void update (in string aBuf, in long aLen); */
  void Update(char*aBuf, PRInt32 aLen){
    nsresult __result = inner.Update(aBuf, aLen);
    CheckException(__result);
  }

  /* void finish (out nsICMSMessage msg); */
  void Finish(out nsICMSMessageD msg){
    nsICMSMessage _msg;
    nsresult __result = inner.Finish(&_msg);
    CheckException(__result);
    msg = _msg ? new nsICMSMessageD(_msg) : null;
  }

private:
  nsICMSDecoder inner;

}

