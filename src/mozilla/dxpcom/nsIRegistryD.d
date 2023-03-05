/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRegistry.idl
 */

module mozilla.dxpcom.nsIRegistryD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIRegistry;


public import mozilla.dxpcom.nsIRegistryD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIEnumerator;
public import mozilla.dxpcom.nsIEnumeratorD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;


/* starting wrapper class:    nsIRegistry */
class nsIRegistryD : public nsISupportsD {

  static const nsIID IID = NS_IREGISTRY_IID;


  alias nsIRegistry InnerType;

  this(nsIRegistry intr){
    super(intr);
    this.inner = intr;
  }

  nsIRegistry opCast() {
    return inner;
  }

  void opAssign(nsIRegistry value) {
    inner = value;
  }

  enum { None = 0 }

  enum { Users = 1 }

  enum { Common = 2 }

  enum { CurrentUser = 3 }

  enum { ApplicationComponentRegistry = 1 }

  enum { ApplicationRegistry = 2 }

  enum { ApplicationCustomRegistry = -1 }

  /* void open (in nsIFile regFile); */
  void Open(nsIFileD regFile){
    nsresult __result = inner.Open(regFile ? cast(nsIFile)regFile : null);
    CheckException(__result);
  }

  /* void openWellKnownRegistry (in nsWellKnownRegistry regid); */
  void OpenWellKnownRegistry(nsWellKnownRegistry regid){
    nsresult __result = inner.OpenWellKnownRegistry(regid);
    CheckException(__result);
  }

  /* void flush (); */
  void Flush(){
    nsresult __result = inner.Flush();
    CheckException(__result);
  }

