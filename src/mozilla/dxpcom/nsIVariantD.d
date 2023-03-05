/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIVariant.idl
 */

module mozilla.dxpcom.nsIVariantD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIVariant;


public import mozilla.dxpcom.nsIVariantD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIDataType */
class nsIDataTypeD : public nsISupportsD {

  static const nsIID IID = NS_IDATATYPE_IID;


  alias nsIDataType InnerType;

  this(nsIDataType intr){
    super(intr);
    this.inner = intr;
  }

  nsIDataType opCast() {
    return inner;
  }

  void opAssign(nsIDataType value) {
    inner = value;
  }

  enum { VTYPE_INT8 = 0U }

  enum { VTYPE_INT16 = 1U }

  enum { VTYPE_INT32 = 2U }

  enum { VTYPE_INT64 = 3U }

  enum { VTYPE_UINT8 = 4U }

  enum { VTYPE_UINT16 = 5U }

  enum { VTYPE_UINT32 = 6U }

  enum { VTYPE_UINT64 = 7U }

  enum { VTYPE_FLOAT = 8U }

  enum { VTYPE_DOUBLE = 9U }

  enum { VTYPE_BOOL = 10U }

  enum { VTYPE_CHAR = 11U }

  enum { VTYPE_WCHAR = 12U }

  enum { VTYPE_VOID = 13U }

  enum { VTYPE_ID = 14U }

  enum { VTYPE_DOMSTRING = 15U }

  enum { VTYPE_CHAR_STR = 16U }

  enum { VTYPE_WCHAR_STR = 17U }

  enum { VTYPE_INTERFACE = 18U }

  enum { VTYPE_INTERFACE_IS = 19U }

  enum { VTYPE_ARRAY = 20U }

  enum { VTYPE_STRING_SIZE_IS = 21U }

  enum { VTYPE_WSTRING_SIZE_IS = 22U }

  enum { VTYPE_UTF8STRING = 23U }

  enum { VTYPE_CSTRING = 24U }

  enum { VTYPE_ASTRING = 25U }

  enum { VTYPE_EMPTY_ARRAY = 254U }

  enum { VTYPE_EMPTY = 255U }

private:
  nsIDataType inner;

}


/* starting wrapper class:    nsIVariant */
/**
 * XPConnect has magic to transparently convert between nsIVariant and JS types.
 * We mark the interface [scriptable] so that JS can use methods
 * that refer to this interface. But we mark all the methods and attributes
 * [noscript] since any nsIVariant object will be automatically converted to a
 * JS type anyway.
 */
class nsIVariantD : public nsISupportsD {

  static const nsIID IID = NS_IVARIANT_IID;


  alias nsIVariant InnerType;

  this(nsIVariant intr){
    super(intr);
    this.inner = intr;
  }

  nsIVariant opCast() {
    return inner;
  }

  void opAssign(nsIVariant value) {
    inner = value;
  }

  /* [noscript] readonly attribute PRUint16 dataType; */
  PRUint16 DataType(){
    PRUint16 value;
    nsresult __result = inner.GetDataType(&value);
    CheckException(__result);
    return value;
  }

