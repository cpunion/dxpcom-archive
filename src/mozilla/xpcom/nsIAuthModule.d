/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAuthModule.idl
 */

module mozilla.xpcom.nsIAuthModule;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIAuthModule */
const char[] NS_IAUTHMODULE_IID_STR = "6e35dbc0-49ef-4e2c-b1ea-b72ec64450a2";

const nsIID NS_IAUTHMODULE_IID= 
  {0x6e35dbc0, 0x49ef, 0x4e2c, 
    [ 0xb1, 0xea, 0xb7, 0x2e, 0xc6, 0x44, 0x50, 0xa2 ]};

extern(Windows)
interface nsIAuthModule : nsISupports {
  static const char[] IID_STR = NS_IAUTHMODULE_IID_STR;
  static const nsIID IID = NS_IAUTHMODULE_IID;

  /**
     * Default behavior.
     */
  enum { REQ_DEFAULT = 0U };

  /**
     * Client and server will be authenticated.
     */
  enum { REQ_MUTUAL_AUTH = 1U };

  /**
     * The server is allowed to impersonate the client.  The REQ_MUTUAL_AUTH
     * flag may also need to be specified in order for this flag to take
     * effect.
     */
  enum { REQ_DELEGATE = 2U };

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
  nsresult Init(char *aServiceName, PRUint32 aServiceFlags, PRUnichar *aDomain, PRUnichar *aUsername, PRUnichar *aPassword);

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
  nsresult GetNextToken(void * aInToken, PRUint32 aInTokenLength, void * *aOutToken, PRUint32 *aOutTokenLength);

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
  nsresult Wrap(void * aInToken, PRUint32 aInTokenLength, PRBool confidential, void * *aOutToken, PRUint32 *aOutTokenLength);

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
  nsresult Unwrap(void * aInToken, PRUint32 aInTokenLength, void * *aOutToken, PRUint32 *aOutTokenLength);

}

