/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISupportsPrimitives.idl
 */

module mozilla.xpcom.nsISupportsPrimitives;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsISupportsPrimitive */
const char[] NS_ISUPPORTSPRIMITIVE_IID_STR = "d0d4b136-1dd1-11b2-9371-f0727ef827c0";

const nsIID NS_ISUPPORTSPRIMITIVE_IID= 
  {0xd0d4b136, 0x1dd1, 0x11b2, 
    [ 0x93, 0x71, 0xf0, 0x72, 0x7e, 0xf8, 0x27, 0xc0 ]};

/**
 * Primitive base interface.
 *
 * These first three are pointer types and do data copying
 * using the nsIMemory. Be careful!
 *
 * @status FROZEN
 */
extern(Windows)
interface nsISupportsPrimitive : nsISupports {
  static const char[] IID_STR = NS_ISUPPORTSPRIMITIVE_IID_STR;
  static const nsIID IID = NS_ISUPPORTSPRIMITIVE_IID;

  enum { TYPE_ID = 1U };

  enum { TYPE_CSTRING = 2U };

  enum { TYPE_STRING = 3U };

  enum { TYPE_PRBOOL = 4U };

  enum { TYPE_PRUINT8 = 5U };

  enum { TYPE_PRUINT16 = 6U };

  enum { TYPE_PRUINT32 = 7U };

  enum { TYPE_PRUINT64 = 8U };

  enum { TYPE_PRTIME = 9U };

  enum { TYPE_CHAR = 10U };

  enum { TYPE_PRINT16 = 11U };

  enum { TYPE_PRINT32 = 12U };

  enum { TYPE_PRINT64 = 13U };

  enum { TYPE_FLOAT = 14U };

  enum { TYPE_DOUBLE = 15U };

  enum { TYPE_VOID = 16U };

  enum { TYPE_INTERFACE_POINTER = 17U };

  /* readonly attribute unsigned short type; */
  nsresult GetType(PRUint16 *aType);

}


/* starting interface:    nsISupportsID */
const char[] NS_ISUPPORTSID_IID_STR = "d18290a0-4a1c-11d3-9890-006008962422";

const nsIID NS_ISUPPORTSID_IID= 
  {0xd18290a0, 0x4a1c, 0x11d3, 
    [ 0x98, 0x90, 0x00, 0x60, 0x08, 0x96, 0x24, 0x22 ]};

/**
 * Scriptable storage for nsID structures
 *
 * @status FROZEN
 */
extern(Windows)
interface nsISupportsID : nsISupportsPrimitive {
  static const char[] IID_STR = NS_ISUPPORTSID_IID_STR;
  static const nsIID IID = NS_ISUPPORTSID_IID;

  /* attribute nsIDPtr data; */
  nsresult GetData(nsID * *aData);
  nsresult SetData(nsID * aData);

  /* string toString (); */
  nsresult ToString(char **_retval);

}


/* starting interface:    nsISupportsCString */
const char[] NS_ISUPPORTSCSTRING_IID_STR = "d65ff270-4a1c-11d3-9890-006008962422";

const nsIID NS_ISUPPORTSCSTRING_IID= 
  {0xd65ff270, 0x4a1c, 0x11d3, 
    [ 0x98, 0x90, 0x00, 0x60, 0x08, 0x96, 0x24, 0x22 ]};

/**
 * Scriptable storage for ASCII strings
 * 
 * @status FROZEN
 */
extern(Windows)
interface nsISupportsCString : nsISupportsPrimitive {
  static const char[] IID_STR = NS_ISUPPORTSCSTRING_IID_STR;
  static const nsIID IID = NS_ISUPPORTSCSTRING_IID;

  /* attribute ACString data; */
  nsresult GetData(nsACString * aData);
  nsresult SetData(nsACString * aData);

  /* string toString (); */
  nsresult ToString(char **_retval);

}


/* starting interface:    nsISupportsString */
const char[] NS_ISUPPORTSSTRING_IID_STR = "d79dc970-4a1c-11d3-9890-006008962422";

const nsIID NS_ISUPPORTSSTRING_IID= 
  {0xd79dc970, 0x4a1c, 0x11d3, 
    [ 0x98, 0x90, 0x00, 0x60, 0x08, 0x96, 0x24, 0x22 ]};

/**
 * Scriptable storage for Unicode strings
 * 
 * @status FROZEN
 */
extern(Windows)
interface nsISupportsString : nsISupportsPrimitive {
  static const char[] IID_STR = NS_ISUPPORTSSTRING_IID_STR;
  static const nsIID IID = NS_ISUPPORTSSTRING_IID;

  /* attribute AString data; */
  nsresult GetData(nsAString * aData);
  nsresult SetData(nsAString * aData);

