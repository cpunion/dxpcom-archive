/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILDAPMessage.idl
 */

module mozilla.dxpcom.nsILDAPMessageD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsILDAPMessage;


public import mozilla.dxpcom.nsILDAPMessageD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsILDAPBERValue;

public import mozilla.dxpcom.nsILDAPBERValueD;

public import mozilla.xpcom.nsILDAPOperation;

public import mozilla.dxpcom.nsILDAPOperationD;


/* starting wrapper class:    nsILDAPMessage */
class nsILDAPMessageD : public nsISupportsD {

  static const nsIID IID = NS_ILDAPMESSAGE_IID;


  alias nsILDAPMessage InnerType;

  this(nsILDAPMessage intr){
    super(intr);
    this.inner = intr;
  }

  nsILDAPMessage opCast() {
    return inner;
  }

  void opAssign(nsILDAPMessage value) {
    inner = value;
  }

  /**
     * The Distinguished Name of the entry associated with this message.
     * 
     * @exception NS_ERROR_OUT_OF_MEMORY        ran out of memory
     * @exception NS_ERROR_ILLEGAL_VALUE        null pointer passed in
     * @exception NS_ERROR_LDAP_DECODING_ERROR  problem during BER-decoding
     * @exception NS_ERROR_UNEXPECTED           bug or memory corruption
     */
  /* readonly attribute AUTF8String dn; */
  char[] Dn(){
    scope auto value = new ACString();
    nsresult __result = inner.GetDn(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

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
  void GetAttributes(out PRUint32 count, out char**aAttributes){
    nsresult __result = inner.GetAttributes(&count, &aAttributes);
    CheckException(__result);
  }

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
  void GetValues(char*attr, out PRUint32 count, out PRUnichar**values){
    nsresult __result = inner.GetValues(attr, &count, &values);
    CheckException(__result);
  }

  /**
     * The operation this message originated from
     * 
     * @exception NS_ERROR_NULL_POINTER         NULL pointer to getter
     */
  /* readonly attribute nsILDAPOperation operation; */
  nsILDAPOperationD  Operation(){
    nsILDAPOperation value;
    nsresult __result = inner.GetOperation(&value);
    CheckException(__result);
    return new nsILDAPOperationD(value);
  }

  /**
     * The result code (aka lderrno) for this message.  
     *
     * IDL definitions for these constants live in nsILDAPErrors.idl.
     *
     * @exception NS_ERROR_ILLEGAL_VALUE    null pointer passed in
     */
  /* readonly attribute long errorCode; */
  PRInt32 ErrorCode(){
    PRInt32 value;
    nsresult __result = inner.GetErrorCode(&value);
    CheckException(__result);
    return value;
  }

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
  PRInt32 Type(){
    PRInt32 value;
    nsresult __result = inner.GetType(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Result of a bind operation
     */
  enum { RES_BIND = 97 }

  /**
     * An entry found in an search operation.
     */
  enum { RES_SEARCH_ENTRY = 100 }

  /**
     * An LDAPv3 search reference (a referral to another server)
     */
  enum { RES_SEARCH_REFERENCE = 115 }

  /** 
     * The result of a search operation (i.e. the search is done; no more
     * entries to follow).
     */
  enum { RES_SEARCH_RESULT = 101 }

  /**
     * The result of a modify operation.
     */
  enum { RES_MODIFY = 103 }

  /** 
     * The result of an add operation
     */
  enum { RES_ADD = 105 }

  /**
     * The result of a delete operation
     */
  enum { RES_DELETE = 107 }

  /**
     * The result of an modify DN operation
     */
  enum { RES_MODDN = 109 }

  /**
     * The result of a compare operation
     */
  enum { RES_COMPARE = 111 }

  /** 
     * The result of an LDAPv3 extended operation
     */
  enum { RES_EXTENDED = 120 }

  /**
     * get an LDIF-like string representation of this message
     *
     * @return unicode encoded string representation.
     */
  /* wstring toUnicode (); */
  PRUnichar* ToUnicode(){
    PRUnichar* _retval;
    nsresult __result = inner.ToUnicode(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Additional error information optionally sent by the server.
     */
  /* readonly attribute AUTF8String errorMessage; */
  char[] ErrorMessage(){
    scope auto value = new ACString();
    nsresult __result = inner.GetErrorMessage(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
     * In LDAPv3, when the server returns any of the following errors:
     * NO_SUCH_OBJECT, ALIAS_PROBLEM, INVALID_DN_SYNTAX, ALIAS_DEREF_PROBLEM,
     * it also returns the closest existing DN to the entry requested.
     */
  /* readonly attribute AUTF8String matchedDn; */
  char[] MatchedDn(){
    scope auto value = new ACString();
    nsresult __result = inner.GetMatchedDn(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

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
  void GetBinaryValues(char*attr, out PRUint32 count, out nsILDAPBERValueD *values){
    nsILDAPBERValue _values;
    nsresult __result = inner.GetBinaryValues(attr, &count, &_values);
    CheckException(__result);
    values = _values ? new nsILDAPBERValueD(_values) : null;
  }

private:
  nsILDAPMessage inner;

}

