/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICryptoHash.idl
 */

module mozilla.xpcom.nsICryptoHash;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIInputStream; /* forward declaration */


/* starting interface:    nsICryptoHash */
const char[] NS_ICRYPTOHASH_IID_STR = "1e5b7c43-4688-45ce-92e1-77ed931e3bbe";

const nsIID NS_ICRYPTOHASH_IID= 
  {0x1e5b7c43, 0x4688, 0x45ce, 
    [ 0x92, 0xe1, 0x77, 0xed, 0x93, 0x1e, 0x3b, 0xbe ]};

/**
 * nsICryptoHash
 * This interface provides crytographic hashing algorithms.
 */
extern(Windows)
interface nsICryptoHash : nsISupports {
  static const char[] IID_STR = NS_ICRYPTOHASH_IID_STR;
  static const nsIID IID = NS_ICRYPTOHASH_IID;

  /**
     * Hashing Algorithms.  These values are to be used by the
     * |init| method to indicate which hashing function to
     * use.  These values map directly onto the values defined
     * in mozilla/security/nss/lib/cryptohi/hasht.h.
     */
  enum { MD2 = 1 };

  enum { MD5 = 2 };

  enum { SHA1 = 3 };

  enum { SHA256 = 4 };

  enum { SHA384 = 5 };

  enum { SHA512 = 6 };

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
  nsresult Init(PRUint32 aAlgorithm);

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
  nsresult InitWithString(nsACString * aAlgorithm);

  /**
     * @param aData a buffer to calculate the hash over
     *
     * @param aLen the length of the buffer |aData|
     *
     * @throws NS_ERROR_NOT_INITIALIZED if |init| has not been 
     *         called.
     */
  /* void update ([array, size_is (aLen), const] in octet aData, in unsigned long aLen); */
  nsresult Update(PRUint8 *aData, PRUint32 aLen);

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
  nsresult UpdateFromStream(nsIInputStream aStream, PRUint32 aLen);

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
  nsresult Finish(PRBool aASCII, nsACString * _retval);

}