  /* wstring toString (); */
  nsresult ToString(PRUnichar **_retval);

}


/* starting interface:    nsISupportsPRBool */
const char[] NS_ISUPPORTSPRBOOL_IID_STR = "ddc3b490-4a1c-11d3-9890-006008962422";

const nsIID NS_ISUPPORTSPRBOOL_IID= 
  {0xddc3b490, 0x4a1c, 0x11d3, 
    [ 0x98, 0x90, 0x00, 0x60, 0x08, 0x96, 0x24, 0x22 ]};

/**
 * The rest are truly primitive and are passed by value
 */
/**
 * Scriptable storage for booleans
 * 
 * @status FROZEN
 */
extern(Windows)
interface nsISupportsPRBool : nsISupportsPrimitive {
  static const char[] IID_STR = NS_ISUPPORTSPRBOOL_IID_STR;
  static const nsIID IID = NS_ISUPPORTSPRBOOL_IID;

  /* attribute PRBool data; */
  nsresult GetData(PRBool *aData);
  nsresult SetData(PRBool aData);

  /* string toString (); */
  nsresult ToString(char **_retval);

}


/* starting interface:    nsISupportsPRUint8 */
const char[] NS_ISUPPORTSPRUINT8_IID_STR = "dec2e4e0-4a1c-11d3-9890-006008962422";

const nsIID NS_ISUPPORTSPRUINT8_IID= 
  {0xdec2e4e0, 0x4a1c, 0x11d3, 
    [ 0x98, 0x90, 0x00, 0x60, 0x08, 0x96, 0x24, 0x22 ]};

/**
 * Scriptable storage for 8-bit integers
 * 
 * @status FROZEN
 */
extern(Windows)
interface nsISupportsPRUint8 : nsISupportsPrimitive {
  static const char[] IID_STR = NS_ISUPPORTSPRUINT8_IID_STR;
  static const nsIID IID = NS_ISUPPORTSPRUINT8_IID;

  /* attribute PRUint8 data; */
  nsresult GetData(PRUint8 *aData);
  nsresult SetData(PRUint8 aData);

  /* string toString (); */
  nsresult ToString(char **_retval);

}


/* starting interface:    nsISupportsPRUint16 */
const char[] NS_ISUPPORTSPRUINT16_IID_STR = "dfacb090-4a1c-11d3-9890-006008962422";

const nsIID NS_ISUPPORTSPRUINT16_IID= 
  {0xdfacb090, 0x4a1c, 0x11d3, 
    [ 0x98, 0x90, 0x00, 0x60, 0x08, 0x96, 0x24, 0x22 ]};

/**
 * Scriptable storage for unsigned 16-bit integers
 * 
 * @status FROZEN
 */
extern(Windows)
interface nsISupportsPRUint16 : nsISupportsPrimitive {
  static const char[] IID_STR = NS_ISUPPORTSPRUINT16_IID_STR;
  static const nsIID IID = NS_ISUPPORTSPRUINT16_IID;

  /* attribute PRUint16 data; */
  nsresult GetData(PRUint16 *aData);
  nsresult SetData(PRUint16 aData);

  /* string toString (); */
  nsresult ToString(char **_retval);

}


/* starting interface:    nsISupportsPRUint32 */
const char[] NS_ISUPPORTSPRUINT32_IID_STR = "e01dc470-4a1c-11d3-9890-006008962422";

const nsIID NS_ISUPPORTSPRUINT32_IID= 
  {0xe01dc470, 0x4a1c, 0x11d3, 
    [ 0x98, 0x90, 0x00, 0x60, 0x08, 0x96, 0x24, 0x22 ]};

/**
 * Scriptable storage for unsigned 32-bit integers
 * 
 * @status FROZEN
 */
extern(Windows)
interface nsISupportsPRUint32 : nsISupportsPrimitive {
  static const char[] IID_STR = NS_ISUPPORTSPRUINT32_IID_STR;
  static const nsIID IID = NS_ISUPPORTSPRUINT32_IID;

  /* attribute PRUint32 data; */
  nsresult GetData(PRUint32 *aData);
  nsresult SetData(PRUint32 aData);

  /* string toString (); */
  nsresult ToString(char **_retval);

}


/* starting interface:    nsISupportsPRUint64 */
const char[] NS_ISUPPORTSPRUINT64_IID_STR = "e13567c0-4a1c-11d3-9890-006008962422";

const nsIID NS_ISUPPORTSPRUINT64_IID= 
  {0xe13567c0, 0x4a1c, 0x11d3, 
    [ 0x98, 0x90, 0x00, 0x60, 0x08, 0x96, 0x24, 0x22 ]};

/**
 * Scriptable storage for 64-bit integers
 * 
 * @status FROZEN
 */
