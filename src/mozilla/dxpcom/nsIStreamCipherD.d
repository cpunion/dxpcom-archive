/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIStreamCipher.idl
 */

module mozilla.dxpcom.nsIStreamCipherD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIStreamCipher;


public import mozilla.dxpcom.nsIStreamCipherD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIKeyModule;
public import mozilla.dxpcom.nsIKeyModuleD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;


/* starting wrapper class:    nsIStreamCipher */
/**
 * Stream cipher interface.  We're basically copying the interface from
 * nsICryptoHash interface.
 */
class nsIStreamCipherD : public nsISupportsD {

  static const nsIID IID = NS_ISTREAMCIPHER_IID;


  alias nsIStreamCipher InnerType;

  this(nsIStreamCipher intr){
    super(intr);
    this.inner = intr;
  }

  nsIStreamCipher opCast() {
    return inner;
  }

  void opAssign(nsIStreamCipher value) {
    inner = value;
  }

  /**
     * Initialize a stream cipher.
     * @param aKey nsIKeyObject
     */
  /* void init (in nsIKeyObject aKey); */
  void Init(nsIKeyObjectD aKey){
    nsresult __result = inner.Init(aKey ? cast(nsIKeyObject)aKey : null);
    CheckException(__result);
  }

  /**
     * Initialize a stream cipher with an initialization vector.
     * @param aKey nsIKeyObject
     * @param aIV the initialization vector
     * @param aIVLen the length of the initialization vector
     */
  /* void initWithIV (in nsIKeyObject aKey, [array, size_is (aIVLen), const] in octet aIV, in unsigned long aIVLen); */
  void InitWithIV(nsIKeyObjectD aKey, PRUint8 *aIV, PRUint32 aIVLen){
    nsresult __result = inner.InitWithIV(aKey ? cast(nsIKeyObject)aKey : null, aIV, aIVLen);
    CheckException(__result);
  }

  /**
     * Update from an array of bytes.
     */
  /* void update ([array, size_is (aLen), const] in octet aData, in unsigned long aLen); */
  void Update(PRUint8 *aData, PRUint32 aLen){
    nsresult __result = inner.Update(aData, aLen);
    CheckException(__result);
  }

  /**
     * Update from a stream.
     */
  /* void updateFromStream (in nsIInputStream aStream, in long aLen); */
  void UpdateFromStream(nsIInputStreamD aStream, PRInt32 aLen){
    nsresult __result = inner.UpdateFromStream(aStream ? cast(nsIInputStream)aStream : null, aLen);
    CheckException(__result);
  }

  /**
     * A more script friendly method (not in nsICryptoHash interface).
     */
  /* void updateFromString (in ACString aInput); */
  void UpdateFromString(char[] aInput){
    scope auto _aInput = new ACString(aInput);
    nsresult __result = inner.UpdateFromString(cast(nsACString*)_aInput);
    CheckException(__result);
  }

  /**
     * @param aASCII if true then the returned value is a base-64
     *        encoded string.  if false, then the returned value is
     *        binary data.
     */
  /* ACString finish (in PRBool aASCII); */
  char[] Finish(PRBool aASCII){
    scope auto _retval = new ACString;
    nsresult __result = inner.Finish(aASCII, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
     * Discard aLen bytes of the keystream.
     * These days 1536 is considered a decent amount to drop to get
     * the key state warmed-up enough for secure usage.
     */
  /* void discard (in long aLen); */
  void Discard(PRInt32 aLen){
    nsresult __result = inner.Discard(aLen);
    CheckException(__result);
  }

private:
  nsIStreamCipher inner;

}

