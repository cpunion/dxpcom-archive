/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRegistry.idl
 */

module mozilla.xpcom.nsIRegistry;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIEnumerator;

public import mozilla.xpcom.nsIFile; /* forward declaration */

alias PRUint32 nsRegistryKey;

alias PRInt32 nsWellKnownRegistry;


/* starting interface:    nsIRegistry */
const char[] NS_IREGISTRY_IID_STR = "5d41a440-8e37-11d2-8059-00600811a9c3";

const nsIID NS_IREGISTRY_IID= 
  {0x5d41a440, 0x8e37, 0x11d2, 
    [ 0x80, 0x59, 0x00, 0x60, 0x08, 0x11, 0xa9, 0xc3 ]};

extern(Windows)
interface nsIRegistry : nsISupports {
  static const char[] IID_STR = NS_IREGISTRY_IID_STR;
  static const nsIID IID = NS_IREGISTRY_IID;

  enum { None = 0 };

  enum { Users = 1 };

  enum { Common = 2 };

  enum { CurrentUser = 3 };

  enum { ApplicationComponentRegistry = 1 };

  enum { ApplicationRegistry = 2 };

  enum { ApplicationCustomRegistry = -1 };

  /* void open (in nsIFile regFile); */
  nsresult Open(nsIFile regFile);

  /* void openWellKnownRegistry (in nsWellKnownRegistry regid); */
  nsresult OpenWellKnownRegistry(nsWellKnownRegistry regid);

  /* void flush (); */
  nsresult Flush();

  /* boolean isOpen (); */
  nsresult IsOpen(PRBool *_retval);

  /* nsRegistryKey addKey (in nsRegistryKey baseKey, in wstring keyname); */
  nsresult AddKey(nsRegistryKey baseKey, PRUnichar *keyname, nsRegistryKey *_retval);

  /* nsRegistryKey getKey (in nsRegistryKey baseKey, in wstring keyname); */
  nsresult GetKey(nsRegistryKey baseKey, PRUnichar *keyname, nsRegistryKey *_retval);

  /* void removeKey (in nsRegistryKey baseKey, in wstring keyname); */
  nsresult RemoveKey(nsRegistryKey baseKey, PRUnichar *keyname);

  /* wstring getString (in nsRegistryKey baseKey, in wstring valname); */
  nsresult GetString(nsRegistryKey baseKey, PRUnichar *valname, PRUnichar **_retval);

  /* void setString (in nsRegistryKey baseKey, in wstring valname, in wstring value); */
  nsresult SetString(nsRegistryKey baseKey, PRUnichar *valname, PRUnichar *value);

  /* string getStringUTF8 (in nsRegistryKey baseKey, in string path); */
  nsresult GetStringUTF8(nsRegistryKey baseKey, char *path, char **_retval);

  /* void setStringUTF8 (in nsRegistryKey baseKey, in string path, in string value); */
  nsresult SetStringUTF8(nsRegistryKey baseKey, char *path, char *value);

  /* void getBytesUTF8 (in nsRegistryKey baseKey, in string path, out PRUint32 length, [array, size_is (length), retval] out PRUint8 valueArray); */
  nsresult GetBytesUTF8(nsRegistryKey baseKey, char *path, PRUint32 *length, PRUint8 **valueArray);

  /* void setBytesUTF8 (in nsRegistryKey baseKey, in string path, in PRUint32 length, [array, size_is (length)] in PRUint8 valueArray); */
  nsresult SetBytesUTF8(nsRegistryKey baseKey, char *path, PRUint32 length, PRUint8 *valueArray);

  /* PRInt32 getInt (in nsRegistryKey baseKey, in string path); */
  nsresult GetInt(nsRegistryKey baseKey, char *path, PRInt32 *_retval);

  /* void setInt (in nsRegistryKey baseKey, in string path, in PRInt32 value); */
  nsresult SetInt(nsRegistryKey baseKey, char *path, PRInt32 value);

  /* PRInt64 getLongLong (in nsRegistryKey baseKey, in string path); */
  nsresult GetLongLong(nsRegistryKey baseKey, char *path, PRInt64 *_retval);

  /* void setLongLong (in nsRegistryKey baseKey, in string path, inout PRInt64 value); */
  nsresult SetLongLong(nsRegistryKey baseKey, char *path, PRInt64 *value);

