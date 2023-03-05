/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIVariant.idl
 */

module mozilla.xpcom.nsIVariant;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIDataType */
const char[] NS_IDATATYPE_IID_STR = "4d12e540-83d7-11d5-90ed-0010a4e73d9a";

const nsIID NS_IDATATYPE_IID= 
  {0x4d12e540, 0x83d7, 0x11d5, 
    [ 0x90, 0xed, 0x00, 0x10, 0xa4, 0xe7, 0x3d, 0x9a ]};

extern(Windows)
interface nsIDataType : nsISupports {
  static const char[] IID_STR = NS_IDATATYPE_IID_STR;
  static const nsIID IID = NS_IDATATYPE_IID;

  enum { VTYPE_INT8 = 0U };

  enum { VTYPE_INT16 = 1U };

  enum { VTYPE_INT32 = 2U };

  enum { VTYPE_INT64 = 3U };

  enum { VTYPE_UINT8 = 4U };

  enum { VTYPE_UINT16 = 5U };

  enum { VTYPE_UINT32 = 6U };

  enum { VTYPE_UINT64 = 7U };

  enum { VTYPE_FLOAT = 8U };

  enum { VTYPE_DOUBLE = 9U };

  enum { VTYPE_BOOL = 10U };

  enum { VTYPE_CHAR = 11U };

  enum { VTYPE_WCHAR = 12U };

  enum { VTYPE_VOID = 13U };

  enum { VTYPE_ID = 14U };

  enum { VTYPE_DOMSTRING = 15U };

  enum { VTYPE_CHAR_STR = 16U };

  enum { VTYPE_WCHAR_STR = 17U };

  enum { VTYPE_INTERFACE = 18U };

  enum { VTYPE_INTERFACE_IS = 19U };

  enum { VTYPE_ARRAY = 20U };

  enum { VTYPE_STRING_SIZE_IS = 21U };

  enum { VTYPE_WSTRING_SIZE_IS = 22U };

  enum { VTYPE_UTF8STRING = 23U };

  enum { VTYPE_CSTRING = 24U };

  enum { VTYPE_ASTRING = 25U };

  enum { VTYPE_EMPTY_ARRAY = 254U };

  enum { VTYPE_EMPTY = 255U };

}


/* starting interface:    nsIVariant */
const char[] NS_IVARIANT_IID_STR = "6c9eb060-8c6a-11d5-90f3-0010a4e73d9a";

const nsIID NS_IVARIANT_IID= 
  {0x6c9eb060, 0x8c6a, 0x11d5, 
    [ 0x90, 0xf3, 0x00, 0x10, 0xa4, 0xe7, 0x3d, 0x9a ]};

/**
 * XPConnect has magic to transparently convert between nsIVariant and JS types.
 * We mark the interface [scriptable] so that JS can use methods
 * that refer to this interface. But we mark all the methods and attributes
 * [noscript] since any nsIVariant object will be automatically converted to a
 * JS type anyway.
 */
extern(Windows)
interface nsIVariant : nsISupports {
  static const char[] IID_STR = NS_IVARIANT_IID_STR;
  static const nsIID IID = NS_IVARIANT_IID;

  /* [noscript] readonly attribute PRUint16 dataType; */
  nsresult GetDataType(PRUint16 *aDataType);

  /* [noscript] PRUint8 getAsInt8 (); */
  nsresult GetAsInt8(PRUint8 *_retval);

  /* [noscript] PRInt16 getAsInt16 (); */
  nsresult GetAsInt16(PRInt16 *_retval);

  /* [noscript] PRInt32 getAsInt32 (); */
  nsresult GetAsInt32(PRInt32 *_retval);

  /* [noscript] PRInt64 getAsInt64 (); */
  nsresult GetAsInt64(PRInt64 *_retval);

  /* [noscript] PRUint8 getAsUint8 (); */
  nsresult GetAsUint8(PRUint8 *_retval);

  /* [noscript] PRUint16 getAsUint16 (); */
  nsresult GetAsUint16(PRUint16 *_retval);

  /* [noscript] PRUint32 getAsUint32 (); */
  nsresult GetAsUint32(PRUint32 *_retval);

  /* [noscript] PRUint64 getAsUint64 (); */
  nsresult GetAsUint64(PRUint64 *_retval);

  /* [noscript] float getAsFloat (); */
  nsresult GetAsFloat(float *_retval);

  /* [noscript] double getAsDouble (); */
  nsresult GetAsDouble(double *_retval);

  /* [noscript] PRBool getAsBool (); */
  nsresult GetAsBool(PRBool *_retval);

  /* [noscript] char getAsChar (); */
  nsresult GetAsChar(char *_retval);

  /* [noscript] wchar getAsWChar (); */
  nsresult GetAsWChar(PRUnichar *_retval);

  /* [notxpcom] nsresult getAsID (out nsID retval); */
  nsresult GetAsID(nsID *retval);

  /* [noscript] AString getAsAString (); */
  nsresult GetAsAString(nsAString * _retval);

  /* [noscript] DOMString getAsDOMString (); */
  nsresult GetAsDOMString(nsAString * _retval);

  /* [noscript] ACString getAsACString (); */
  nsresult GetAsACString(nsACString * _retval);

  /* [noscript] AUTF8String getAsAUTF8String (); */
  nsresult GetAsAUTF8String(nsACString * _retval);

  /* [noscript] string getAsString (); */
  nsresult GetAsString(char **_retval);

  /* [noscript] wstring getAsWString (); */
  nsresult GetAsWString(PRUnichar **_retval);

