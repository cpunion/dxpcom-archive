/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILDAPErrors.idl
 */

module mozilla.xpcom.nsILDAPErrors;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsILDAPErrors */
const char[] NS_ILDAPERRORS_IID_STR = "f9ac10fa-1dd1-11b2-9798-8d5cbda95d74";

const nsIID NS_ILDAPERRORS_IID= 
  {0xf9ac10fa, 0x1dd1, 0x11b2, 
    [ 0x97, 0x98, 0x8d, 0x5c, 0xbd, 0xa9, 0x5d, 0x74 ]};

/**
 * Error codes used in the LDAP XPCOM SDK.
 *
 * Taken from the Mozilla C SDK's ldap.h include file, these should be
 * the same as those specified in the draft-ietf-ldapext-ldap-c-api-04.txt 
 * Internet Draft.  
 *
 * The only good documentation I'm aware of for these error codes is
 * at <http://docs.iplanet.com/docs/manuals/directory.html#SDKC>.
 * Unfortunately, this does not currently seem to be available under any
 * open source license, so I can't include that documentation here as
 * doxygen comments.
 *
 */
extern(Windows)
interface nsILDAPErrors : nsISupports {
  static const char[] IID_STR = NS_ILDAPERRORS_IID_STR;
  static const nsIID IID = NS_ILDAPERRORS_IID;

  enum { SUCCESS = 0 };

  enum { OPERATIONS_ERROR = 1 };

  enum { PROTOCOL_ERROR = 2 };

  enum { TIMELIMIT_EXCEEDED = 3 };

  enum { SIZELIMIT_EXCEEDED = 4 };

  enum { COMPARE_FALSE = 5 };

  enum { COMPARE_TRUE = 6 };

  enum { STRONG_AUTH_NOT_SUPPORTED = 7 };

  enum { STRONG_AUTH_REQUIRED = 8 };

  /**
     * UMich LDAPv2 extension
     */
  enum { PARTIAL_RESULTS = 9 };

  /**
     * new in LDAPv3
     */
  enum { REFERRAL = 10 };

  /**
     * new in LDAPv3
     */
  enum { ADMINLIMIT_EXCEEDED = 11 };

  /**
     * new in LDAPv3
     */
  enum { UNAVAILABLE_CRITICAL_EXTENSION = 12 };

  /**
     * new in LDAPv3
     */
  enum { CONFIDENTIALITY_REQUIRED = 13 };

  /**
     * new in LDAPv3
     */
  enum { SASL_BIND_IN_PROGRESS = 14 };

  enum { NO_SUCH_ATTRIBUTE = 16 };

  enum { UNDEFINED_TYPE = 17 };

  enum { INAPPROPRIATE_MATCHING = 18 };

  enum { CONSTRAINT_VIOLATION = 19 };

  enum { TYPE_OR_VALUE_EXISTS = 20 };

  enum { INVALID_SYNTAX = 21 };

  enum { NO_SUCH_OBJECT = 32 };

  enum { ALIAS_PROBLEM = 33 };

  enum { INVALID_DN_SYNTAX = 34 };

  /**
     * not used in LDAPv3
     */
  enum { IS_LEAF = 35 };

  enum { ALIAS_DEREF_PROBLEM = 36 };

  enum { INAPPROPRIATE_AUTH = 48 };

  enum { INVALID_CREDENTIALS = 49 };

  enum { INSUFFICIENT_ACCESS = 50 };

  enum { BUSY = 51 };

  enum { UNAVAILABLE = 52 };

  enum { UNWILLING_TO_PERFORM = 53 };

  enum { LOOP_DETECT = 54 };

  /**
     * server side sort extension
     */
  enum { SORT_CONTROL_MISSING = 60 };

  /**
     * VLV extension
     */
  enum { INDEX_RANGE_ERROR = 61 };

  enum { NAMING_VIOLATION = 64 };

  enum { OBJECT_CLASS_VIOLATION = 65 };

  enum { NOT_ALLOWED_ON_NONLEAF = 66 };

  enum { NOT_ALLOWED_ON_RDN = 67 };

  enum { ALREADY_EXISTS = 68 };

  enum { NO_OBJECT_CLASS_MODS = 69 };

  /**
     * reserved CLDAP
     */
  enum { RESULTS_TOO_LARGE = 70 };

  /**
     * new in LDAPv3
     */
  enum { AFFECTS_MULTIPLE_DSAS = 71 };

  enum { OTHER = 80 };

  enum { SERVER_DOWN = 81 };

  enum { LOCAL_ERROR = 82 };

  enum { ENCODING_ERROR = 83 };

  enum { DECODING_ERROR = 84 };

  enum { TIMEOUT = 85 };

  enum { AUTH_UNKNOWN = 86 };

  enum { FILTER_ERROR = 87 };

  enum { USER_CANCELLED = 88 };

  enum { PARAM_ERROR = 89 };

  enum { NO_MEMORY = 90 };

  enum { CONNECT_ERROR = 91 };

  /**
     * new in LDAPv3
     */
  enum { NOT_SUPPORTED = 92 };

  /**
     * new in LDAPv3
     */
  enum { CONTROL_NOT_FOUND = 93 };

  /**
     * new in LDAPv3
     */
  enum { NO_RESULTS_RETURNED = 94 };

  /**
     * new in LDAPv3
     */
  enum { MORE_RESULTS_TO_RETURN = 95 };

  /**
     * new in LDAPv3
     */
  enum { CLIENT_LOOP = 96 };

  /**
     * new in LDAPv3
     */
  enum { REFERRAL_LIMIT_EXCEEDED = 97 };

}

