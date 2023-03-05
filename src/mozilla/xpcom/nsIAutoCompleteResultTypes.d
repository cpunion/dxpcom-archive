/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAutoCompleteResultTypes.idl
 */

module mozilla.xpcom.nsIAutoCompleteResultTypes;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIAutoCompleteResult;


/* starting interface:    nsIAutoCompleteBaseResult */
const char[] NS_IAUTOCOMPLETEBASERESULT_IID_STR = "e6396544-921d-4776-aa62-8bf2dc1ae058";

const nsIID NS_IAUTOCOMPLETEBASERESULT_IID= 
  {0xe6396544, 0x921d, 0x4776, 
    [ 0xaa, 0x62, 0x8b, 0xf2, 0xdc, 0x1a, 0xe0, 0x58 ]};

extern(Windows)
interface nsIAutoCompleteBaseResult : nsIAutoCompleteResult {
  static const char[] IID_STR = NS_IAUTOCOMPLETEBASERESULT_IID_STR;
  static const nsIID IID = NS_IAUTOCOMPLETEBASERESULT_IID;

  /* void setSearchString (in AString searchString); */
  nsresult SetSearchString(nsAString * searchString);

  /* void setErrorDescription (in AString errorDescription); */
  nsresult SetErrorDescription(nsAString * errorDescription);

  /* void setDefaultIndex (in long defaultIndex); */
  nsresult SetDefaultIndex(PRInt32 defaultIndex);

  /* void setSearchResult (in unsigned long searchResult); */
  nsresult SetSearchResult(PRUint32 searchResult);

}


/* starting interface:    nsIAutoCompleteMdbResult */
const char[] NS_IAUTOCOMPLETEMDBRESULT_IID_STR = "f7e7b341-2d5c-4d04-9f51-496cb2ce178c";

const nsIID NS_IAUTOCOMPLETEMDBRESULT_IID= 
  {0xf7e7b341, 0x2d5c, 0x4d04, 
    [ 0x9f, 0x51, 0x49, 0x6c, 0xb2, 0xce, 0x17, 0x8c ]};

extern(Windows)
interface nsIAutoCompleteMdbResult : nsIAutoCompleteBaseResult {
  static const char[] IID_STR = NS_IAUTOCOMPLETEMDBRESULT_IID_STR;
  static const nsIID IID = NS_IAUTOCOMPLETEMDBRESULT_IID;

  enum { kUnicharType = 0 };

  enum { kCharType = 1 };

  enum { kIntType = 2 };

  /* void init (in nsIMdbEnv env, in nsIMdbTable table); */
  nsresult Init(nsIMdbEnv env, nsIMdbTable table);

  /* void setTokens (in mdb_scope valueToken, in short valueType, in mdb_scope commentToken, in short commentType); */
  nsresult SetTokens(mdb_scope valueToken, PRInt16 valueType, mdb_scope commentToken, PRInt16 commentType);

  /* void addRow (in nsIMdbRow row); */
  nsresult AddRow(nsIMdbRow row);

  /* nsIMdbRow getRowAt (in unsigned long rowIndex); */
  nsresult GetRowAt(PRUint32 rowIndex, nsIMdbRow *_retval);

  /* AString getRowValue (in nsIMdbRow row, in mdb_column col); */
  nsresult GetRowValue(nsIMdbRow row, mdb_column col, nsAString * _retval);

  /* AUTF8String getUTF8RowValue (in nsIMdbRow row, in mdb_column col); */
  nsresult GetUTF8RowValue(nsIMdbRow row, mdb_column col, nsACString * _retval);

  /* long getIntRowValue (in nsIMdbRow row, in mdb_column col); */
  nsresult GetIntRowValue(nsIMdbRow row, mdb_column col, PRInt32 *_retval);

}


/* starting interface:    nsIAutoCompleteMdbResult2 */
const char[] NS_IAUTOCOMPLETEMDBRESULT2_IID_STR = "148c9dc5-0fbb-408b-80fe-544f6a85b433";

const nsIID NS_IAUTOCOMPLETEMDBRESULT2_IID= 
  {0x148c9dc5, 0x0fbb, 0x408b, 
    [ 0x80, 0xfe, 0x54, 0x4f, 0x6a, 0x85, 0xb4, 0x33 ]};

extern(Windows)
interface nsIAutoCompleteMdbResult2 : nsIAutoCompleteMdbResult {
  static const char[] IID_STR = NS_IAUTOCOMPLETEMDBRESULT2_IID_STR;
  static const nsIID IID = NS_IAUTOCOMPLETEMDBRESULT2_IID;

  /* attribute boolean reverseByteOrder; */
  nsresult GetReverseByteOrder(PRBool *aReverseByteOrder);
  nsresult SetReverseByteOrder(PRBool aReverseByteOrder);

}

