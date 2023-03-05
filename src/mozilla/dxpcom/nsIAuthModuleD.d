/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAuthModule.idl
 */

module mozilla.dxpcom.nsIAuthModuleD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAuthModule;


public import mozilla.dxpcom.nsIAuthModuleD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIAuthModule */
class nsIAuthModuleD : public nsISupportsD {

  static const nsIID IID = NS_IAUTHMODULE_IID;


  alias nsIAuthModule InnerType;

  this(nsIAuthModule intr){
    super(intr);
    this.inner = intr;
  }

  nsIAuthModule opCast() {
    return inner;
  }

  void opAssign(nsIAuthModule value) {
    inner = value;
  }

  /**
     * Default behavior.
     */
  enum { REQ_DEFAULT = 0U }

  /**
     * Client and server will be authenticated.
     */
  enum { REQ_MUTUAL_AUTH = 1U }

  /**
     * The server is allowed to impersonate the client.  The REQ_MUTUAL_AUTH
     * flag may also need to be specified in order for this flag to take
     * effect.
     */
  enum { REQ_DELEGATE = 2U }

  /** Other flags may be defined in the future */
/**
     * Called to initialize an auth module.  The other methods cannot be called
     * unless this method succeeds.
     *
     * @param aServiceName
     *        the service name, which may be null if not applicable (e.g., for
     *        NTLM, this parameter should be null).
     * @param aServiceFlags
     *        a bitwise-or of the REQ_ flags defined above (pass REQ_DEFAULT
     *        for default behavior).
     * @param aDomain
     *        the authentication domain, which may be null if not applicable.
     * @param aUsername
     *        the user's login name
     * @param aPassword
     *        the user's password
     */
  /* void init (in string aServiceName, in unsigned long aServiceFlags, in wstring aDomain, in wstring aUsername, in wstring aPassword); */
  void Init(char*aServiceName, PRUint32 aServiceFlags, PRUnichar*aDomain, PRUnichar*aUsername, PRUnichar*aPassword){
    nsresult __result = inner.Init(aServiceName, aServiceFlags, aDomain, aUsername, aPassword);
    CheckException(__result);
  }

  /**
     * Called to get the next token in a sequence of authentication steps.
     *
     * @param aInToken
     *        A buffer containing the input token (e.g., a challenge from a
     *        server).  This may be null.
     * @param aInTokenLength
     *        The length of the input token.
     * @param aOutToken
     *        If getNextToken succeeds, then aOutToken will point to a buffer
     *        to be sent in response to the server challenge.  The length of
     *        this buffer is given by aOutTokenLength.  The buffer at aOutToken
     *        must be recycled with a call to nsMemory::Free.
     * @param aOutTokenLength
     *        If getNextToken succeeds, then aOutTokenLength contains the
     *        length of the buffer (number of bytes) pointed to by aOutToken.
     */
  /* void getNextToken ([const] in voidPtr aInToken, in unsigned long aInTokenLength, out voidPtr aOutToken, out unsigned long aOutTokenLength); */
  void GetNextToken(void * aInToken, PRUint32 aInTokenLength, out void * aOutToken, out PRUint32 aOutTokenLength){
    nsresult __result = inner.GetNextToken(aInToken, aInTokenLength, &aOutToken, &aOutTokenLength);
    CheckException(__result);
  }

  /** 
     * Once a security context has been established through calls to GetNextToken()
     * it may be used to protect data exchanged between client and server. Calls
     * to Wrap() are used to protect items of data to be sent to the server.
     * 
     * @param aInToken
     *        A buffer containing the data to be sent to the server
     * @param aInTokenLength
     *        The length of the input token
     * @param confidential
     *        If set to true, Wrap() will encrypt the data, otherwise data will
     *        just be integrity protected (checksummed)
     * @param aOutToken
     *        A buffer containing the resulting data to be sent to the server
     * @param aOutTokenLength
     *        The length of the output token buffer
     *
     * Wrap() may return NS_ERROR_NOT_IMPLEMENTED, if the underlying authentication
     * mechanism does not support security layers.
     */
  /* void wrap ([const] in voidPtr aInToken, in unsigned long aInTokenLength, in boolean confidential, out voidPtr aOutToken, out unsigned long aOutTokenLength); */
  void Wrap(void * aInToken, PRUint32 aInTokenLength, PRBool confidential, out void * aOutToken, out PRUint32 aOutTokenLength){
    nsresult __result = inner.Wrap(aInToken, aInTokenLength, confidential, &aOutToken, &aOutTokenLength);
    CheckException(__result);
  }

  /** 
     * Unwrap() is used to unpack, decrypt, and verify the checksums on data
     * returned by a server when security layers are in use.
     * 
     * @param aInToken
     *        A buffer containing the data received from the server
     * @param aInTokenLength
     *        The length of the input token
     * @param aOutToken
     *        A buffer containing the plaintext data from the server
     * @param aOutTokenLength
     *        The length of the output token buffer
     *
     * Unwrap() may return NS_ERROR_NOT_IMPLEMENTED, if the underlying  
     * authentication mechanism does not support security layers.
     */
  /* void unwrap ([const] in voidPtr aInToken, in unsigned long aInTokenLength, out voidPtr aOutToken, out unsigned long aOutTokenLength); */
  void Unwrap(void * aInToken, PRUint32 aInTokenLength, out void * aOutToken, out PRUint32 aOutTokenLength){
    nsresult __result = inner.Unwrap(aInToken, aInTokenLength, &aOutToken, &aOutTokenLength);
    CheckException(__result);
  }

private:
  nsIAuthModule inner;

}

