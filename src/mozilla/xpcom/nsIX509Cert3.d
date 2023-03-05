/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIX509Cert3.idl
 */

module mozilla.xpcom.nsIX509Cert3;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIX509Cert; /* forward declaration */

public import mozilla.xpcom.nsIX509Cert3;


/* starting interface:    nsIX509Cert3 */
const char[] NS_IX509CERT3_IID_STR = "402aee39-653c-403f-8be1-6d1824223bf9";

const nsIID NS_IX509CERT3_IID= 
  {0x402aee39, 0x653c, 0x403f, 
    [ 0x8b, 0xe1, 0x6d, 0x18, 0x24, 0x22, 0x3b, 0xf9 ]};

/**
 * Extending nsIX509Cert
 * 
 * TODO: nsIX509Cert3 should be derived from nsIX509Cert2
 *       (and nsIX509Cert2 derived from nsIX509Cert)
 */
extern(Windows)
interface nsIX509Cert3 : nsISupports {
  static const char[] IID_STR = NS_IX509CERT3_IID_STR;
  static const nsIID IID = NS_IX509CERT3_IID;

  /**
   *  Async version of nsIX509Cert::getUsagesArray()
   *
   *  Will not block, will request results asynchronously,
   *  availability of results will be notified.
   */
  /* void requestUsagesArrayAsync (in nsICertVerificationListener cvl); */
  nsresult RequestUsagesArrayAsync(nsICertVerificationListener cvl);

}


/* starting interface:    nsICertVerificationResult */
const char[] NS_ICERTVERIFICATIONRESULT_IID_STR = "2fd0a785-9f2d-4327-8871-8c3e0783891d";

const nsIID NS_ICERTVERIFICATIONRESULT_IID= 
  {0x2fd0a785, 0x9f2d, 0x4327, 
    [ 0x88, 0x71, 0x8c, 0x3e, 0x07, 0x83, 0x89, 0x1d ]};

extern(Windows)
interface nsICertVerificationResult : nsISupports {
  static const char[] IID_STR = NS_ICERTVERIFICATIONRESULT_IID_STR;
  static const nsIID IID = NS_ICERTVERIFICATIONRESULT_IID;

  /**
   *  This interface reflects a container of
   *  verification results. Call will not block.
   *
   *  Obtain an array of human readable strings describing
   *  the certificate's certified usages.
   *
   *  Mirrors the results produced by 
   *  nsIX509Cert::getUsagesArray()
   *
   *  As of today, this function is a one-shot object,
   *  only the first call will succeed.
   *  This allows an optimization in the implementation, 
   *  ownership of result data will be transfered to caller.
   *
   *  @param cert The certificate that was verified.
   *  @param verified The certificate verification result, 
   *         see constants in nsIX509Cert.
   *  @param count The number of human readable usages returned.
   *  @param usages The array of human readable usages.
   */
  /* void getUsagesArrayResult (out PRUint32 verified, out PRUint32 count, [array, size_is (count)] out wstring usages); */
  nsresult GetUsagesArrayResult(PRUint32 *verified, PRUint32 *count, PRUnichar ***usages);

}


/* starting interface:    nsICertVerificationListener */
const char[] NS_ICERTVERIFICATIONLISTENER_IID_STR = "6684bce9-50db-48e1-81b7-98102bf81357";

const nsIID NS_ICERTVERIFICATIONLISTENER_IID= 
  {0x6684bce9, 0x50db, 0x48e1, 
    [ 0x81, 0xb7, 0x98, 0x10, 0x2b, 0xf8, 0x13, 0x57 ]};

extern(Windows)
interface nsICertVerificationListener : nsISupports {
  static const char[] IID_STR = NS_ICERTVERIFICATIONLISTENER_IID_STR;
  static const nsIID IID = NS_ICERTVERIFICATIONLISTENER_IID;

  /**
   *  Notify that results are ready, that have been requested
   *  using nsIX509Cert3::requestUsagesArrayAsync()
   */
  /* void notify (in nsIX509Cert3 verifiedCert, in nsICertVerificationResult result); */
  nsresult Notify(nsIX509Cert3 verifiedCert, nsICertVerificationResult result);

}

