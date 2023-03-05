/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozISqlResult.idl
 */

module mozilla.dxpcom.mozISqlResultD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.mozISqlResult;


public import mozilla.dxpcom.mozISqlResultD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.mozISqlConnection;

public import mozilla.dxpcom.mozISqlConnectionD;

public import mozilla.xpcom.mozISqlResultEnumerator;

public import mozilla.dxpcom.mozISqlResultEnumeratorD;

public import mozilla.xpcom.mozISqlInputStream;

public import mozilla.dxpcom.mozISqlInputStreamD;


/* starting wrapper class:    mozISqlResult */
/**
 * The result of an SQL query. Use the enumerate method to retrieve each
 * row.
 *
 * @status UNDER_DEVELOPMENT
 */
class mozISqlResultD : public nsISupportsD {

  static const nsIID IID = MOZISQLRESULT_IID;


  alias mozISqlResult InnerType;

  this(mozISqlResult intr){
    super(intr);
    this.inner = intr;
  }

  mozISqlResult opCast() {
    return inner;
  }

  void opAssign(mozISqlResult value) {
    inner = value;
  }

  /**
   * By default, this value is false.
   */
  /* attribute boolean displayNullAsText; */
  PRBool DisplayNullAsText(){
    PRBool value;
    nsresult __result = inner.GetDisplayNullAsText(&value);
    CheckException(__result);
    return value;
  }
  void DisplayNullAsText(PRBool aDisplayNullAsText){
    nsresult __result = inner.SetDisplayNullAsText(aDisplayNullAsText);
    CheckException(__result);
  }

  /**
   * The connection used to execute the query
   */
  /* readonly attribute mozISqlConnection connection; */
  mozISqlConnectionD  Connection(){
    mozISqlConnection value;
    nsresult __result = inner.GetConnection(&value);
    CheckException(__result);
    return new mozISqlConnectionD(value);
  }

  /**
   * The SQL query
   */
  /* readonly attribute AString query; */
  wchar[] Query(){
    scope auto value = new AString();
    nsresult __result = inner.GetQuery(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * The table that was used in the query. If more than one table was used,
   * only the first is returned. 
   */
  /* readonly attribute AString tableName; */
  wchar[] TableName(){
    scope auto value = new AString();
    nsresult __result = inner.GetTableName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * The number of rows in the result
   */
  /* readonly attribute long rowCount; */
  PRInt32 RowCount(){
    PRInt32 value;
    nsresult __result = inner.GetRowCount(&value);
    CheckException(__result);
    return value;
  }

  /**
   * The number of columns in the result
   */
  /* readonly attribute long columnCount; */
  PRInt32 ColumnCount(){
    PRInt32 value;
    nsresult __result = inner.GetColumnCount(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Retrieves the name of a column given its index. Indicies start at zero.
   *
   * @param aColumnIndex   the index of the column to return
   * @return               the column name
   */
  /* AString getColumnName (in long aColumnIndex); */
  wchar[] GetColumnName(PRInt32 aColumnIndex){
    scope auto _retval = new AString;
    nsresult __result = inner.GetColumnName(aColumnIndex, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Retrieves the index of a column given its name. If the column does not
   * exist, -1 is returned.
   *
   * @param aColumnName    the column name to return
   * @return               the column index
   */
  /* long getColumnIndex (in AString aColumnName); */
  PRInt32 GetColumnIndex(wchar[] aColumnName){
    scope auto _aColumnName = new AString(aColumnName);
    PRInt32 _retval;
    nsresult __result = inner.GetColumnIndex(cast(nsAString*)_aColumnName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * column type constants used by |getColumnType|.
   */
  enum { TYPE_STRING = 1 }

  enum { TYPE_INT = 2 }

  enum { TYPE_FLOAT = 3 }

  enum { TYPE_DECIMAL = 4 }

  enum { TYPE_DATE = 5 }

  enum { TYPE_TIME = 6 }

  enum { TYPE_DATETIME = 7 }

  enum { TYPE_BOOL = 8 }

  /**
   * Returns the type of the data in a given column.
   *
   * @param aColumnIndex   the index of the column to return the type of
   * @return               the column type
   */
  /* long getColumnType (in long aColumnIndex); */
  PRInt32 GetColumnType(PRInt32 aColumnIndex){
    PRInt32 _retval;
    nsresult __result = inner.GetColumnType(aColumnIndex, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Returns the type of the data in a given column as a string. This is used
   * as an alternative to using the constants and will return either
   * string, int, float, decimal, date, time, datetime or bool.
   *
   * @param aColumnIndex   the index of the column to return the type of
   * @return               the column type
   */
  /* AString getColumnTypeAsString (in long aColumnIndex); */
  wchar[] GetColumnTypeAsString(PRInt32 aColumnIndex){
    scope auto _retval = new AString;
    nsresult __result = inner.GetColumnTypeAsString(aColumnIndex, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Returns the maximum number of bytes that are needed to hold a value in a
   * particular column.
   *
   * @param aColumnIndex   the index of the column to return the size of
   * @return               the column size
   */
  /* long getColumnDisplaySize (in long aColumnIndex); */
  PRInt32 GetColumnDisplaySize(PRInt32 aColumnIndex){
    PRInt32 _retval;
    nsresult __result = inner.GetColumnDisplaySize(aColumnIndex, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Returns an enumerator to enumerator over the returned rows.
   *
   * @return               the row enumerator
   */
  /* mozISqlResultEnumerator enumerate (); */
  mozISqlResultEnumeratorD  Enumerate(){
    mozISqlResultEnumerator _retval;
    nsresult __result = inner.Enumerate(&_retval);
    CheckException(__result);
    return new mozISqlResultEnumeratorD(_retval);
  }

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
  mozISqlInputStreamD  Open(){
    mozISqlInputStream _retval;
    nsresult __result = inner.Open(&_retval);
    CheckException(__result);
    return new mozISqlInputStreamD(_retval);
  }

  /**
   * Re-executes the query.
   */
  /* void reload (); */
  void Reload(){
    nsresult __result = inner.Reload();
    CheckException(__result);
  }

private:
  mozISqlResult inner;

}

