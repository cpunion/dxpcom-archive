/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIStreamCipher.idl
 */

module mozilla.xpcom.nsIStreamCipher;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIKeyModule;

public import mozilla.xpcom.nsIInputStream; /* forward declaration */


/* starting interface:    nsIStreamCipher */
const char[] NS_ISTREAMCIPHER_IID_STR = "1d507cd6-1630-4710-af1b-4012dbcc514c";

const nsIID NS_ISTREAMCIPHER_IID= 
  {0x1d507cd6, 0x1630, 0x4710, 
    [ 0xaf, 0x1b, 0x40, 0x12, 0xdb, 0xcc, 0x51, 0x4c ]};

/**
 * Stream cipher interface.  We're basically copying the interface from
 * nsICryptoHash interface.
 */
extern(Windows)
interface nsIStreamCipher : nsISupports {
  static const char[] IID_STR = NS_ISTREAMCIPHER_IID_STR;
  static const nsIID IID = NS_ISTREAMCIPHER_IID;

  /**
     * Initialize a stream cipher.
     * @param aKey nsIKeyObject
     */
  /* void init (in nsIKeyObject aKey); */
  nsresult Init(nsIKeyObject aKey);

  /**
     * Initialize a stream cipher with an initialization vector.
     * @param aKey nsIKeyObject
     * @param aIV the initialization vector
     * @param aIVLen the length of the initialization vector
     */
  /* void initWithIV (in nsIKeyObject aKey, [array, size_is (aIVLen), const] in octet aIV, in unsigned long aIVLen); */
  nsresult InitWithIV(nsIKeyObject aKey, PRUint8 *aIV, PRUint32 aIVLen);

  /**
     * Update from an array of bytes.
     */
  /* void update ([array, size_is (aLen), const] in octet aData, in unsigned long aLen); */
  nsresult Update(PRUint8 *aData, PRUint32 aLen);

  /**
     * Update from a stream.
     */
  /* void updateFromStream (in nsIInputStream aStream, in long aLen); */
  nsresult UpdateFromStream(nsIInputStream aStream, PRInt32 aLen);

  /**
     * A more script friendly method (not in nsICryptoHash interface).
     */
  /* void updateFromString (in ACString aInput); */
  nsresult UpdateFromString(nsACString * aInput);

  /**
     * @param aASCII if true then the returned value is a base-64
     *        encoded string.  if false, then the returned value is
     *        binary data.
     */
  /* ACString finish (in PRBool aASCII); */
  nsresult Finish(PRBool aASCII, nsACString * _retval);

  /**
     * Discard aLen bytes of the keystream.
     * These days 1536 is considered a decent amount to drop to get
     * the key state warmed-up enough for secure usage.
     */
  /* void discard (in long aLen); */
  nsresult Discard(PRInt32 aLen);

}