  /* boolean isOpen (); */
  PRBool IsOpen(){
    PRBool _retval;
    nsresult __result = inner.IsOpen(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsRegistryKey addKey (in nsRegistryKey baseKey, in wstring keyname); */
  nsRegistryKey AddKey(nsRegistryKey baseKey, PRUnichar*keyname){
    nsRegistryKey _retval;
    nsresult __result = inner.AddKey(baseKey, keyname, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsRegistryKey getKey (in nsRegistryKey baseKey, in wstring keyname); */
  nsRegistryKey GetKey(nsRegistryKey baseKey, PRUnichar*keyname){
    nsRegistryKey _retval;
    nsresult __result = inner.GetKey(baseKey, keyname, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void removeKey (in nsRegistryKey baseKey, in wstring keyname); */
  void RemoveKey(nsRegistryKey baseKey, PRUnichar*keyname){
    nsresult __result = inner.RemoveKey(baseKey, keyname);
    CheckException(__result);
  }

  /* wstring getString (in nsRegistryKey baseKey, in wstring valname); */
  PRUnichar* GetString(nsRegistryKey baseKey, PRUnichar*valname){
    PRUnichar* _retval;
    nsresult __result = inner.GetString(baseKey, valname, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setString (in nsRegistryKey baseKey, in wstring valname, in wstring value); */
  void SetString(nsRegistryKey baseKey, PRUnichar*valname, PRUnichar*value){
    nsresult __result = inner.SetString(baseKey, valname, value);
    CheckException(__result);
  }

  /* string getStringUTF8 (in nsRegistryKey baseKey, in string path); */
  char* GetStringUTF8(nsRegistryKey baseKey, char*path){
    char* _retval;
    nsresult __result = inner.GetStringUTF8(baseKey, path, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setStringUTF8 (in nsRegistryKey baseKey, in string path, in string value); */
  void SetStringUTF8(nsRegistryKey baseKey, char*path, char*value){
    nsresult __result = inner.SetStringUTF8(baseKey, path, value);
    CheckException(__result);
  }

  /* void getBytesUTF8 (in nsRegistryKey baseKey, in string path, out PRUint32 length, [array, size_is (length), retval] out PRUint8 valueArray); */
  void GetBytesUTF8(nsRegistryKey baseKey, char*path, out PRUint32 length, out PRUint8 *valueArray){
    nsresult __result = inner.GetBytesUTF8(baseKey, path, &length, &valueArray);
    CheckException(__result);
  }

  /* void setBytesUTF8 (in nsRegistryKey baseKey, in string path, in PRUint32 length, [array, size_is (length)] in PRUint8 valueArray); */
  void SetBytesUTF8(nsRegistryKey baseKey, char*path, PRUint32 length, PRUint8 *valueArray){
    nsresult __result = inner.SetBytesUTF8(baseKey, path, length, valueArray);
    CheckException(__result);
  }

  /* PRInt32 getInt (in nsRegistryKey baseKey, in string path); */
  PRInt32 GetInt(nsRegistryKey baseKey, char*path){
    PRInt32 _retval;
    nsresult __result = inner.GetInt(baseKey, path, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setInt (in nsRegistryKey baseKey, in string path, in PRInt32 value); */
  void SetInt(nsRegistryKey baseKey, char*path, PRInt32 value){
    nsresult __result = inner.SetInt(baseKey, path, value);
    CheckException(__result);
  }

  /* PRInt64 getLongLong (in nsRegistryKey baseKey, in string path); */
  PRInt64 GetLongLong(nsRegistryKey baseKey, char*path){
    PRInt64 _retval;
    nsresult __result = inner.GetLongLong(baseKey, path, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setLongLong (in nsRegistryKey baseKey, in string path, inout PRInt64 value); */
  void SetLongLong(nsRegistryKey baseKey, char*path, out PRInt64 value){
    nsresult __result = inner.SetLongLong(baseKey, path, &value);
    CheckException(__result);
  }

  /**
     * addSubtree() and friends need to be renamed to addKeyUTF8().
     * If you are using these forms make sure you pass UTF8 data
     */
  /* nsRegistryKey addSubtree (in nsRegistryKey baseKey, in string path); */
  nsRegistryKey AddSubtree(nsRegistryKey baseKey, char*path){
    nsRegistryKey _retval;
    nsresult __result = inner.AddSubtree(baseKey, path, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void removeSubtree (in nsRegistryKey baseKey, in string path); */
  void RemoveSubtree(nsRegistryKey baseKey, char*path){
    nsresult __result = inner.RemoveSubtree(baseKey, path);
    CheckException(__result);
  }

  /* nsRegistryKey getSubtree (in nsRegistryKey baseKey, in string path); */
  nsRegistryKey GetSubtree(nsRegistryKey baseKey, char*path){
    nsRegistryKey _retval;
    nsresult __result = inner.GetSubtree(baseKey, path, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsRegistryKey addSubtreeRaw (in nsRegistryKey baseKey, in string path); */
  nsRegistryKey AddSubtreeRaw(nsRegistryKey baseKey, char*path){
    nsRegistryKey _retval;
    nsresult __result = inner.AddSubtreeRaw(baseKey, path, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void removeSubtreeRaw (in nsRegistryKey baseKey, in string path); */
  void RemoveSubtreeRaw(nsRegistryKey baseKey, char*path){
    nsresult __result = inner.RemoveSubtreeRaw(baseKey, path);
    CheckException(__result);
  }

  /* nsRegistryKey getSubtreeRaw (in nsRegistryKey baseKey, in string path); */
  nsRegistryKey GetSubtreeRaw(nsRegistryKey baseKey, char*path){
    nsRegistryKey _retval;
    nsresult __result = inner.GetSubtreeRaw(baseKey, path, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsIEnumerator enumerateSubtrees (in nsRegistryKey baseKey); */
  nsIEnumeratorD  EnumerateSubtrees(nsRegistryKey baseKey){
    nsIEnumerator _retval;
    nsresult __result = inner.EnumerateSubtrees(baseKey, &_retval);
    CheckException(__result);
    return new nsIEnumeratorD(_retval);
  }

  /* nsIEnumerator enumerateAllSubtrees (in nsRegistryKey baseKey); */
  nsIEnumeratorD  EnumerateAllSubtrees(nsRegistryKey baseKey){
    nsIEnumerator _retval;
    nsresult __result = inner.EnumerateAllSubtrees(baseKey, &_retval);
    CheckException(__result);
    return new nsIEnumeratorD(_retval);
  }

  /* nsIEnumerator enumerateValues (in nsRegistryKey baseKey); */
  nsIEnumeratorD  EnumerateValues(nsRegistryKey baseKey){
    nsIEnumerator _retval;
    nsresult __result = inner.EnumerateValues(baseKey, &_retval);
    CheckException(__result);
    return new nsIEnumeratorD(_retval);
  }

  enum { String = 1U }

  enum { Int32 = 2U }

  enum { Bytes = 3U }

  enum { File = 4U }

  /* unsigned long getValueType (in nsRegistryKey baseKey, in string path); */
  PRUint32 GetValueType(nsRegistryKey baseKey, char*path){
    PRUint32 _retval;
    nsresult __result = inner.GetValueType(baseKey, path, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRUint32 getValueLength (in nsRegistryKey baseKey, in string path); */
  PRUint32 GetValueLength(nsRegistryKey baseKey, char*path){
    PRUint32 _retval;
    nsresult __result = inner.GetValueLength(baseKey, path, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void deleteValue (in nsRegistryKey baseKey, in string path); */
  void DeleteValue(nsRegistryKey baseKey, char*path){
    nsresult __result = inner.DeleteValue(baseKey, path);
    CheckException(__result);
  }

  /**
     * escapeKey() takes arbitrary binary data and converts it into
     * valid ASCII which can be used as registry key or value names
     */
  /* void escapeKey ([array, size_is (length)] in PRUint8 key, in PRUint32 terminator, inout PRUint32 length, [array, size_is (length), retval] out PRUint8 escaped); */
  void EscapeKey(PRUint8 *key, PRUint32 terminator, out PRUint32 length, out PRUint8 *escaped){
    nsresult __result = inner.EscapeKey(key, terminator, &length, &escaped);
    CheckException(__result);
  }

  /* void unescapeKey ([array, size_is (length)] in PRUint8 escaped, in PRUint32 terminator, inout PRUint32 length, [array, size_is (length), retval] out PRUint8 key); */
  void UnescapeKey(PRUint8 *escaped, PRUint32 terminator, out PRUint32 length, out PRUint8 *key){
    nsresult __result = inner.UnescapeKey(escaped, terminator, &length, &key);
    CheckException(__result);
  }

  /* attribute string currentUserName; */
  char* CurrentUserName(){
    char* value;
    nsresult __result = inner.GetCurrentUserName(&value);
    CheckException(__result);
    return value;
  }
  void CurrentUserName(char* aCurrentUserName){
    nsresult __result = inner.SetCurrentUserName(aCurrentUserName);
    CheckException(__result);
  }

  /* void pack (); */
  void Pack(){
    nsresult __result = inner.Pack();
    CheckException(__result);
  }

private:
  nsIRegistry inner;

}


/* starting wrapper class:    nsIRegistryEnumerator */
class nsIRegistryEnumeratorD : public nsIEnumeratorD {

  static const nsIID IID = NS_IREGISTRYENUMERATOR_IID;


  alias nsIRegistryEnumerator InnerType;

  this(nsIRegistryEnumerator intr){
    super(intr);
    this.inner = intr;
  }

  nsIRegistryEnumerator opCast() {
    return inner;
  }

  void opAssign(nsIRegistryEnumerator value) {
    inner = value;
  }

  /* void currentItemInPlaceUTF8 (out nsRegistryKey key, [shared, retval] out string item); */
  void CurrentItemInPlaceUTF8(out nsRegistryKey key, out char*item){
    nsresult __result = inner.CurrentItemInPlaceUTF8(&key, &item);
    CheckException(__result);
  }

private:
  nsIRegistryEnumerator inner;

}


/* starting wrapper class:    nsIRegistryNode */
class nsIRegistryNodeD : public nsISupportsD {

  static const nsIID IID = NS_IREGISTRYNODE_IID;


  alias nsIRegistryNode InnerType;

  this(nsIRegistryNode intr){
    super(intr);
    this.inner = intr;
  }

  nsIRegistryNode opCast() {
    return inner;
  }

  void opAssign(nsIRegistryNode value) {
    inner = value;
  }

  /* readonly attribute string nameUTF8; */
  char* NameUTF8(){
    char* value;
    nsresult __result = inner.GetNameUTF8(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute wstring name; */
  PRUnichar* Name(){
    PRUnichar* value;
    nsresult __result = inner.GetName(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsRegistryKey key; */
  nsRegistryKey Key(){
    nsRegistryKey value;
    nsresult __result = inner.GetKey(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIRegistryNode inner;

}


/* starting wrapper class:    nsIRegistryValue */
class nsIRegistryValueD : public nsISupportsD {

  static const nsIID IID = NS_IREGISTRYVALUE_IID;


  alias nsIRegistryValue InnerType;

  this(nsIRegistryValue intr){
    super(intr);
    this.inner = intr;
  }

  nsIRegistryValue opCast() {
    return inner;
  }

  void opAssign(nsIRegistryValue value) {
    inner = value;
  }

  /* readonly attribute wstring name; */
  PRUnichar* Name(){
    PRUnichar* value;
    nsresult __result = inner.GetName(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute string nameUTF8; */
  char* NameUTF8(){
    char* value;
    nsresult __result = inner.GetNameUTF8(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute unsigned long type; */
  PRUint32 Type(){
    PRUint32 value;
    nsresult __result = inner.GetType(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRUint32 length; */
  PRUint32 Length(){
    PRUint32 value;
    nsresult __result = inner.GetLength(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIRegistryValue inner;

}


/* starting wrapper class:    nsIRegistryGetter */
/**
 * It sucks that nsIRegistry has to always allocate and return
 * strings. nsIRegistryGetter adds in interfaces for non allocating getters
 * to registry values.
 */
class nsIRegistryGetterD : public nsISupportsD {

  static const nsIID IID = NS_IREGISTRYGETTER_IID;


  alias nsIRegistryGetter InnerType;

  this(nsIRegistryGetter intr){
    super(intr);
    this.inner = intr;
  }

  nsIRegistryGetter opCast() {
    return inner;
  }

  void opAssign(nsIRegistryGetter value) {
    inner = value;
  }

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
  void GetStringUTF8IntoBuffer(nsRegistryKey baseKey, char*path, out char buf, out PRUint32 length){
    nsresult __result = inner.GetStringUTF8IntoBuffer(baseKey, path, &buf, &length);
    CheckException(__result);
  }

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
  void GetBytesUTF8IntoBuffer(nsRegistryKey baseKey, char*path, out PRUint8 buf, out PRUint32 length){
    nsresult __result = inner.GetBytesUTF8IntoBuffer(baseKey, path, &buf, &length);
    CheckException(__result);
  }

private:
  nsIRegistryGetter inner;

}