  /* [noscript] PRUint8 getAsInt8 (); */
  PRUint8 GetAsInt8(){
    PRUint8 _retval;
    nsresult __result = inner.GetAsInt8(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] PRInt16 getAsInt16 (); */
  PRInt16 GetAsInt16(){
    PRInt16 _retval;
    nsresult __result = inner.GetAsInt16(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] PRInt32 getAsInt32 (); */
  PRInt32 GetAsInt32(){
    PRInt32 _retval;
    nsresult __result = inner.GetAsInt32(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] PRInt64 getAsInt64 (); */
  PRInt64 GetAsInt64(){
    PRInt64 _retval;
    nsresult __result = inner.GetAsInt64(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] PRUint8 getAsUint8 (); */
  PRUint8 GetAsUint8(){
    PRUint8 _retval;
    nsresult __result = inner.GetAsUint8(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] PRUint16 getAsUint16 (); */
  PRUint16 GetAsUint16(){
    PRUint16 _retval;
    nsresult __result = inner.GetAsUint16(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] PRUint32 getAsUint32 (); */
  PRUint32 GetAsUint32(){
    PRUint32 _retval;
    nsresult __result = inner.GetAsUint32(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] PRUint64 getAsUint64 (); */
  PRUint64 GetAsUint64(){
    PRUint64 _retval;
    nsresult __result = inner.GetAsUint64(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] float getAsFloat (); */
  float GetAsFloat(){
    float _retval;
    nsresult __result = inner.GetAsFloat(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] double getAsDouble (); */
  double GetAsDouble(){
    double _retval;
    nsresult __result = inner.GetAsDouble(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] PRBool getAsBool (); */
  PRBool GetAsBool(){
    PRBool _retval;
    nsresult __result = inner.GetAsBool(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] char getAsChar (); */
  char GetAsChar(){
    char _retval;
    nsresult __result = inner.GetAsChar(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] wchar getAsWChar (); */
  PRUnichar GetAsWChar(){
    PRUnichar _retval;
    nsresult __result = inner.GetAsWChar(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* [notxpcom] nsresult getAsID (out nsID retval); */
  nsresult GetAsID(out nsID retval){
    nsresult _retval;
    _retval = inner.GetAsID(&retval);

    return _retval;
  }

  /* [noscript] AString getAsAString (); */
  wchar[] GetAsAString(){
    scope auto _retval = new AString;
    nsresult __result = inner.GetAsAString(cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* [noscript] DOMString getAsDOMString (); */
  wchar[] GetAsDOMString(){
    scope auto _retval = new AString;
    nsresult __result = inner.GetAsDOMString(cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* [noscript] ACString getAsACString (); */
  char[] GetAsACString(){
    scope auto _retval = new ACString;
    nsresult __result = inner.GetAsACString(cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* [noscript] AUTF8String getAsAUTF8String (); */
  char[] GetAsAUTF8String(){
    scope auto _retval = new ACString;
    nsresult __result = inner.GetAsAUTF8String(cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* [noscript] string getAsString (); */
  char* GetAsString(){
    char* _retval;
    nsresult __result = inner.GetAsString(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] wstring getAsWString (); */
  PRUnichar* GetAsWString(){
    PRUnichar* _retval;
    nsresult __result = inner.GetAsWString(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] nsISupports getAsISupports (); */
  nsISupportsD  GetAsISupports(){
    nsISupports _retval;
    nsresult __result = inner.GetAsISupports(&_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

  /* [noscript] void getAsInterface (out nsIIDPtr iid, [iid_is (iid), retval] out nsQIResult iface); */
  void GetAsInterface(out nsIID * iid, out void * iface){
    nsresult __result = inner.GetAsInterface(&iid, &iface);
    CheckException(__result);
  }

  /* [notxpcom] nsresult getAsArray (out PRUint16 type, out nsIID iid, out PRUint32 count, out voidPtr ptr); */
  nsresult GetAsArray(out PRUint16 type, out nsIID iid, out PRUint32 count, out void * ptr){
    nsresult _retval;
    _retval = inner.GetAsArray(&type, &iid, &count, &ptr);

    return _retval;
  }

  /* [noscript] void getAsStringWithSize (out PRUint32 size, [size_is (size), retval] out string str); */
  void GetAsStringWithSize(out PRUint32 size, out char*str){
    nsresult __result = inner.GetAsStringWithSize(&size, &str);
    CheckException(__result);
  }

  /* [noscript] void getAsWStringWithSize (out PRUint32 size, [size_is (size), retval] out wstring str); */
  void GetAsWStringWithSize(out PRUint32 size, out PRUnichar*str){
    nsresult __result = inner.GetAsWStringWithSize(&size, &str);
    CheckException(__result);
  }

private:
  nsIVariant inner;

}


/* starting wrapper class:    nsIWritableVariant */
/**
 * An object that implements nsIVariant may or may NOT also implement this
 * nsIWritableVariant.
 * 
 * If the 'writable' attribute is false then attempts to call any of the 'set'
 * methods can be expected to fail. Setting the 'writable' attribute may or
 * may not succeed.
 *
 */
class nsIWritableVariantD : public nsIVariantD {

  static const nsIID IID = NS_IWRITABLEVARIANT_IID;


  alias nsIWritableVariant InnerType;

  this(nsIWritableVariant intr){
    super(intr);
    this.inner = intr;
  }

  nsIWritableVariant opCast() {
    return inner;
  }

  void opAssign(nsIWritableVariant value) {
    inner = value;
  }

  /* attribute PRBool writable; */
  PRBool Writable(){
    PRBool value;
    nsresult __result = inner.GetWritable(&value);
    CheckException(__result);
    return value;
  }
  void Writable(PRBool aWritable){
    PRBool value;
    nsresult __result = inner.SetWritable(value);
    CheckException(__result);
  }

  /* void setAsInt8 (in PRUint8 aValue); */
  void SetAsInt8(PRUint8 aValue){
    nsresult __result = inner.SetAsInt8(aValue);
    CheckException(__result);
  }

  /* void setAsInt16 (in PRInt16 aValue); */
  void SetAsInt16(PRInt16 aValue){
    nsresult __result = inner.SetAsInt16(aValue);
    CheckException(__result);
  }

  /* void setAsInt32 (in PRInt32 aValue); */
  void SetAsInt32(PRInt32 aValue){
    nsresult __result = inner.SetAsInt32(aValue);
    CheckException(__result);
  }

  /* void setAsInt64 (in PRInt64 aValue); */
  void SetAsInt64(PRInt64 aValue){
    nsresult __result = inner.SetAsInt64(aValue);
    CheckException(__result);
  }

  /* void setAsUint8 (in PRUint8 aValue); */
  void SetAsUint8(PRUint8 aValue){
    nsresult __result = inner.SetAsUint8(aValue);
    CheckException(__result);
  }

  /* void setAsUint16 (in PRUint16 aValue); */
  void SetAsUint16(PRUint16 aValue){
    nsresult __result = inner.SetAsUint16(aValue);
    CheckException(__result);
  }

  /* void setAsUint32 (in PRUint32 aValue); */
  void SetAsUint32(PRUint32 aValue){
    nsresult __result = inner.SetAsUint32(aValue);
    CheckException(__result);
  }

  /* void setAsUint64 (in PRUint64 aValue); */
  void SetAsUint64(PRUint64 aValue){
    nsresult __result = inner.SetAsUint64(aValue);
    CheckException(__result);
  }

  /* void setAsFloat (in float aValue); */
  void SetAsFloat(float aValue){
    nsresult __result = inner.SetAsFloat(aValue);
    CheckException(__result);
  }

  /* void setAsDouble (in double aValue); */
  void SetAsDouble(double aValue){
    nsresult __result = inner.SetAsDouble(aValue);
    CheckException(__result);
  }

  /* void setAsBool (in PRBool aValue); */
  void SetAsBool(PRBool aValue){
    nsresult __result = inner.SetAsBool(aValue);
    CheckException(__result);
  }

  /* void setAsChar (in char aValue); */
  void SetAsChar(char aValue){
    nsresult __result = inner.SetAsChar(aValue);
    CheckException(__result);
  }

  /* void setAsWChar (in wchar aValue); */
  void SetAsWChar(PRUnichar aValue){
    nsresult __result = inner.SetAsWChar(aValue);
    CheckException(__result);
  }

  /* void setAsID (in nsIDRef aValue); */
  void SetAsID(nsID * aValue){
    nsresult __result = inner.SetAsID(aValue);
    CheckException(__result);
  }

  /* void setAsAString (in AString aValue); */
  void SetAsAString(wchar[] aValue){
    scope auto _aValue = new AString(aValue);
    nsresult __result = inner.SetAsAString(cast(nsAString*)_aValue);
    CheckException(__result);
  }

  /* void setAsDOMString (in DOMString aValue); */
  void SetAsDOMString(wchar[] aValue){
    scope auto _aValue = new AString(aValue);
    nsresult __result = inner.SetAsDOMString(cast(nsAString*)_aValue);
    CheckException(__result);
  }

  /* void setAsACString (in ACString aValue); */
  void SetAsACString(char[] aValue){
    scope auto _aValue = new ACString(aValue);
    nsresult __result = inner.SetAsACString(cast(nsACString*)_aValue);
    CheckException(__result);
  }

  /* void setAsAUTF8String (in AUTF8String aValue); */
  void SetAsAUTF8String(char[] aValue){
    scope auto _aValue = new ACString(aValue);
    nsresult __result = inner.SetAsAUTF8String(cast(nsACString*)_aValue);
    CheckException(__result);
  }

  /* void setAsString (in string aValue); */
  void SetAsString(char*aValue){
    nsresult __result = inner.SetAsString(aValue);
    CheckException(__result);
  }

  /* void setAsWString (in wstring aValue); */
  void SetAsWString(PRUnichar*aValue){
    nsresult __result = inner.SetAsWString(aValue);
    CheckException(__result);
  }

  /* void setAsISupports (in nsISupports aValue); */
  void SetAsISupports(nsISupportsD aValue){
    nsresult __result = inner.SetAsISupports(aValue ? cast(nsISupports)aValue : null);
    CheckException(__result);
  }

  /* void setAsInterface (in nsIIDRef iid, [iid_is (iid)] in nsQIResult iface); */
  void SetAsInterface(nsIID * iid, void * iface){
    nsresult __result = inner.SetAsInterface(iid, iface);
    CheckException(__result);
  }

  /* [noscript] void setAsArray (in PRUint16 type, in nsIIDPtr iid, in PRUint32 count, in voidPtr ptr); */
  void SetAsArray(PRUint16 type, nsIID * iid, PRUint32 count, void * ptr){
    nsresult __result = inner.SetAsArray(type, iid, count, ptr);
    CheckException(__result);
  }

  /* void setAsStringWithSize (in PRUint32 size, [size_is (size)] in string str); */
  void SetAsStringWithSize(PRUint32 size, char*str){
    nsresult __result = inner.SetAsStringWithSize(size, str);
    CheckException(__result);
  }

  /* void setAsWStringWithSize (in PRUint32 size, [size_is (size)] in wstring str); */
  void SetAsWStringWithSize(PRUint32 size, PRUnichar*str){
    nsresult __result = inner.SetAsWStringWithSize(size, str);
    CheckException(__result);
  }

  /* void setAsVoid (); */
  void SetAsVoid(){
    nsresult __result = inner.SetAsVoid();
    CheckException(__result);
  }

  /* void setAsEmpty (); */
  void SetAsEmpty(){
    nsresult __result = inner.SetAsEmpty();
    CheckException(__result);
  }

  /* void setAsEmptyArray (); */
  void SetAsEmptyArray(){
    nsresult __result = inner.SetAsEmptyArray();
    CheckException(__result);
  }

  /* void setFromVariant (in nsIVariant aValue); */
  void SetFromVariant(nsIVariantD aValue){
    nsresult __result = inner.SetFromVariant(aValue ? cast(nsIVariant)aValue : null);
    CheckException(__result);
  }

private:
  nsIWritableVariant inner;

}

