/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISupportsPrimitives.idl
 */

module mozilla.dxpcom.nsISupportsPrimitivesD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISupportsPrimitives;


public import mozilla.dxpcom.nsISupportsPrimitivesD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsISupportsPrimitive */
/**
 * Primitive base interface.
 *
 * These first three are pointer types and do data copying
 * using the nsIMemory. Be careful!
 *
 * @status FROZEN
 */
class nsISupportsPrimitiveD : public nsISupportsD {

  static const nsIID IID = NS_ISUPPORTSPRIMITIVE_IID;


  alias nsISupportsPrimitive InnerType;

  this(nsISupportsPrimitive intr){
    super(intr);
    this.inner = intr;
  }

  nsISupportsPrimitive opCast() {
    return inner;
  }

  void opAssign(nsISupportsPrimitive value) {
    inner = value;
  }

  enum { TYPE_ID = 1U }

  enum { TYPE_CSTRING = 2U }

  enum { TYPE_STRING = 3U }

  enum { TYPE_PRBOOL = 4U }

  enum { TYPE_PRUINT8 = 5U }

  enum { TYPE_PRUINT16 = 6U }

  enum { TYPE_PRUINT32 = 7U }

  enum { TYPE_PRUINT64 = 8U }

  enum { TYPE_PRTIME = 9U }

  enum { TYPE_CHAR = 10U }

  enum { TYPE_PRINT16 = 11U }

  enum { TYPE_PRINT32 = 12U }

  enum { TYPE_PRINT64 = 13U }

  enum { TYPE_FLOAT = 14U }

  enum { TYPE_DOUBLE = 15U }

  enum { TYPE_VOID = 16U }

  enum { TYPE_INTERFACE_POINTER = 17U }

  /* readonly attribute unsigned short type; */
  PRUint16 Type(){
    PRUint16 value;
    nsresult __result = inner.GetType(&value);
    CheckException(__result);
    return value;
  }

private:
  nsISupportsPrimitive inner;

}


/* starting wrapper class:    nsISupportsID */
/**
 * Scriptable storage for nsID structures
 *
 * @status FROZEN
 */
class nsISupportsIDD : public nsISupportsPrimitiveD {

  static const nsIID IID = NS_ISUPPORTSID_IID;


  alias nsISupportsID InnerType;

  this(nsISupportsID intr){
    super(intr);
    this.inner = intr;
  }

  nsISupportsID opCast() {
    return inner;
  }

  void opAssign(nsISupportsID value) {
    inner = value;
  }

  /* attribute nsIDPtr data; */
  nsID * Data(){
    nsID * value;
    nsresult __result = inner.GetData(&value);
    CheckException(__result);
    return value;
  }
  void Data(nsID * aData){
    nsresult __result = inner.SetData(aData);
    CheckException(__result);
  }