  /**
     * addSubtree() and friends need to be renamed to addKeyUTF8().
     * If you are using these forms make sure you pass UTF8 data
     */
  /* nsRegistryKey addSubtree (in nsRegistryKey baseKey, in string path); */
  nsresult AddSubtree(nsRegistryKey baseKey, char *path, nsRegistryKey *_retval);

  /* void removeSubtree (in nsRegistryKey baseKey, in string path); */
  nsresult RemoveSubtree(nsRegistryKey baseKey, char *path);

  /* nsRegistryKey getSubtree (in nsRegistryKey baseKey, in string path); */
  nsresult GetSubtree(nsRegistryKey baseKey, char *path, nsRegistryKey *_retval);

  /* nsRegistryKey addSubtreeRaw (in nsRegistryKey baseKey, in string path); */
  nsresult AddSubtreeRaw(nsRegistryKey baseKey, char *path, nsRegistryKey *_retval);

  /* void removeSubtreeRaw (in nsRegistryKey baseKey, in string path); */
  nsresult RemoveSubtreeRaw(nsRegistryKey baseKey, char *path);

  /* nsRegistryKey getSubtreeRaw (in nsRegistryKey baseKey, in string path); */
  nsresult GetSubtreeRaw(nsRegistryKey baseKey, char *path, nsRegistryKey *_retval);

  /* nsIEnumerator enumerateSubtrees (in nsRegistryKey baseKey); */
  nsresult EnumerateSubtrees(nsRegistryKey baseKey, nsIEnumerator *_retval);

  /* nsIEnumerator enumerateAllSubtrees (in nsRegistryKey baseKey); */
  nsresult EnumerateAllSubtrees(nsRegistryKey baseKey, nsIEnumerator *_retval);

  /* nsIEnumerator enumerateValues (in nsRegistryKey baseKey); */
  nsresult EnumerateValues(nsRegistryKey baseKey, nsIEnumerator *_retval);

  enum { String = 1U };

  enum { Int32 = 2U };

  enum { Bytes = 3U };

  enum { File = 4U };

  /* unsigned long getValueType (in nsRegistryKey baseKey, in string path); */
  nsresult GetValueType(nsRegistryKey baseKey, char *path, PRUint32 *_retval);

  /* PRUint32 getValueLength (in nsRegistryKey baseKey, in string path); */
  nsresult GetValueLength(nsRegistryKey baseKey, char *path, PRUint32 *_retval);

  /* void deleteValue (in nsRegistryKey baseKey, in string path); */
  nsresult DeleteValue(nsRegistryKey baseKey, char *path);

  /**
     * escapeKey() takes arbitrary binary data and converts it into
     * valid ASCII which can be used as registry key or value names
     */
  /* void escapeKey ([array, size_is (length)] in PRUint8 key, in PRUint32 terminator, inout PRUint32 length, [array, size_is (length), retval] out PRUint8 escaped); */
  nsresult EscapeKey(PRUint8 *key, PRUint32 terminator, PRUint32 *length, PRUint8 **escaped);

  /* void unescapeKey ([array, size_is (length)] in PRUint8 escaped, in PRUint32 terminator, inout PRUint32 length, [array, size_is (length), retval] out PRUint8 key); */
  nsresult UnescapeKey(PRUint8 *escaped, PRUint32 terminator, PRUint32 *length, PRUint8 **key);

  /* attribute string currentUserName; */
  nsresult GetCurrentUserName(char * *aCurrentUserName);
  nsresult SetCurrentUserName(char * aCurrentUserName);

  /* void pack (); */
  nsresult Pack();

}


/* starting interface:    nsIRegistryEnumerator */
const char[] NS_IREGISTRYENUMERATOR_IID_STR = "8cecf236-1dd2-11b2-893c-f9848956eaec";

const nsIID NS_IREGISTRYENUMERATOR_IID= 
  {0x8cecf236, 0x1dd2, 0x11b2, 
    [ 0x89, 0x3c, 0xf9, 0x84, 0x89, 0x56, 0xea, 0xec ]};

extern(Windows)
interface nsIRegistryEnumerator : nsIEnumerator {
  static const char[] IID_STR = NS_IREGISTRYENUMERATOR_IID_STR;
  static const nsIID IID = NS_IREGISTRYENUMERATOR_IID;

  /* void currentItemInPlaceUTF8 (out nsRegistryKey key, [shared, retval] out string item); */
  nsresult CurrentItemInPlaceUTF8(nsRegistryKey *key, char **item);

}


/* starting interface:    nsIRegistryNode */
const char[] NS_IREGISTRYNODE_IID_STR = "d1b54831-ac07-11d2-805e-00600811a9c3";

