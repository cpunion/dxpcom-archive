/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILDAPMessage.idl
 */

module mozilla.xpcom.nsILDAPMessage;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsILDAPBERValue; /* forward declaration */

public import mozilla.xpcom.nsILDAPOperation; /* forward declaration */


/* starting interface:    nsILDAPMessage */
const char[] NS_ILDAPMESSAGE_IID_STR = "973ff50f-2002-4f0c-b57d-2242156139a2";

const nsIID NS_ILDAPMESSAGE_IID= 
  {0x973ff50f, 0x2002, 0x4f0c, 
    [ 0xb5, 0x7d, 0x22, 0x42, 0x15, 0x61, 0x39, 0xa2 ]};

extern(Windows)
interface nsILDAPMessage : nsISupports {
  static const char[] IID_STR = NS_ILDAPMESSAGE_IID_STR;
  static const nsIID IID = NS_ILDAPMESSAGE_IID;

  /**
     * The Distinguished Name of the entry associated with this message.
     * 
     * @exception NS_ERROR_OUT_OF_MEMORY        ran out of memory
     * @exception NS_ERROR_ILLEGAL_VALUE        null pointer passed in
     * @exception NS_ERROR_LDAP_DECODING_ERROR  problem during BER-decoding
     * @exception NS_ERROR_UNEXPECTED           bug or memory corruption
     */
  /* readonly attribute AUTF8String dn; */
  nsresult GetDn(nsACString * aDn);

  /**
     * Get all the attributes in this message.
     *
     * @exception NS_ERROR_OUT_OF_MEMORY
     * @exception NS_ERROR_ILLEGAL_VALUE        null pointer passed in
     * @exception NS_ERROR_UNEXPECTED           bug or memory corruption
     * @exception NS_ERROR_LDAP_DECODING_ERROR  problem during BER decoding
     *
     * @return  array of all attributes in the current message
     */
  /* void getAttributes (out unsigned long count, [array, size_is (count), retval] out string aAttributes); */
  nsresult GetAttributes(PRUint32 *count, char ***aAttributes);

  /**
     * Get an array of all the attribute values in this message.
     *
     * @param attr      The attribute whose values are to be returned
     * @param count     Number of values in the outbound array.
     * @param values    Array of values
     *
     * @exception NS_ERROR_UNEXPECTED           Bug or memory corruption
     * @exception NS_ERROR_LDAP_DECODING_ERROR  Attribute not found or other 
     *                                          decoding error.
     * @exception NS_ERROR_OUT_OF_MEMORY
     */
  /* void getValues (in string attr, out unsigned long count, [array, size_is (count), retval] out wstring values); */
  nsresult GetValues(char *attr, PRUint32 *count, PRUnichar ***values);

  /**
     * The operation this message originated from
     * 
     * @exception NS_ERROR_NULL_POINTER         NULL pointer to getter
     */
  /* readonly attribute nsILDAPOperation operation; */
  nsresult GetOperation(nsILDAPOperation  *aOperation);

  /**
     * The result code (aka lderrno) for this message.  
     *
     * IDL definitions for these constants live in nsILDAPErrors.idl.
     *
     * @exception NS_ERROR_ILLEGAL_VALUE    null pointer passed in
     */
  /* readonly attribute long errorCode; */
  nsresult GetErrorCode(PRInt32 *aErrorCode);

  /**
     * The result type of this message.  Possible types listed below, the 
     * values chosen are taken from the draft-ietf-ldapext-ldap-c-api-04.txt
     * and are the same ones used in the ldap.h include file from the Mozilla
     * LDAP C SDK.
     *
     * @exception NS_ERROR_ILLEGAL_VALUE    null pointer passed in
     * @exception NS_ERROR_UNEXPECTED       internal error (possible memory
     *                                                      corruption)
     */
  /* readonly attribute long type; */
  nsresult GetType(PRInt32 *aType);

  /**
     * Result of a bind operation
     */
  enum { RES_BIND = 97 };

  /**
     * An entry found in an search operation.
     */
  enum { RES_SEARCH_ENTRY = 100 };

  /**
     * An LDAPv3 search reference (a referral to another server)
     */
  enum { RES_SEARCH_REFERENCE = 115 };

  /** 
     * The result of a search operation (i.e. the search is done; no more
     * entries to follow).
     */
  enum { RES_SEARCH_RESULT = 101 };

  /**
     * The result of a modify operation.
     */
  enum { RES_MODIFY = 103 };

  /** 
     * The result of an add operation
     */
  enum { RES_ADD = 105 };

  /**
     * The result of a delete operation
     */
  enum { RES_DELETE = 107 };

  /**
     * The result of an modify DN operation
     */
  enum { RES_MODDN = 109 };

  /**
     * The result of a compare operation
     */
  enum { RES_COMPARE = 111 };

  /** 
     * The result of an LDAPv3 extended operation
     */
  enum { RES_EXTENDED = 120 };

  /**
     * get an LDIF-like string representation of this message
     *
     * @return unicode encoded string representation.
     */
  /* wstring toUnicode (); */
  nsresult ToUnicode(PRUnichar **_retval);

  /**
     * Additional error information optionally sent by the server.
     */
  /* readonly attribute AUTF8String errorMessage; */
  nsresult GetErrorMessage(nsACString * aErrorMessage);

  /**
     * In LDAPv3, when the server returns any of the following errors:
     * NO_SUCH_OBJECT, ALIAS_PROBLEM, INVALID_DN_SYNTAX, ALIAS_DEREF_PROBLEM,
     * it also returns the closest existing DN to the entry requested.
     */
  /* readonly attribute AUTF8String matchedDn; */
  nsresult GetMatchedDn(nsACString * aMatchedDn);

  /**
     * Get an array of all the attribute values in this message (a wrapper
     * around the LDAP C SDK's get_values_len()).
     *
     * @param attr      The attribute whose values are to be returned
     * @param count     Number of values in the outbound array.
     * @param values    Array of nsILDAPBERValue objects
     *
     * @exception NS_ERROR_UNEXPECTED           Bug or memory corruption
     * @exception NS_ERROR_LDAP_DECODING_ERROR  Attribute not found or other 
     *                                          decoding error.
     * @exception NS_ERROR_OUT_OF_MEMORY
     */
  /* void getBinaryValues (in string attr, out unsigned long count, [array, size_is (count), retval] out nsILDAPBERValue values); */
  nsresult GetBinaryValues(char *attr, PRUint32 *count, nsILDAPBERValue **values);

}

