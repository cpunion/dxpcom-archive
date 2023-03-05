/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozIStorageValueArray.idl
 */

module mozilla.xpcom.mozIStorageValueArray;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    mozIStorageValueArray */
const char[] MOZISTORAGEVALUEARRAY_IID_STR = "07b5b93e-113c-4150-863c-d247b003a55d";

const nsIID MOZISTORAGEVALUEARRAY_IID= 
  {0x07b5b93e, 0x113c, 0x4150, 
    [ 0x86, 0x3c, 0xd2, 0x47, 0xb0, 0x03, 0xa5, 0x5d ]};

/**
 * mozIStorageValueArray wraps an array of SQL values,
 * such as a single database row.
 */
extern(Windows)
interface mozIStorageValueArray : nsISupports {
  static const char[] IID_STR = MOZISTORAGEVALUEARRAY_IID_STR;
  static const nsIID IID = MOZISTORAGEVALUEARRAY_IID;

  /**
   * These type values are returned by getTypeOfIndex
   * to indicate what type of value is present at
   * a given column.
   */
  enum { VALUE_TYPE_NULL = 0 };

  enum { VALUE_TYPE_INTEGER = 1 };

  enum { VALUE_TYPE_FLOAT = 2 };

  enum { VALUE_TYPE_TEXT = 3 };

  enum { VALUE_TYPE_BLOB = 4 };

  /**
   * numEntries
   *
   * number of entries in the array (each corresponding to a column
   * in the database row)
   */
  /* readonly attribute unsigned long numEntries; */
  nsresult GetNumEntries(PRUint32 *aNumEntries);

  /**
   * Returns the type of the value at the given column index;
   * one of VALUE_TYPE_NULL, VALUE_TYPE_INTEGER, VALUE_TYPE_FLOAT,
   * VALUE_TYPE_TEXT, VALUE_TYPE_BLOB.
   */
  /* long getTypeOfIndex (in unsigned long aIndex); */
  nsresult GetTypeOfIndex(PRUint32 aIndex, PRInt32 *_retval);

  /**
   * Obtain a value for the given entry (column) index.
   * Due to SQLite's type conversion rules, any of these are valid
   * for any column regardless of the column's data type.  However,
   * if the specific type matters, getTypeOfIndex should be used
   * first to identify the column type, and then the appropriate
   * get method should be called.
   *
   * If you ask for a string value for a NULL column, you will get an empty
   * string with IsVoid set to distinguish it from an explicitly set empty
   * string.
   */
  /* long getInt32 (in unsigned long aIndex); */
  nsresult GetInt32(PRUint32 aIndex, PRInt32 *_retval);

  /* long long getInt64 (in unsigned long aIndex); */
  nsresult GetInt64(PRUint32 aIndex, PRInt64 *_retval);

  /* double getDouble (in unsigned long aIndex); */
  nsresult GetDouble(PRUint32 aIndex, double *_retval);

  /* AUTF8String getUTF8String (in unsigned long aIndex); */
  nsresult GetUTF8String(PRUint32 aIndex, nsACString * _retval);

  /* AString getString (in unsigned long aIndex); */
  nsresult GetString(PRUint32 aIndex, nsAString * _retval);

  /* void getBlob (in unsigned long aIndex, out unsigned long aDataSize, [array, size_is (aDataSize)] out octet aData); */
  nsresult GetBlob(PRUint32 aIndex, PRUint32 *aDataSize, PRUint8 **aData);

  /* boolean getIsNull (in unsigned long aIndex); */
  nsresult GetIsNull(PRUint32 aIndex, PRBool *_retval);

  /**
   * Returns a shared string pointer
   */
  /* [noscript] void getSharedUTF8String (in unsigned long aIndex, out unsigned long aLength, [shared, retval] out string aResult); */
  nsresult GetSharedUTF8String(PRUint32 aIndex, PRUint32 *aLength, char **aResult);

  /* [noscript] void getSharedString (in unsigned long aIndex, out unsigned long aLength, [shared, retval] out wstring aResult); */
  nsresult GetSharedString(PRUint32 aIndex, PRUint32 *aLength, PRUnichar **aResult);

  /* [noscript] void getSharedBlob (in unsigned long aIndex, out unsigned long aLength, [shared, retval] out octetPtr aResult); */
  nsresult GetSharedBlob(PRUint32 aIndex, PRUint32 *aLength, PRUint8 * *aResult);

}

