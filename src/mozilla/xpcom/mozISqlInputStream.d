/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozISqlInputStream.idl
 */

module mozilla.xpcom.mozISqlInputStream;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    mozISqlInputStream */
const char[] MOZISQLINPUTSTREAM_IID_STR = "555f2485-ba82-4c5c-9dd2-d801104dc09e";

const nsIID MOZISQLINPUTSTREAM_IID= 
  {0x555f2485, 0xba82, 0x4c5c, 
    [ 0x9d, 0xd2, 0xd8, 0x01, 0x10, 0x4d, 0xc0, 0x9e ]};

/**
 * This interface is a utility for reading SQL result contents as a stream.
 *
 * @status UNDER_DEVELOPMENT
 */
extern(Windows)
interface mozISqlInputStream : nsISupports {
  static const char[] IID_STR = MOZISQLINPUTSTREAM_IID_STR;
  static const nsIID IID = MOZISQLINPUTSTREAM_IID;

  /**
   * Retrieves the name of a column given its index. Indicies start at zero.
   *
   * @param aColumnIndex   the index of the column to return
   * @return               the column name
   */
  /* AString getColumnHeader (in long aColumnIndex); */
  nsresult GetColumnHeader(PRInt32 aColumnIndex, nsAString * _retval);

  /**
   * Sets the name of a column given its index. Indicies start at zero.
   *
   * @param aColumnIndex   the index of the column to change
   * @param aLabel         the column name
   */
  /* void setColumnHeader (in long aColumnIndex, in AString aLabel); */
  nsresult SetColumnHeader(PRInt32 aColumnIndex, nsAString * aLabel);

}