extern(Windows)
interface nsISupportsPRUint64 : nsISupportsPrimitive {
  static const char[] IID_STR = NS_ISUPPORTSPRUINT64_IID_STR;
  static const nsIID IID = NS_ISUPPORTSPRUINT64_IID;

  /* attribute PRUint64 data; */
  nsresult GetData(PRUint64 *aData);
  nsresult SetData(PRUint64 aData);

  /* string toString (); */
  nsresult ToString(char **_retval);

}


/* starting interface:    nsISupportsPRTime */
const char[] NS_ISUPPORTSPRTIME_IID_STR = "e2563630-4a1c-11d3-9890-006008962422";

const nsIID NS_ISUPPORTSPRTIME_IID= 
  {0xe2563630, 0x4a1c, 0x11d3, 
    [ 0x98, 0x90, 0x00, 0x60, 0x08, 0x96, 0x24, 0x22 ]};

/**
 * Scriptable storage for NSPR date/time values
 * 
 * @status FROZEN
 */
extern(Windows)
interface nsISupportsPRTime : nsISupportsPrimitive {
  static const char[] IID_STR = NS_ISUPPORTSPRTIME_IID_STR;
  static const nsIID IID = NS_ISUPPORTSPRTIME_IID;

  /* attribute PRTime data; */
  nsresult GetData(PRTime *aData);
  nsresult SetData(PRTime aData);

  /* string toString (); */
  nsresult ToString(char **_retval);

}


/* starting interface:    nsISupportsChar */
const char[] NS_ISUPPORTSCHAR_IID_STR = "e2b05e40-4a1c-11d3-9890-006008962422";

const nsIID NS_ISUPPORTSCHAR_IID= 
  {0xe2b05e40, 0x4a1c, 0x11d3, 
    [ 0x98, 0x90, 0x00, 0x60, 0x08, 0x96, 0x24, 0x22 ]};

/**
 * Scriptable storage for single character values
 * (often used to store an ASCII character)
 * 
 * @status FROZEN
 */
extern(Windows)
interface nsISupportsChar : nsISupportsPrimitive {
  static const char[] IID_STR = NS_ISUPPORTSCHAR_IID_STR;
  static const nsIID IID = NS_ISUPPORTSCHAR_IID;

  /* attribute char data; */
  nsresult GetData(char *aData);
  nsresult SetData(char aData);

  /* string toString (); */
  nsresult ToString(char **_retval);

}


/* starting interface:    nsISupportsPRInt16 */
const char[] NS_ISUPPORTSPRINT16_IID_STR = "e30d94b0-4a1c-11d3-9890-006008962422";

const nsIID NS_ISUPPORTSPRINT16_IID= 
  {0xe30d94b0, 0x4a1c, 0x11d3, 
    [ 0x98, 0x90, 0x00, 0x60, 0x08, 0x96, 0x24, 0x22 ]};

/**
 * Scriptable storage for 16-bit integers
 * 
 * @status FROZEN
 */
extern(Windows)
interface nsISupportsPRInt16 : nsISupportsPrimitive {
  static const char[] IID_STR = NS_ISUPPORTSPRINT16_IID_STR;
  static const nsIID IID = NS_ISUPPORTSPRINT16_IID;

  /* attribute PRInt16 data; */
  nsresult GetData(PRInt16 *aData);
  nsresult SetData(PRInt16 aData);

  /* string toString (); */
  nsresult ToString(char **_retval);

}


/* starting interface:    nsISupportsPRInt32 */
const char[] NS_ISUPPORTSPRINT32_IID_STR = "e36c5250-4a1c-11d3-9890-006008962422";

const nsIID NS_ISUPPORTSPRINT32_IID= 
  {0xe36c5250, 0x4a1c, 0x11d3, 
    [ 0x98, 0x90, 0x00, 0x60, 0x08, 0x96, 0x24, 0x22 ]};

/**
 * Scriptable storage for 32-bit integers
 * 
 * @status FROZEN
 */
extern(Windows)
interface nsISupportsPRInt32 : nsISupportsPrimitive {
  static const char[] IID_STR = NS_ISUPPORTSPRINT32_IID_STR;
  static const nsIID IID = NS_ISUPPORTSPRINT32_IID;

  /* attribute PRInt32 data; */
  nsresult GetData(PRInt32 *aData);
  nsresult SetData(PRInt32 aData);

  /* string toString (); */
  nsresult ToString(char **_retval);

}


/* starting interface:    nsISupportsPRInt64 */
const char[] NS_ISUPPORTSPRINT64_IID_STR = "e3cb0ff0-4a1c-11d3-9890-006008962422";

const nsIID NS_ISUPPORTSPRINT64_IID= 
  {0xe3cb0ff0, 0x4a1c, 0x11d3, 
    [ 0x98, 0x90, 0x00, 0x60, 0x08, 0x96, 0x24, 0x22 ]};

