/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIX509Cert3.idl
 */

module mozilla.dxpcom.nsIX509Cert3D;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIX509Cert3;


public import mozilla.dxpcom.nsIX509Cert3D;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIX509Cert;

public import mozilla.dxpcom.nsIX509CertD;

public import mozilla.xpcom.nsIX509Cert3;

import mozilla.dxpcom.nsIX509Cert3D;


/* starting wrapper class:    nsIX509Cert3 */
/**
 * Extending nsIX509Cert
 * 
 * TODO: nsIX509Cert3 should be derived from nsIX509Cert2
 *       (and nsIX509Cert2 derived from nsIX509Cert)
 */
class nsIX509Cert3D : public nsISupportsD {

  static const nsIID IID = NS_IX509CERT3_IID;


  alias nsIX509Cert3 InnerType;

  this(nsIX509Cert3 intr){
    super(intr);
    this.inner = intr;
  }

  nsIX509Cert3 opCast() {
    return inner;
  }

  void opAssign(nsIX509Cert3 value) {
    inner = value;
  }

  /**
   *  Async version of nsIX509Cert::getUsagesArray()
   *
   *  Will not block, will request results asynchronously,
   *  availability of results will be notified.
   */
  /* void requestUsagesArrayAsync (in nsICertVerificationListener cvl); */
  void RequestUsagesArrayAsync(nsICertVerificationListenerD cvl){
    nsresult __result = inner.RequestUsagesArrayAsync(cvl ? cast(nsICertVerificationListener)cvl : null);
    CheckException(__result);
  }

private:
  nsIX509Cert3 inner;

}


/* starting wrapper class:    nsICertVerificationResult */
class nsICertVerificationResultD : public nsISupportsD {

  static const nsIID IID = NS_ICERTVERIFICATIONRESULT_IID;


  alias nsICertVerificationResult InnerType;

  this(nsICertVerificationResult intr){
    super(intr);
    this.inner = intr;
  }

  nsICertVerificationResult opCast() {
    return inner;
  }

  void opAssign(nsICertVerificationResult value) {
    inner = value;
  }

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
  void GetUsagesArrayResult(out PRUint32 verified, out PRUint32 count, out PRUnichar**usages){
    nsresult __result = inner.GetUsagesArrayResult(&verified, &count, &usages);
    CheckException(__result);
  }

private:
  nsICertVerificationResult inner;

}


/* starting wrapper class:    nsICertVerificationListener */
class nsICertVerificationListenerD : public nsISupportsD {

  static const nsIID IID = NS_ICERTVERIFICATIONLISTENER_IID;


  alias nsICertVerificationListener InnerType;

  this(nsICertVerificationListener intr){
    super(intr);
    this.inner = intr;
  }

  nsICertVerificationListener opCast() {
    return inner;
  }

  void opAssign(nsICertVerificationListener value) {
    inner = value;
  }

  /**
   *  Notify that results are ready, that have been requested
   *  using nsIX509Cert3::requestUsagesArrayAsync()
   */
  /* void notify (in nsIX509Cert3 verifiedCert, in nsICertVerificationResult result); */
  void Notify(nsIX509Cert3D verifiedCert, nsICertVerificationResultD result){
    nsresult __result = inner.Notify(verifiedCert ? cast(nsIX509Cert3)verifiedCert : null, result ? cast(nsICertVerificationResult)result : null);
    CheckException(__result);
  }

private:
  nsICertVerificationListener inner;

}

