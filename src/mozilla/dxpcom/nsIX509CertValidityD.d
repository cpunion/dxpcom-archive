/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIX509CertValidity.idl
 */

module mozilla.dxpcom.nsIX509CertValidityD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIX509CertValidity;


public import mozilla.dxpcom.nsIX509CertValidityD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIX509CertValidity */
/**
 * Information on the validity period of a X.509 certificate.
 *
 * @status FROZEN
 */
class nsIX509CertValidityD : public nsISupportsD {

  static const nsIID IID = NS_IX509CERTVALIDITY_IID;


  alias nsIX509CertValidity InnerType;

  this(nsIX509CertValidity intr){
    super(intr);
    this.inner = intr;
  }

  nsIX509CertValidity opCast() {
    return inner;
  }

  void opAssign(nsIX509CertValidity value) {
    inner = value;
  }

  /**
   *  The earliest point in time where
   *  a certificate is valid.
   */
  /* readonly attribute PRTime notBefore; */
  PRTime NotBefore(){
    PRTime value;
    nsresult __result = inner.GetNotBefore(&value);
    CheckException(__result);
    return value;
  }

  /**
   *  "notBefore" attribute formatted as a time string
   *  according to the environment locale,
   *  according to the environment time zone.
   */
  /* readonly attribute AString notBeforeLocalTime; */
  wchar[] NotBeforeLocalTime(){
    scope auto value = new AString();
    nsresult __result = inner.GetNotBeforeLocalTime(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   *  The day portion of "notBefore" 
   *  formatted as a time string
   *  according to the environment locale,
   *  according to the environment time zone.
   */
  /* readonly attribute AString notBeforeLocalDay; */
  wchar[] NotBeforeLocalDay(){
    scope auto value = new AString();
    nsresult __result = inner.GetNotBeforeLocalDay(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   *  "notBefore" attribute formatted as a string
   *  according to the environment locale,
   *  displayed as GMT / UTC.
   */
  /* readonly attribute AString notBeforeGMT; */
  wchar[] NotBeforeGMT(){
    scope auto value = new AString();
    nsresult __result = inner.GetNotBeforeGMT(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   *  The latest point in time where
   *  a certificate is valid.
   */
  /* readonly attribute PRTime notAfter; */
  PRTime NotAfter(){
    PRTime value;
    nsresult __result = inner.GetNotAfter(&value);
    CheckException(__result);
    return value;
  }

  /**
   *  "notAfter" attribute formatted as a time string
   *  according to the environment locale,
   *  according to the environment time zone.
   */
  /* readonly attribute AString notAfterLocalTime; */
  wchar[] NotAfterLocalTime(){
    scope auto value = new AString();
    nsresult __result = inner.GetNotAfterLocalTime(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   *  The day portion of "notAfter" 
   *  formatted as a time string
   *  according to the environment locale,
   *  according to the environment time zone.
   */
  /* readonly attribute AString notAfterLocalDay; */
  wchar[] NotAfterLocalDay(){
    scope auto value = new AString();
    nsresult __result = inner.GetNotAfterLocalDay(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   *  "notAfter" attribute formatted as a time string
   *  according to the environment locale,
   *  displayed as GMT / UTC.
   */
  /* readonly attribute AString notAfterGMT; */
  wchar[] NotAfterGMT(){
    scope auto value = new AString();
    nsresult __result = inner.GetNotAfterGMT(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

private:
  nsIX509CertValidity inner;

}