  /* [noscript] nsISupports getAsISupports (); */
  nsresult GetAsISupports(nsISupports *_retval);

  /* [noscript] void getAsInterface (out nsIIDPtr iid, [iid_is (iid), retval] out nsQIResult iface); */
  nsresult GetAsInterface(nsIID * *iid, void * *iface);

  /* [notxpcom] nsresult getAsArray (out PRUint16 type, out nsIID iid, out PRUint32 count, out voidPtr ptr); */
  nsresult GetAsArray(PRUint16 *type, nsIID *iid, PRUint32 *count, void * *ptr);

  /* [noscript] void getAsStringWithSize (out PRUint32 size, [size_is (size), retval] out string str); */
  nsresult GetAsStringWithSize(PRUint32 *size, char **str);

  /* [noscript] void getAsWStringWithSize (out PRUint32 size, [size_is (size), retval] out wstring str); */
  nsresult GetAsWStringWithSize(PRUint32 *size, PRUnichar **str);

}


/* starting interface:    nsIWritableVariant */
const char[] NS_IWRITABLEVARIANT_IID_STR = "5586a590-8c82-11d5-90f3-0010a4e73d9a";

const nsIID NS_IWRITABLEVARIANT_IID= 
  {0x5586a590, 0x8c82, 0x11d5, 
    [ 0x90, 0xf3, 0x00, 0x10, 0xa4, 0xe7, 0x3d, 0x9a ]};

/**
 * An object that implements nsIVariant may or may NOT also implement this
 * nsIWritableVariant.
 * 
 * If the 'writable' attribute is false then attempts to call any of the 'set'
 * methods can be expected to fail. Setting the 'writable' attribute may or
 * may not succeed.
 *
 */
extern(Windows)
interface nsIWritableVariant : nsIVariant {
  static const char[] IID_STR = NS_IWRITABLEVARIANT_IID_STR;
  static const nsIID IID = NS_IWRITABLEVARIANT_IID;

  /* attribute PRBool writable; */
  nsresult GetWritable(PRBool *aWritable);
  nsresult SetWritable(PRBool aWritable);

  /* void setAsInt8 (in PRUint8 aValue); */
  nsresult SetAsInt8(PRUint8 aValue);

  /* void setAsInt16 (in PRInt16 aValue); */
  nsresult SetAsInt16(PRInt16 aValue);

  /* void setAsInt32 (in PRInt32 aValue); */
  nsresult SetAsInt32(PRInt32 aValue);

  /* void setAsInt64 (in PRInt64 aValue); */
  nsresult SetAsInt64(PRInt64 aValue);

  /* void setAsUint8 (in PRUint8 aValue); */
  nsresult SetAsUint8(PRUint8 aValue);

  /* void setAsUint16 (in PRUint16 aValue); */
  nsresult SetAsUint16(PRUint16 aValue);

  /* void setAsUint32 (in PRUint32 aValue); */
  nsresult SetAsUint32(PRUint32 aValue);

  /* void setAsUint64 (in PRUint64 aValue); */
  nsresult SetAsUint64(PRUint64 aValue);

  /* void setAsFloat (in float aValue); */
  nsresult SetAsFloat(float aValue);

  /* void setAsDouble (in double aValue); */
  nsresult SetAsDouble(double aValue);

  /* void setAsBool (in PRBool aValue); */
  nsresult SetAsBool(PRBool aValue);

  /* void setAsChar (in char aValue); */
  nsresult SetAsChar(char aValue);

  /* void setAsWChar (in wchar aValue); */
  nsresult SetAsWChar(PRUnichar aValue);

  /* void setAsID (in nsIDRef aValue); */
  nsresult SetAsID(nsID * aValue);

  /* void setAsAString (in AString aValue); */
  nsresult SetAsAString(nsAString * aValue);

  /* void setAsDOMString (in DOMString aValue); */
  nsresult SetAsDOMString(nsAString * aValue);

  /* void setAsACString (in ACString aValue); */
  nsresult SetAsACString(nsACString * aValue);

  /* void setAsAUTF8String (in AUTF8String aValue); */
  nsresult SetAsAUTF8String(nsACString * aValue);

  /* void setAsString (in string aValue); */
  nsresult SetAsString(char *aValue);

  /* void setAsWString (in wstring aValue); */
  nsresult SetAsWString(PRUnichar *aValue);

  /* void setAsISupports (in nsISupports aValue); */
  nsresult SetAsISupports(nsISupports aValue);

  /* void setAsInterface (in nsIIDRef iid, [iid_is (iid)] in nsQIResult iface); */
  nsresult SetAsInterface(nsIID * iid, void * iface);

  /* [noscript] void setAsArray (in PRUint16 type, in nsIIDPtr iid, in PRUint32 count, in voidPtr ptr); */
  nsresult SetAsArray(PRUint16 type, nsIID * iid, PRUint32 count, void * ptr);

  /* void setAsStringWithSize (in PRUint32 size, [size_is (size)] in string str); */
  nsresult SetAsStringWithSize(PRUint32 size, char *str);

  /* void setAsWStringWithSize (in PRUint32 size, [size_is (size)] in wstring str); */
  nsresult SetAsWStringWithSize(PRUint32 size, PRUnichar *str);

  /* void setAsVoid (); */
  nsresult SetAsVoid();

  /* void setAsEmpty (); */
  nsresult SetAsEmpty();

  /* void setAsEmptyArray (); */
  nsresult SetAsEmptyArray();

  /* void setFromVariant (in nsIVariant aValue); */
  nsresult SetFromVariant(nsIVariant aValue);

}

