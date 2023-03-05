/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIKeyModule.idl
 */

module mozilla.xpcom.nsIKeyModule;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIKeyObject */
const char[] NS_IKEYOBJECT_IID_STR = "4b31f4ed-9424-4710-b946-79b7e33cf3a8";

const nsIID NS_IKEYOBJECT_IID= 
  {0x4b31f4ed, 0x9424, 0x4710, 
    [ 0xb9, 0x46, 0x79, 0xb7, 0xe3, 0x3c, 0xf3, 0xa8 ]};

extern(Windows)
interface nsIKeyObject : nsISupports {
  static const char[] IID_STR = NS_IKEYOBJECT_IID_STR;
  static const nsIID IID = NS_IKEYOBJECT_IID;

  enum { SYM_KEY = 1 };

  enum { PRIVATE_KEY = 2 };

  enum { PUBLIC_KEY = 3 };

  enum { RC4 = 1 };

  enum { AES_CBC = 2 };

  /* [noscript] void initKey (in short aAlgorithm, in voidPtr aKey); */
  nsresult InitKey(PRInt16 aAlgorithm, void * aKey);

  /* [noscript] voidPtr getKeyObj (); */
  nsresult GetKeyObj(void * *_retval);

  /* short getType (); */
  nsresult GetType(PRInt16 *_retval);

}


/* starting interface:    nsIKeyObjectFactory */
const char[] NS_IKEYOBJECTFACTORY_IID_STR = "264eb54d-e20d-49a0-890c-1a5986ea81c4";

const nsIID NS_IKEYOBJECTFACTORY_IID= 
  {0x264eb54d, 0xe20d, 0x49a0, 
    [ 0x89, 0x0c, 0x1a, 0x59, 0x86, 0xea, 0x81, 0xc4 ]};

extern(Windows)
interface nsIKeyObjectFactory : nsISupports {
  static const char[] IID_STR = NS_IKEYOBJECTFACTORY_IID_STR;
  static const nsIID IID = NS_IKEYOBJECTFACTORY_IID;

  /* nsIKeyObject lookupKeyByName (in ACString aName); */
  nsresult LookupKeyByName(nsACString * aName, nsIKeyObject *_retval);

  /* nsIKeyObject unwrapKey (in short aAlgorithm, [array, size_is (aWrappedKeyLen), const] in octet aWrappedKey, in unsigned long aWrappedKeyLen); */
  nsresult UnwrapKey(PRInt16 aAlgorithm, PRUint8 *aWrappedKey, PRUint32 aWrappedKeyLen, nsIKeyObject *_retval);

  /* nsIKeyObject keyFromString (in short aAlgorithm, in ACString aKey); */
  nsresult KeyFromString(PRInt16 aAlgorithm, nsACString * aKey, nsIKeyObject *_retval);

}

