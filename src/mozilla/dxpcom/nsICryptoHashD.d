/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICryptoHash.idl
 */

module mozilla.dxpcom.nsICryptoHashD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICryptoHash;


public import mozilla.dxpcom.nsICryptoHashD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;


/* starting wrapper class:    nsICryptoHash */
/**
 * nsICryptoHash
 * This interface provides crytographic hashing algorithms.
 */
class nsICryptoHashD : public nsISupportsD {

  static const nsIID IID = NS_ICRYPTOHASH_IID;


  alias nsICryptoHash InnerType;

  this(nsICryptoHash intr){
    super(intr);
    this.inner = intr;
  }

  nsICryptoHash opCast() {
    return inner;
  }

  void opAssign(nsICryptoHash value) {
    inner = value;
  }

  /**
     * Hashing Algorithms.  These values are to be used by the
     * |init| method to indicate which hashing function to
     * use.  These values map directly onto the values defined
     * in mozilla/security/nss/lib/cryptohi/hasht.h.
     */
  enum { MD2 = 1 }

  enum { MD5 = 2 }

  enum { SHA1 = 3 }

  enum { SHA256 = 4 }

  enum { SHA384 = 5 }

  enum { SHA512 = 6 }

  /**
     * Initialize the hashing object. This method may be
     * called multiple times with different algorithm types.
     *
     * @param aAlgorithm the algorithm type to be used.
     *        This value must be one of the above valid
     *        algorithm types.
     *
     * @throws NS_ERROR_INVALID_ARG if an unsupported algorithm
     *         type is passed.
     *
     * NOTE: This method or initWithString must be called
     *       before any other method on this interface is called.
     */
  /* void init (in unsigned long aAlgorithm); */
  void Init(PRUint32 aAlgorithm){
    nsresult __result = inner.Init(aAlgorithm);
    CheckException(__result);
  }

  /**
     * Initialize the hashing object. This method may be
     * called multiple times with different algorithm types.
     *
     * @param aAlgorithm the algorithm type to be used.
     *
     * @throws NS_ERROR_INVALID_ARG if an unsupported algorithm
     *         type is passed.
     *
     * NOTE: This method or init must be called before any
     *       other method on this interface is called.
     */
  /* void initWithString (in ACString aAlgorithm); */
  void InitWithString(char[] aAlgorithm){
    scope auto _aAlgorithm = new ACString(aAlgorithm);
    nsresult __result = inner.InitWithString(cast(nsACString*)_aAlgorithm);
    CheckException(__result);
  }

  /**
     * @param aData a buffer to calculate the hash over
     *
     * @param aLen the length of the buffer |aData|
     *
     * @throws NS_ERROR_NOT_INITIALIZED if |init| has not been 
     *         called.
     */
  /* void update ([array, size_is (aLen), const] in octet aData, in unsigned long aLen); */
  void Update(PRUint8 *aData, PRUint32 aLen){
    nsresult __result = inner.Update(aData, aLen);
    CheckException(__result);
  }

  /**
     * Calculates and updates a new hash based on a given data stream.
     *
     * @param aStream an input stream to read from.
     *
     * @param aLen how much to read from the given |aStream|.  Passing
     *        PR_UINT32_MAX indicates that all data available will be used 
     *        to update the hash. 
     *
     * @throws NS_ERROR_NOT_INITIALIZED if |init| has not been 
     *         called.
     *
     * @throws NS_ERROR_NOT_AVAILABLE if the requested amount of 
     *         data to be calculated into the hash is not available.
     *
     */
  /* void updateFromStream (in nsIInputStream aStream, in unsigned long aLen); */
  void UpdateFromStream(nsIInputStreamD aStream, PRUint32 aLen){
    nsresult __result = inner.UpdateFromStream(aStream ? cast(nsIInputStream)aStream : null, aLen);
    CheckException(__result);
  }

  /**
     * Completes this hash object and produces the actual hash data.
     *
     * @param aASCII if true then the returned value is a base-64 
     *        encoded string.  if false, then the returned value is
     *        binary data.  
     *
     * @return a hash of the data that was read by this object.  This can
     *         be either binary data or base 64 encoded.
     *
     * @throws NS_ERROR_NOT_INITIALIZED if |init| has not been 
     *         called.
     *
     * NOTE: This method may be called any time after |init|
     *       is called.  This call resets the object to its
     *       pre-init state.
     */
  /* ACString finish (in PRBool aASCII); */
  char[] Finish(PRBool aASCII){
    scope auto _retval = new ACString;
    nsresult __result = inner.Finish(aASCII, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsICryptoHash inner;

}

