/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICMSMessage2.idl
 */

module mozilla.xpcom.nsICMSMessage2;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsICMSMessage2;


/* starting interface:    nsICMSMessage2 */
const char[] NS_ICMSMESSAGE2_IID_STR = "a99a3203-39e3-45e1-909c-175b0e471c2b";

const nsIID NS_ICMSMESSAGE2_IID= 
  {0xa99a3203, 0x39e3, 0x45e1, 
    [ 0x90, 0x9c, 0x17, 0x5b, 0x0e, 0x47, 0x1c, 0x2b ]};

extern(Windows)
interface nsICMSMessage2 : nsISupports {
  static const char[] IID_STR = NS_ICMSMESSAGE2_IID_STR;
  static const nsIID IID = NS_ICMSMESSAGE2_IID;

  /**
    * Async version of nsICMSMessage::VerifySignature.
    * Code will be executed on a background thread and
    * availability of results will be notified using a 
    * call to nsISMimeVerificationListener.
   */
  /* void asyncVerifySignature (in nsISMimeVerificationListener listener); */
  nsresult AsyncVerifySignature(nsISMimeVerificationListener listener);

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
  nsresult AsyncVerifyDetachedSignature(nsISMimeVerificationListener listener, char * aDigestData, PRUint32 aDigestDataLen);

}


/* starting interface:    nsISMimeVerificationListener */
const char[] NS_ISMIMEVERIFICATIONLISTENER_IID_STR = "56310af6-dffc-48b4-abca-85eae4059064";

const nsIID NS_ISMIMEVERIFICATIONLISTENER_IID= 
  {0x56310af6, 0xdffc, 0x48b4, 
    [ 0xab, 0xca, 0x85, 0xea, 0xe4, 0x05, 0x90, 0x64 ]};

extern(Windows)
interface nsISMimeVerificationListener : nsISupports {
  static const char[] IID_STR = NS_ISMIMEVERIFICATIONLISTENER_IID_STR;
  static const nsIID IID = NS_ISMIMEVERIFICATIONLISTENER_IID;

  /**
   *  Notify that results are ready, that have been requested
   *  using nsICMSMessage2::asyncVerify[Detached]Signature()
   *
   *  verificationResultCode matches synchronous result code from
   *  nsICMSMessage::verify[Detached]Signature
   */
  /* void notify (in nsICMSMessage2 verifiedMessage, in nsresult verificationResultCode); */
  nsresult Notify(nsICMSMessage2 verifiedMessage, nsresult verificationResultCode);

}

