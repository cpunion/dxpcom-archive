/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICMSSecureMessage.idl
 */

module mozilla.dxpcom.nsICMSSecureMessageD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICMSSecureMessage;


public import mozilla.dxpcom.nsICMSSecureMessageD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIX509Cert;

public import mozilla.dxpcom.nsIX509CertD;


/* starting wrapper class:    nsICMSSecureMessage */
/**
 * nsICMSManager (service)
 *  Interface to access users certificate store
 */
class nsICMSSecureMessageD : public nsISupportsD {

  static const nsIID IID = NS_ICMSSECUREMESSAGE_IID;


  alias nsICMSSecureMessage InnerType;

  this(nsICMSSecureMessage intr){
    super(intr);
    this.inner = intr;
  }

  nsICMSSecureMessage opCast() {
    return inner;
  }

  void opAssign(nsICMSSecureMessage value) {
    inner = value;
  }

  /**
   * getCertByPrefID - a BASE64 string representing a user's
   *   certificate (or NULL if there isn't one)
   */
  /* string getCertByPrefID (in string certID); */
  char* GetCertByPrefID(char*certID){
    char* _retval;
    nsresult __result = inner.GetCertByPrefID(certID, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * decodeCert - decode a BASE64 string into an X509Certificate object
   */
  /* nsIX509Cert decodeCert (in string value); */
  nsIX509CertD  DecodeCert(char*value){
    nsIX509Cert _retval;
    nsresult __result = inner.DecodeCert(value, &_retval);
    CheckException(__result);
    return new nsIX509CertD(_retval);
  }

  /**
   * sendMessage - send a text message to the recipient indicated
   *   by the base64-encoded cert.
   */
  /* string sendMessage (in string msg, in string cert); */
  char* SendMessage(char*msg, char*cert){
    char* _retval;
    nsresult __result = inner.SendMessage(msg, cert, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * receiveMessage - recieve an encrypted (enveloped) message
   */
  /* string receiveMessage (in string msg); */
  char* ReceiveMessage(char*msg){
    char* _retval;
    nsresult __result = inner.ReceiveMessage(msg, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsICMSSecureMessage inner;

}

