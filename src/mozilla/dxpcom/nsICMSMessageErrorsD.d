/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICMSMessageErrors.idl
 */

module mozilla.dxpcom.nsICMSMessageErrorsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICMSMessageErrors;


public import mozilla.dxpcom.nsICMSMessageErrorsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsICMSMessageErrors */
/**
 * nsICMSMessageErrors
 *  Scriptable error constants for nsICMSMessage
 */
class nsICMSMessageErrorsD : public nsISupportsD {

  static const nsIID IID = NS_ICMSMESSAGEERRORS_IID;


  alias nsICMSMessageErrors InnerType;

  this(nsICMSMessageErrors intr){
    super(intr);
    this.inner = intr;
  }

  nsICMSMessageErrors opCast() {
    return inner;
  }

  void opAssign(nsICMSMessageErrors value) {
    inner = value;
  }

  enum { SUCCESS = 0 }

  enum { GENERAL_ERROR = 1 }

  enum { VERIFY_NOT_SIGNED = 1024 }

  enum { VERIFY_NO_CONTENT_INFO = 1025 }

  enum { VERIFY_BAD_DIGEST = 1026 }

  enum { VERIFY_NOCERT = 1028 }

  enum { VERIFY_UNTRUSTED = 1029 }

  enum { VERIFY_ERROR_UNVERIFIED = 1031 }

  enum { VERIFY_ERROR_PROCESSING = 1032 }

  enum { VERIFY_BAD_SIGNATURE = 1033 }

  enum { VERIFY_DIGEST_MISMATCH = 1034 }

  enum { VERIFY_UNKNOWN_ALGO = 1035 }

  enum { VERIFY_UNSUPPORTED_ALGO = 1036 }

  enum { VERIFY_MALFORMED_SIGNATURE = 1037 }

  enum { VERIFY_HEADER_MISMATCH = 1038 }

  enum { VERIFY_NOT_YET_ATTEMPTED = 1039 }

  enum { VERIFY_CERT_WITHOUT_ADDRESS = 1040 }

  enum { ENCRYPT_NO_BULK_ALG = 1056 }

private:
  nsICMSMessageErrors inner;

}

