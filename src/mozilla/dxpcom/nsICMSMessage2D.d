/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICMSMessage2.idl
 */

module mozilla.dxpcom.nsICMSMessage2D;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICMSMessage2;


public import mozilla.dxpcom.nsICMSMessage2D;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsICMSMessage2;

import mozilla.dxpcom.nsICMSMessage2D;


/* starting wrapper class:    nsICMSMessage2 */
class nsICMSMessage2D : public nsISupportsD {

  static const nsIID IID = NS_ICMSMESSAGE2_IID;


  alias nsICMSMessage2 InnerType;

  this(nsICMSMessage2 intr){
    super(intr);
    this.inner = intr;
  }

  nsICMSMessage2 opCast() {
    return inner;
  }

  void opAssign(nsICMSMessage2 value) {
    inner = value;
  }

  /**
    * Async version of nsICMSMessage::VerifySignature.
    * Code will be executed on a background thread and
    * availability of results will be notified using a 
    * call to nsISMimeVerificationListener.
   */
  /* void asyncVerifySignature (in nsISMimeVerificationListener listener); */
  void AsyncVerifySignature(nsISMimeVerificationListenerD listener){
    nsresult __result = inner.AsyncVerifySignature(listener ? cast(nsISMimeVerificationListener)listener : null);
    CheckException(__result);
  }

  /**
    * Async version of nsICMSMessage::VerifyDetachedSignature.
    * Code will be executed on a background thread and
    * availability of results will be notified using a 
    * call to nsISMimeVerificationListener.
    *
    * We are using "native unsigned char" ptr, because the function 
    * signatures of this one and nsICMSMessage::verifyDetachedSignature 
    * should be the identical. Cleaning up nsICMSMessages needs to be
    * postponed, because this async version is needed on MOZILLA_1_8_BRANCH.
    *
    * Once both interfaces get cleaned up, the function signature should
    * look like:
    *     [array, length_is(aDigestDataLen)]
    *     in octet aDigestData,
    *     in unsigned long aDigestDataLen);
   */
  /* void asyncVerifyDetachedSignature (in nsISMimeVerificationListener listener, in UnsignedCharPtr aDigestData, in unsigned long aDigestDataLen); */
  void AsyncVerifyDetachedSignature(nsISMimeVerificationListenerD listener, char * aDigestData, PRUint32 aDigestDataLen){
    nsresult __result = inner.AsyncVerifyDetachedSignature(listener ? cast(nsISMimeVerificationListener)listener : null, aDigestData, aDigestDataLen);
    CheckException(__result);
  }

private:
  nsICMSMessage2 inner;

}


/* starting wrapper class:    nsISMimeVerificationListener */
class nsISMimeVerificationListenerD : public nsISupportsD {

  static const nsIID IID = NS_ISMIMEVERIFICATIONLISTENER_IID;


  alias nsISMimeVerificationListener InnerType;

  this(nsISMimeVerificationListener intr){
    super(intr);
    this.inner = intr;
  }

  nsISMimeVerificationListener opCast() {
    return inner;
  }

  void opAssign(nsISMimeVerificationListener value) {
    inner = value;
  }

  /**
   *  Notify that results are ready, that have been requested
   *  using nsICMSMessage2::asyncVerify[Detached]Signature()
   *
   *  verificationResultCode matches synchronous result code from
   *  nsICMSMessage::verify[Detached]Signature
   */
  /* void notify (in nsICMSMessage2 verifiedMessage, in nsresult verificationResultCode); */
  void Notify(nsICMSMessage2D verifiedMessage, nsresult verificationResultCode){
    nsresult __result = inner.Notify(verifiedMessage ? cast(nsICMSMessage2)verifiedMessage : null, verificationResultCode);
    CheckException(__result);
  }

private:
  nsISMimeVerificationListener inner;

}