  /* string toString (); */
  char* ToString(){
    char* _retval;
    nsresult __result = inner.ToString(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISupportsID inner;

}


/* starting wrapper class:    nsISupportsCString */
/**
 * Scriptable storage for ASCII strings
 * 
 * @status FROZEN
 */
class nsISupportsCStringD : public nsISupportsPrimitiveD {

  static const nsIID IID = NS_ISUPPORTSCSTRING_IID;


  alias nsISupportsCString InnerType;

  this(nsISupportsCString intr){
    super(intr);
    this.inner = intr;
  }

  nsISupportsCString opCast() {
    return inner;
  }

  void opAssign(nsISupportsCString value) {
    inner = value;
  }

  /* attribute ACString data; */
  char[] Data(){
    scope auto value = new ACString();
    nsresult __result = inner.GetData(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Data(char[] aData){
    scope auto value = new ACString(aData);
    nsresult __result = inner.SetData(cast(nsACString*)value);
    CheckException(__result);
  }

  /* string toString (); */
  char* ToString(){
    char* _retval;
    nsresult __result = inner.ToString(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISupportsCString inner;

}


/* starting wrapper class:    nsISupportsString */
/**
 * Scriptable storage for Unicode strings
 * 
 * @status FROZEN
 */
class nsISupportsStringD : public nsISupportsPrimitiveD {

  static const nsIID IID = NS_ISUPPORTSSTRING_IID;


  alias nsISupportsString InnerType;

  this(nsISupportsString intr){
    super(intr);
    this.inner = intr;
  }

  nsISupportsString opCast() {
    return inner;
  }

  void opAssign(nsISupportsString value) {
    inner = value;
  }

  /* attribute AString data; */
  wchar[] Data(){
    scope auto value = new AString();
    nsresult __result = inner.GetData(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Data(wchar[] aData){
    scope auto value = new AString(aData);
    nsresult __result = inner.SetData(cast(nsAString*)value);
    CheckException(__result);
  }

  /* wstring toString (); */
  PRUnichar* ToString(){
    PRUnichar* _retval;
    nsresult __result = inner.ToString(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISupportsString inner;

}


/* starting wrapper class:    nsISupportsPRBool */
/**
 * The rest are truly primitive and are passed by value
 */
/**
 * Scriptable storage for booleans
 * 
 * @status FROZEN
 */
class nsISupportsPRBoolD : public nsISupportsPrimitiveD {

  static const nsIID IID = NS_ISUPPORTSPRBOOL_IID;


  alias nsISupportsPRBool InnerType;

  this(nsISupportsPRBool intr){
    super(intr);
    this.inner = intr;
  }

  nsISupportsPRBool opCast() {
    return inner;
  }

  void opAssign(nsISupportsPRBool value) {
    inner = value;
  }

  /* attribute PRBool data; */
  PRBool Data(){
    PRBool value;
    nsresult __result = inner.GetData(&value);
    CheckException(__result);
    return value;
  }
  void Data(PRBool aData){
    PRBool value;
    nsresult __result = inner.SetData(value);
    CheckException(__result);
  }

  /* string toString (); */
  char* ToString(){
    char* _retval;
    nsresult __result = inner.ToString(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISupportsPRBool inner;

}


/* starting wrapper class:    nsISupportsPRUint8 */
/**
 * Scriptable storage for 8-bit integers
 * 
 * @status FROZEN
 */
class nsISupportsPRUint8D : public nsISupportsPrimitiveD {

  static const nsIID IID = NS_ISUPPORTSPRUINT8_IID;


  alias nsISupportsPRUint8 InnerType;

  this(nsISupportsPRUint8 intr){
    super(intr);
    this.inner = intr;
  }

  nsISupportsPRUint8 opCast() {
    return inner;
  }

  void opAssign(nsISupportsPRUint8 value) {
    inner = value;
  }

  /* attribute PRUint8 data; */
  PRUint8 Data(){
    PRUint8 value;
    nsresult __result = inner.GetData(&value);
    CheckException(__result);
    return value;
  }
  void Data(PRUint8 aData){
    PRUint8 value;
    nsresult __result = inner.SetData(value);
    CheckException(__result);
  }

  /* string toString (); */
  char* ToString(){
    char* _retval;
    nsresult __result = inner.ToString(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISupportsPRUint8 inner;

}


/* starting wrapper class:    nsISupportsPRUint16 */
/**
 * Scriptable storage for unsigned 16-bit integers
 * 
 * @status FROZEN
 */
class nsISupportsPRUint16D : public nsISupportsPrimitiveD {

  static const nsIID IID = NS_ISUPPORTSPRUINT16_IID;


  alias nsISupportsPRUint16 InnerType;

  this(nsISupportsPRUint16 intr){
    super(intr);
    this.inner = intr;
  }

  nsISupportsPRUint16 opCast() {
    return inner;
  }

  void opAssign(nsISupportsPRUint16 value) {
    inner = value;
  }

  /* attribute PRUint16 data; */
  PRUint16 Data(){
    PRUint16 value;
    nsresult __result = inner.GetData(&value);
    CheckException(__result);
    return value;
  }
  void Data(PRUint16 aData){
    PRUint16 value;
    nsresult __result = inner.SetData(value);
    CheckException(__result);
  }

  /* string toString (); */
  char* ToString(){
    char* _retval;
    nsresult __result = inner.ToString(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISupportsPRUint16 inner;

}


/* starting wrapper class:    nsISupportsPRUint32 */
/**
 * Scriptable storage for unsigned 32-bit integers
 * 
 * @status FROZEN
 */
class nsISupportsPRUint32D : public nsISupportsPrimitiveD {

  static const nsIID IID = NS_ISUPPORTSPRUINT32_IID;


  alias nsISupportsPRUint32 InnerType;

  this(nsISupportsPRUint32 intr){
    super(intr);
    this.inner = intr;
  }

  nsISupportsPRUint32 opCast() {
    return inner;
  }

  void opAssign(nsISupportsPRUint32 value) {
    inner = value;
  }

  /* attribute PRUint32 data; */
  PRUint32 Data(){
    PRUint32 value;
    nsresult __result = inner.GetData(&value);
    CheckException(__result);
    return value;
  }
  void Data(PRUint32 aData){
    PRUint32 value;
    nsresult __result = inner.SetData(value);
    CheckException(__result);
  }

  /* string toString (); */
  char* ToString(){
    char* _retval;
    nsresult __result = inner.ToString(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISupportsPRUint32 inner;

}


/* starting wrapper class:    nsISupportsPRUint64 */
/**
 * Scriptable storage for 64-bit integers
 * 
 * @status FROZEN
 */
class nsISupportsPRUint64D : public nsISupportsPrimitiveD {

  static const nsIID IID = NS_ISUPPORTSPRUINT64_IID;


  alias nsISupportsPRUint64 InnerType;

  this(nsISupportsPRUint64 intr){
    super(intr);
    this.inner = intr;
  }

  nsISupportsPRUint64 opCast() {
    return inner;
  }

  void opAssign(nsISupportsPRUint64 value) {
    inner = value;
  }

  /* attribute PRUint64 data; */
  PRUint64 Data(){
    PRUint64 value;
    nsresult __result = inner.GetData(&value);
    CheckException(__result);
    return value;
  }
  void Data(PRUint64 aData){
    PRUint64 value;
    nsresult __result = inner.SetData(value);
    CheckException(__result);
  }

  /* string toString (); */
  char* ToString(){
    char* _retval;
    nsresult __result = inner.ToString(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISupportsPRUint64 inner;

}


/* starting wrapper class:    nsISupportsPRTime */
/**
 * Scriptable storage for NSPR date/time values
 * 
 * @status FROZEN
 */
class nsISupportsPRTimeD : public nsISupportsPrimitiveD {

  static const nsIID IID = NS_ISUPPORTSPRTIME_IID;


  alias nsISupportsPRTime InnerType;

  this(nsISupportsPRTime intr){
    super(intr);
    this.inner = intr;
  }

  nsISupportsPRTime opCast() {
    return inner;
  }

  void opAssign(nsISupportsPRTime value) {
    inner = value;
  }

  /* attribute PRTime data; */
  PRTime Data(){
    PRTime value;
    nsresult __result = inner.GetData(&value);
    CheckException(__result);
    return value;
  }
  void Data(PRTime aData){
    PRTime value;
    nsresult __result = inner.SetData(value);
    CheckException(__result);
  }

  /* string toString (); */
  char* ToString(){
    char* _retval;
    nsresult __result = inner.ToString(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISupportsPRTime inner;

}


/* starting wrapper class:    nsISupportsChar */
/**
 * Scriptable storage for single character values
 * (often used to store an ASCII character)
 * 
 * @status FROZEN
 */
class nsISupportsCharD : public nsISupportsPrimitiveD {

  static const nsIID IID = NS_ISUPPORTSCHAR_IID;


  alias nsISupportsChar InnerType;

  this(nsISupportsChar intr){
    super(intr);
    this.inner = intr;
  }

  nsISupportsChar opCast() {
    return inner;
  }

  void opAssign(nsISupportsChar value) {
    inner = value;
  }

  /* attribute char data; */
  char Data(){
    char value;
    nsresult __result = inner.GetData(&value);
    CheckException(__result);
    return value;
  }
  void Data(char aData){
    nsresult __result = inner.SetData(aData);
    CheckException(__result);
  }

  /* string toString (); */
  char* ToString(){
    char* _retval;
    nsresult __result = inner.ToString(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISupportsChar inner;

}


/* starting wrapper class:    nsISupportsPRInt16 */
/**
 * Scriptable storage for 16-bit integers
 * 
 * @status FROZEN
 */
class nsISupportsPRInt16D : public nsISupportsPrimitiveD {

  static const nsIID IID = NS_ISUPPORTSPRINT16_IID;


  alias nsISupportsPRInt16 InnerType;

  this(nsISupportsPRInt16 intr){
    super(intr);
    this.inner = intr;
  }

  nsISupportsPRInt16 opCast() {
    return inner;
  }

  void opAssign(nsISupportsPRInt16 value) {
    inner = value;
  }

  /* attribute PRInt16 data; */
  PRInt16 Data(){
    PRInt16 value;
    nsresult __result = inner.GetData(&value);
    CheckException(__result);
    return value;
  }
  void Data(PRInt16 aData){
    PRInt16 value;
    nsresult __result = inner.SetData(value);
    CheckException(__result);
  }

  /* string toString (); */
  char* ToString(){
    char* _retval;
    nsresult __result = inner.ToString(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISupportsPRInt16 inner;

}


/* starting wrapper class:    nsISupportsPRInt32 */
/**
 * Scriptable storage for 32-bit integers
 * 
 * @status FROZEN
 */
class nsISupportsPRInt32D : public nsISupportsPrimitiveD {

  static const nsIID IID = NS_ISUPPORTSPRINT32_IID;


  alias nsISupportsPRInt32 InnerType;

  this(nsISupportsPRInt32 intr){
    super(intr);
    this.inner = intr;
  }

  nsISupportsPRInt32 opCast() {
    return inner;
  }

  void opAssign(nsISupportsPRInt32 value) {
    inner = value;
  }

  /* attribute PRInt32 data; */
  PRInt32 Data(){
    PRInt32 value;
    nsresult __result = inner.GetData(&value);
    CheckException(__result);
    return value;
  }
  void Data(PRInt32 aData){
    PRInt32 value;
    nsresult __result = inner.SetData(value);
    CheckException(__result);
  }

  /* string toString (); */
  char* ToString(){
    char* _retval;
    nsresult __result = inner.ToString(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISupportsPRInt32 inner;

}


/* starting wrapper class:    nsISupportsPRInt64 */
/**
 * Scriptable storage for 64-bit integers
 * 
 * @status FROZEN
 */
class nsISupportsPRInt64D : public nsISupportsPrimitiveD {

  static const nsIID IID = NS_ISUPPORTSPRINT64_IID;


  alias nsISupportsPRInt64 InnerType;

  this(nsISupportsPRInt64 intr){
    super(intr);
    this.inner = intr;
  }

  nsISupportsPRInt64 opCast() {
    return inner;
  }

  void opAssign(nsISupportsPRInt64 value) {
    inner = value;
  }

  /* attribute PRInt64 data; */
  PRInt64 Data(){
    PRInt64 value;
    nsresult __result = inner.GetData(&value);
    CheckException(__result);
    return value;
  }
  void Data(PRInt64 aData){
    PRInt64 value;
    nsresult __result = inner.SetData(value);
    CheckException(__result);
  }

  /* string toString (); */
  char* ToString(){
    char* _retval;
    nsresult __result = inner.ToString(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISupportsPRInt64 inner;

}


/* starting wrapper class:    nsISupportsFloat */
/**
 * Scriptable storage for floating point numbers
 * 
 * @status FROZEN
 */
class nsISupportsFloatD : public nsISupportsPrimitiveD {

  static const nsIID IID = NS_ISUPPORTSFLOAT_IID;


  alias nsISupportsFloat InnerType;

  this(nsISupportsFloat intr){
    super(intr);
    this.inner = intr;
  }

  nsISupportsFloat opCast() {
    return inner;
  }

  void opAssign(nsISupportsFloat value) {
    inner = value;
  }

  /* attribute float data; */
  float Data(){
    float value;
    nsresult __result = inner.GetData(&value);
    CheckException(__result);
    return value;
  }
  void Data(float aData){
    nsresult __result = inner.SetData(aData);
    CheckException(__result);
  }

  /* string toString (); */
  char* ToString(){
    char* _retval;
    nsresult __result = inner.ToString(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISupportsFloat inner;

}


/* starting wrapper class:    nsISupportsDouble */
/**
 * Scriptable storage for doubles
 * 
 * @status FROZEN
 */
class nsISupportsDoubleD : public nsISupportsPrimitiveD {

  static const nsIID IID = NS_ISUPPORTSDOUBLE_IID;


  alias nsISupportsDouble InnerType;

  this(nsISupportsDouble intr){
    super(intr);
    this.inner = intr;
  }

  nsISupportsDouble opCast() {
    return inner;
  }

  void opAssign(nsISupportsDouble value) {
    inner = value;
  }

  /* attribute double data; */
  double Data(){
    double value;
    nsresult __result = inner.GetData(&value);
    CheckException(__result);
    return value;
  }
  void Data(double aData){
    nsresult __result = inner.SetData(aData);
    CheckException(__result);
  }

  /* string toString (); */
  char* ToString(){
    char* _retval;
    nsresult __result = inner.ToString(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISupportsDouble inner;

}


/* starting wrapper class:    nsISupportsVoid */
/**
 * Scriptable storage for generic pointers
 * 
 * @status FROZEN
 */
class nsISupportsVoidD : public nsISupportsPrimitiveD {

  static const nsIID IID = NS_ISUPPORTSVOID_IID;


  alias nsISupportsVoid InnerType;

  this(nsISupportsVoid intr){
    super(intr);
    this.inner = intr;
  }

  nsISupportsVoid opCast() {
    return inner;
  }

  void opAssign(nsISupportsVoid value) {
    inner = value;
  }

  /* [noscript] attribute voidPtr data; */
  void * Data(){
    void * value;
    nsresult __result = inner.GetData(&value);
    CheckException(__result);
    return value;
  }
  void Data(void * aData){
    nsresult __result = inner.SetData(aData);
    CheckException(__result);
  }

  /* string toString (); */
  char* ToString(){
    char* _retval;
    nsresult __result = inner.ToString(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISupportsVoid inner;

}


/* starting wrapper class:    nsISupportsInterfacePointer */
/**
 * Scriptable storage for other XPCOM objects
 * 
 * @status FROZEN
 */
class nsISupportsInterfacePointerD : public nsISupportsPrimitiveD {

  static const nsIID IID = NS_ISUPPORTSINTERFACEPOINTER_IID;


  alias nsISupportsInterfacePointer InnerType;

  this(nsISupportsInterfacePointer intr){
    super(intr);
    this.inner = intr;
  }

  nsISupportsInterfacePointer opCast() {
    return inner;
  }

  void opAssign(nsISupportsInterfacePointer value) {
    inner = value;
  }

  /* attribute nsISupports data; */
  nsISupportsD  Data(){
    nsISupports value;
    nsresult __result = inner.GetData(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }
  void Data(nsISupportsD  aData){
    nsISupports value;
    nsresult __result = inner.SetData(value);
    CheckException(__result);
  }

  /* attribute nsIDPtr dataIID; */
  nsID * DataIID(){
    nsID * value;
    nsresult __result = inner.GetDataIID(&value);
    CheckException(__result);
    return value;
  }
  void DataIID(nsID * aDataIID){
    nsresult __result = inner.SetDataIID(aDataIID);
    CheckException(__result);
  }

  /* string toString (); */
  char* ToString(){
    char* _retval;
    nsresult __result = inner.ToString(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISupportsInterfacePointer inner;

}

