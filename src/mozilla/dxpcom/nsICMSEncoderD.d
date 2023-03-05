/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICMSEncoder.idl
 */

module mozilla.dxpcom.nsICMSEncoderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICMSEncoder;


public import mozilla.dxpcom.nsICMSEncoderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsICMSMessage;

public import mozilla.dxpcom.nsICMSMessageD;


/* starting wrapper class:    nsICMSEncoder */
/**
 * nsICMSEncoder
 *  Interface to Encode an CMS message
 */
class nsICMSEncoderD : public nsISupportsD {

  static const nsIID IID = NS_ICMSENCODER_IID;


  alias nsICMSEncoder InnerType;

  this(nsICMSEncoder intr){
    super(intr);
    this.inner = intr;
  }

  nsICMSEncoder opCast() {
    return inner;
  }

  void opAssign(nsICMSEncoder value) {
    inner = value;
  }

  /* void start (in nsICMSMessage aMsg, in NSSCMSContentCallback cb, in voidPtr arg); */
  void Start(nsICMSMessageD aMsg, NSSCMSContentCallback cb, void * arg){
    nsresult __result = inner.Start(aMsg ? cast(nsICMSMessage)aMsg : null, cb, arg);
    CheckException(__result);
  }

  /* void update (in string aBuf, in long aLen); */
  void Update(char*aBuf, PRInt32 aLen){
    nsresult __result = inner.Update(aBuf, aLen);
    CheckException(__result);
  }

  /* void finish (); */
  void Finish(){
    nsresult __result = inner.Finish();
    CheckException(__result);
  }

  /* void encode (in nsICMSMessage aMsg); */
  void Encode(nsICMSMessageD aMsg){
    nsresult __result = inner.Encode(aMsg ? cast(nsICMSMessage)aMsg : null);
    CheckException(__result);
  }

private:
  nsICMSEncoder inner;

}

