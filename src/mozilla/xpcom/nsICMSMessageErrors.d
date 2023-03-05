/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICMSMessageErrors.idl
 */

module mozilla.xpcom.nsICMSMessageErrors;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsICMSMessageErrors */
const char[] NS_ICMSMESSAGEERRORS_IID_STR = "f2aec680-60a0-49f0-afe5-6cf1d3f15e0d";

const nsIID NS_ICMSMESSAGEERRORS_IID= 
  {0xf2aec680, 0x60a0, 0x49f0, 
    [ 0xaf, 0xe5, 0x6c, 0xf1, 0xd3, 0xf1, 0x5e, 0x0d ]};

/**
 * nsICMSMessageErrors
 *  Scriptable error constants for nsICMSMessage
 */
extern(Windows)
interface nsICMSMessageErrors : nsISupports {
  static const char[] IID_STR = NS_ICMSMESSAGEERRORS_IID_STR;
  static const nsIID IID = NS_ICMSMESSAGEERRORS_IID;

  enum { SUCCESS = 0 };

  enum { GENERAL_ERROR = 1 };

  enum { VERIFY_NOT_SIGNED = 1024 };

  enum { VERIFY_NO_CONTENT_INFO = 1025 };

  enum { VERIFY_BAD_DIGEST = 1026 };

  enum { VERIFY_NOCERT = 1028 };

  enum { VERIFY_UNTRUSTED = 1029 };

  enum { VERIFY_ERROR_UNVERIFIED = 1031 };

  enum { VERIFY_ERROR_PROCESSING = 1032 };

  enum { VERIFY_BAD_SIGNATURE = 1033 };

  enum { VERIFY_DIGEST_MISMATCH = 1034 };

  enum { VERIFY_UNKNOWN_ALGO = 1035 };

  enum { VERIFY_UNSUPPORTED_ALGO = 1036 };

  enum { VERIFY_MALFORMED_SIGNATURE = 1037 };

  enum { VERIFY_HEADER_MISMATCH = 1038 };

  enum { VERIFY_NOT_YET_ATTEMPTED = 1039 };

  enum { VERIFY_CERT_WITHOUT_ADDRESS = 1040 };

  enum { ENCRYPT_NO_BULK_ALG = 1056 };

}