/**
 * Scriptable storage for 64-bit integers
 * 
 * @status FROZEN
 */
extern(Windows)
interface nsISupportsPRInt64 : nsISupportsPrimitive {
  static const char[] IID_STR = NS_ISUPPORTSPRINT64_IID_STR;
  static const nsIID IID = NS_ISUPPORTSPRINT64_IID;

  /* attribute PRInt64 data; */
  nsresult GetData(PRInt64 *aData);
  nsresult SetData(PRInt64 aData);

  /* string toString (); */
  nsresult ToString(char **_retval);

}


/* starting interface:    nsISupportsFloat */
const char[] NS_ISUPPORTSFLOAT_IID_STR = "abeaa390-4ac0-11d3-baea-00805f8a5dd7";

const nsIID NS_ISUPPORTSFLOAT_IID= 
  {0xabeaa390, 0x4ac0, 0x11d3, 
    [ 0xba, 0xea, 0x00, 0x80, 0x5f, 0x8a, 0x5d, 0xd7 ]};

/**
 * Scriptable storage for floating point numbers
 * 
 * @status FROZEN
 */
extern(Windows)
interface nsISupportsFloat : nsISupportsPrimitive {
  static const char[] IID_STR = NS_ISUPPORTSFLOAT_IID_STR;
  static const nsIID IID = NS_ISUPPORTSFLOAT_IID;

  /* attribute float data; */
  nsresult GetData(float *aData);
  nsresult SetData(float aData);

  /* string toString (); */
  nsresult ToString(char **_retval);

}


/* starting interface:    nsISupportsDouble */
const char[] NS_ISUPPORTSDOUBLE_IID_STR = "b32523a0-4ac0-11d3-baea-00805f8a5dd7";

const nsIID NS_ISUPPORTSDOUBLE_IID= 
  {0xb32523a0, 0x4ac0, 0x11d3, 
    [ 0xba, 0xea, 0x00, 0x80, 0x5f, 0x8a, 0x5d, 0xd7 ]};

/**
 * Scriptable storage for doubles
 * 
 * @status FROZEN
 */
extern(Windows)
interface nsISupportsDouble : nsISupportsPrimitive {
  static const char[] IID_STR = NS_ISUPPORTSDOUBLE_IID_STR;
  static const nsIID IID = NS_ISUPPORTSDOUBLE_IID;

  /* attribute double data; */
  nsresult GetData(double *aData);
  nsresult SetData(double aData);

  /* string toString (); */
  nsresult ToString(char **_retval);

}


/* starting interface:    nsISupportsVoid */
const char[] NS_ISUPPORTSVOID_IID_STR = "464484f0-568d-11d3-baf8-00805f8a5dd7";

const nsIID NS_ISUPPORTSVOID_IID= 
  {0x464484f0, 0x568d, 0x11d3, 
    [ 0xba, 0xf8, 0x00, 0x80, 0x5f, 0x8a, 0x5d, 0xd7 ]};

/**
 * Scriptable storage for generic pointers
 * 
 * @status FROZEN
 */
extern(Windows)
interface nsISupportsVoid : nsISupportsPrimitive {
  static const char[] IID_STR = NS_ISUPPORTSVOID_IID_STR;
  static const nsIID IID = NS_ISUPPORTSVOID_IID;

  /* [noscript] attribute voidPtr data; */
  nsresult GetData(void * *aData);
  nsresult SetData(void * aData);

  /* string toString (); */
  nsresult ToString(char **_retval);

}


/* starting interface:    nsISupportsInterfacePointer */
const char[] NS_ISUPPORTSINTERFACEPOINTER_IID_STR = "995ea724-1dd1-11b2-9211-c21bdd3e7ed0";

const nsIID NS_ISUPPORTSINTERFACEPOINTER_IID= 
  {0x995ea724, 0x1dd1, 0x11b2, 
    [ 0x92, 0x11, 0xc2, 0x1b, 0xdd, 0x3e, 0x7e, 0xd0 ]};

/**
 * Scriptable storage for other XPCOM objects
 * 
 * @status FROZEN
 */
extern(Windows)
interface nsISupportsInterfacePointer : nsISupportsPrimitive {
  static const char[] IID_STR = NS_ISUPPORTSINTERFACEPOINTER_IID_STR;
  static const nsIID IID = NS_ISUPPORTSINTERFACEPOINTER_IID;

  /* attribute nsISupports data; */
  nsresult GetData(nsISupports  *aData);
  nsresult SetData(nsISupports  aData);

  /* attribute nsIDPtr dataIID; */
  nsresult GetDataIID(nsID * *aDataIID);
  nsresult SetDataIID(nsID * aDataIID);

  /* string toString (); */
  nsresult ToString(char **_retval);

}