const nsIID NS_IREGISTRYNODE_IID= 
  {0xd1b54831, 0xac07, 0x11d2, 
    [ 0x80, 0x5e, 0x00, 0x60, 0x08, 0x11, 0xa9, 0xc3 ]};

extern(Windows)
interface nsIRegistryNode : nsISupports {
  static const char[] IID_STR = NS_IREGISTRYNODE_IID_STR;
  static const nsIID IID = NS_IREGISTRYNODE_IID;

  /* readonly attribute string nameUTF8; */
  nsresult GetNameUTF8(char * *aNameUTF8);

  /* readonly attribute wstring name; */
  nsresult GetName(PRUnichar * *aName);

  /* readonly attribute nsRegistryKey key; */
  nsresult GetKey(nsRegistryKey *aKey);

}


/* starting interface:    nsIRegistryValue */
const char[] NS_IREGISTRYVALUE_IID_STR = "5316c380-b2f8-11d2-a374-0080c6f80e4b";

const nsIID NS_IREGISTRYVALUE_IID= 
  {0x5316c380, 0xb2f8, 0x11d2, 
    [ 0xa3, 0x74, 0x00, 0x80, 0xc6, 0xf8, 0x0e, 0x4b ]};

extern(Windows)
interface nsIRegistryValue : nsISupports {
  static const char[] IID_STR = NS_IREGISTRYVALUE_IID_STR;
  static const nsIID IID = NS_IREGISTRYVALUE_IID;

  /* readonly attribute wstring name; */
  nsresult GetName(PRUnichar * *aName);

  /* readonly attribute string nameUTF8; */
  nsresult GetNameUTF8(char * *aNameUTF8);

  /* readonly attribute unsigned long type; */
  nsresult GetType(PRUint32 *aType);

  /* readonly attribute PRUint32 length; */
  nsresult GetLength(PRUint32 *aLength);

}


/* starting interface:    nsIRegistryGetter */
const char[] NS_IREGISTRYGETTER_IID_STR = "3a15fc88-7a61-4ab4-8e58-31e95fab3da8";

const nsIID NS_IREGISTRYGETTER_IID= 
  {0x3a15fc88, 0x7a61, 0x4ab4, 
    [ 0x8e, 0x58, 0x31, 0xe9, 0x5f, 0xab, 0x3d, 0xa8 ]};

/**
 * It sucks that nsIRegistry has to always allocate and return
 * strings. nsIRegistryGetter adds in interfaces for non allocating getters
 * to registry values.
 */
extern(Windows)
interface nsIRegistryGetter : nsISupports {
  static const char[] IID_STR = NS_IREGISTRYGETTER_IID_STR;
  static const nsIID IID = NS_IREGISTRYGETTER_IID;

  /**
     * Get a string value of attribute valname in widestring or utf8 format
     *
     * @return
     *  NS_OK on success.
     *    buf has the string value copied into it. length is NOT changed.
     *  NS_ERROR_REG_BUFFER_TOO_SMALL if not enough buffer space.
     *    length is updated to actual length in chars including
     *    terminating NULL and buf will be unchanged.
     *  NS_ERROR_FAILURE if an unknown error happened. state of buf and
     *    length undefined.
     *  various failure codes otherwise. buf and length wont be updated.
     */
  /* void getStringUTF8IntoBuffer (in nsRegistryKey baseKey, in string path, inout char buf, inout PRUint32 length); */
  nsresult GetStringUTF8IntoBuffer(nsRegistryKey baseKey, char *path, char *buf, PRUint32 *length);

  /**
     * Get a a byte array value of attribute valname
     *
     * @return
     *  NS_OK on success. buf has the string value copied into it.
     *    length is updated to actual number of bytes copied into buf.
     *  NS_ERROR_REG_BUFFER_TOO_SMALL if not enough buffer space.
     *    length is updated to actual length in PRUint8s including
     *    terminating NULL and buf will be unchanged.
     *  NS_ERROR_FAILURE if an unknown error happened. state of buf and
     *    length undefined.
     *  various other failure codes otherwise. buf and length wont be updated.
     */
  /* void getBytesUTF8IntoBuffer (in nsRegistryKey baseKey, in string path, inout PRUint8 buf, inout PRUint32 length); */
  nsresult GetBytesUTF8IntoBuffer(nsRegistryKey baseKey, char *path, PRUint8 *buf, PRUint32 *length);

}

