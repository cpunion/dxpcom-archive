/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozISqlResult.idl
 */

module mozilla.xpcom.mozISqlResult;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.mozISqlConnection; /* forward declaration */

public import mozilla.xpcom.mozISqlResultEnumerator; /* forward declaration */

public import mozilla.xpcom.mozISqlInputStream; /* forward declaration */


/* starting interface:    mozISqlResult */
const char[] MOZISQLRESULT_IID_STR = "08c220b0-7140-456a-89e9-c94609a7392d";

const nsIID MOZISQLRESULT_IID= 
  {0x08c220b0, 0x7140, 0x456a, 
    [ 0x89, 0xe9, 0xc9, 0x46, 0x09, 0xa7, 0x39, 0x2d ]};

/**
 * The result of an SQL query. Use the enumerate method to retrieve each
 * row.
 *
 * @status UNDER_DEVELOPMENT
 */
extern(Windows)
interface mozISqlResult : nsISupports {
  static const char[] IID_STR = MOZISQLRESULT_IID_STR;
  static const nsIID IID = MOZISQLRESULT_IID;

  /**
   * By default, this value is false.
   */
  /* attribute boolean displayNullAsText; */
  nsresult GetDisplayNullAsText(PRBool *aDisplayNullAsText);
  nsresult SetDisplayNullAsText(PRBool aDisplayNullAsText);

  /**
   * The connection used to execute the query
   */
  /* readonly attribute mozISqlConnection connection; */
  nsresult GetConnection(mozISqlConnection  *aConnection);

  /**
   * The SQL query
   */
  /* readonly attribute AString query; */
  nsresult GetQuery(nsAString * aQuery);

  /**
   * The table that was used in the query. If more than one table was used,
   * only the first is returned. 
   */
  /* readonly attribute AString tableName; */
  nsresult GetTableName(nsAString * aTableName);

  /**
   * The number of rows in the result
   */
  /* readonly attribute long rowCount; */
  nsresult GetRowCount(PRInt32 *aRowCount);

  /**
   * The number of columns in the result
   */
  /* readonly attribute long columnCount; */
  nsresult GetColumnCount(PRInt32 *aColumnCount);

  /**
   * Retrieves the name of a column given its index. Indicies start at zero.
   *
   * @param aColumnIndex   the index of the column to return
   * @return               the column name
   */
  /* AString getColumnName (in long aColumnIndex); */
  nsresult GetColumnName(PRInt32 aColumnIndex, nsAString * _retval);

  /**
   * Retrieves the index of a column given its name. If the column does not
   * exist, -1 is returned.
   *
   * @param aColumnName    the column name to return
   * @return               the column index
   */
  /* long getColumnIndex (in AString aColumnName); */
  nsresult GetColumnIndex(nsAString * aColumnName, PRInt32 *_retval);

  /**
   * column type constants used by |getColumnType|.
   */
  enum { TYPE_STRING = 1 };

  enum { TYPE_INT = 2 };

  enum { TYPE_FLOAT = 3 };

  enum { TYPE_DECIMAL = 4 };

  enum { TYPE_DATE = 5 };

  enum { TYPE_TIME = 6 };

  enum { TYPE_DATETIME = 7 };

  enum { TYPE_BOOL = 8 };

  /**
   * Returns the type of the data in a given column.
   *
   * @param aColumnIndex   the index of the column to return the type of
   * @return               the column type
   */
  /* long getColumnType (in long aColumnIndex); */
  nsresult GetColumnType(PRInt32 aColumnIndex, PRInt32 *_retval);

  /**
   * Returns the type of the data in a given column as a string. This is used
   * as an alternative to using the constants and will return either
   * string, int, float, decimal, date, time, datetime or bool.
   *
   * @param aColumnIndex   the index of the column to return the type of
   * @return               the column type
   */
  /* AString getColumnTypeAsString (in long aColumnIndex); */
  nsresult GetColumnTypeAsString(PRInt32 aColumnIndex, nsAString * _retval);

  /**
   * Returns the maximum number of bytes that are needed to hold a value in a
   * particular column.
   *
   * @param aColumnIndex   the index of the column to return the size of
   * @return               the column size
   */
  /* long getColumnDisplaySize (in long aColumnIndex); */
  nsresult GetColumnDisplaySize(PRInt32 aColumnIndex, PRInt32 *_retval);

  /**
   * Returns an enumerator to enumerator over the returned rows.
   *
   * @return               the row enumerator
   */
  /* mozISqlResultEnumerator enumerate (); */
  nsresult Enumerate(mozISqlResultEnumerator *_retval);

  /**
   * Returns a stream which may be used to return the rows as XML.
   *
   * The XML format is:
   * <?xml version="1.0"?>
   * <document>
   *   <body>
   *     <row>
   *       <cell>value11</cell>
   *       <cell>value12</cell>
   *       ...
   *     </row>
   *   </body>
   * </document>
   *
   * @return               the input stream
   */
  /* mozISqlInputStream open (); */
  nsresult Open(mozISqlInputStream *_retval);

  /**
   * Re-executes the query.
   */
  /* void reload (); */
  nsresult Reload();

}

