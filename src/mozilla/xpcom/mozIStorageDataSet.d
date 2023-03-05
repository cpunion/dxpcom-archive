/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozIStorageDataSet.idl
 */

module mozilla.xpcom.mozIStorageDataSet;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIArray; /* forward declaration */

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */


/* starting interface:    mozIStorageDataSet */
const char[] MOZISTORAGEDATASET_IID_STR = "57826606-3c8a-4243-9f2f-cb3fe6e91148";

const nsIID MOZISTORAGEDATASET_IID= 
  {0x57826606, 0x3c8a, 0x4243, 
    [ 0x9f, 0x2f, 0xcb, 0x3f, 0xe6, 0xe9, 0x11, 0x48 ]};

extern(Windows)
interface mozIStorageDataSet : nsISupports {
  static const char[] IID_STR = MOZISTORAGEDATASET_IID_STR;
  static const nsIID IID = MOZISTORAGEDATASET_IID;

  /**
   * All the rows in this data set, as a nsIArray
   */
  /* readonly attribute nsIArray dataRows; */
  nsresult GetDataRows(nsIArray  *aDataRows);

  /**
   * Get an enumerator for the result set rows.
   * @returns a nsISimpleEnumerator of mozIStorageValueArray.
   */
  /* nsISimpleEnumerator getRowEnumerator (); */
  nsresult GetRowEnumerator(nsISimpleEnumerator *_retval);

}

