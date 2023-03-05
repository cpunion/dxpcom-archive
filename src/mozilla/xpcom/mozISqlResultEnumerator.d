/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozISqlResultEnumerator.idl
 */

module mozilla.xpcom.mozISqlResultEnumerator;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIVariant; /* forward declaration */


/* starting interface:    mozISqlResultEnumerator */
const char[] MOZISQLRESULTENUMERATOR_IID_STR = "dcc0d29e-2b44-460e-b39f-89121ff8b963";

const nsIID MOZISQLRESULTENUMERATOR_IID= 
  {0xdcc0d29e, 0x2b44, 0x460e, 
    [ 0xb3, 0x9f, 0x89, 0x12, 0x1f, 0xf8, 0xb9, 0x63 ]};

/**
 * This interface is used to get the results from an SQL query.
 * The enumerator uses a row pointer which can be adjusted with
 * the next and previous methods. Other methods operate only on
 * the row selected by the pointer.
 *
 * The row pointer starts just before the first row, so you should
 * always call the next method once before attempting to read row
 * data.
 *
 * @status UNDER_DEVELOPMENT
 */
extern(Windows)
interface mozISqlResultEnumerator : nsISupports {
  static const char[] IID_STR = MOZISQLRESULTENUMERATOR_IID_STR;
  static const nsIID IID = MOZISQLRESULTENUMERATOR_IID;

  /**
   * The most recent error message.
   */
  /* readonly attribute AString errorMessage; */
  nsresult GetErrorMessage(nsAString * aErrorMessage);

  /**
   * Moves the row pointer to the next row in the results.
   * Returns true if there is a next row and false if there are
   * no more rows.
   *
   * @return               false if there are no more rows
   */
  /* boolean next (); */
  nsresult Next(PRBool *_retval);

  /**
   * Moves the row pointer to the previous row in the results.
   * Returns true if there is a previous row.
   *
   * @return               false if there are no previous rows
   */
  /* boolean previous (); */
  nsresult Previous(PRBool *_retval);

  /**
   * Moves the row pointer to just before the first row.
   */
  /* void beforeFirst (); */
  nsresult BeforeFirst();

  /**
   * Moves the row pointer to the first row.
   */
  /* void first (); */
  nsresult First();

  /**
   * Moves the row pointer to the last row.
   */
  /* void last (); */
  nsresult Last();

  /**
   * Moves the row pointer by a number relative to the current row.
   * An error occurs if this causes the row pointer to extend past
   * the last row. This method may also be used to move the row pointer
   * back by using a negative value.
   *
   * @param aRowIndex      aRowIndex the number of rows to move by
   */
  /* void relative (in long aRows); */
  nsresult Relative(PRInt32 aRows);

  /**
   * Moves the row pointer to a specific row. An error occurs if the index
   * is after the last row.
   *
   * @param aRowIndex      the index of the row to move to
   */
  /* void absolute (in long aRowIndex); */
  nsresult Absolute(PRInt32 aRowIndex);

  /**
   * Returns true if the value at the specified column in the current row
   * is null.
   *
   * @param aColumnIndex   the column to retrieve
   * @return               true if the value is null
   */
  /* boolean isNull (in long aColumnIndex); */
  nsresult IsNull(PRInt32 aColumnIndex, PRBool *_retval);

  /**
   * Returns the value at the specified column in the current row as a variant.
   *
   * @param aColumnIndex   the column to retrieve
   * @return               the value as a variant
   */
  /* nsIVariant getVariant (in long aColumnIndex); */
  nsresult GetVariant(PRInt32 aColumnIndex, nsIVariant *_retval);

  /**
   * Returns the value at the specified column in the current row as a string.
   * An error occurs if the value is not a string type.
   *
   * @param aColumnIndex   the column to retrieve
   * @return               the string value
   */
  /* AString getString (in long aColumnIndex); */
  nsresult GetString(PRInt32 aColumnIndex, nsAString * _retval);

  /**
   * Returns the value at the specified column in the current row as an
   * integer. An error occurs if the value is not a integer type.
   *
   * @param aColumnIndex   the column to retrieve
   * @return               the integer value
   */
  /* long getInt (in long aColumnIndex); */
  nsresult GetInt(PRInt32 aColumnIndex, PRInt32 *_retval);

  /**
   * Returns the value at the specified column in the current row as a
   * float. An error occurs if the value is not a float type.
   *
   * @param aColumnIndex   the column to retrieve
   * @return               the float value
   */
  /* float getFloat (in long aColumnIndex); */
  nsresult GetFloat(PRInt32 aColumnIndex, float *_retval);

  /**
   * Returns the value at the specified column in the current row as a
   * decimal. An error occurs if the value is not a decimal type.
   *
   * @param aColumnIndex   the column to retrieve
   * @return               the decimal value
   */
  /* float getDecimal (in long aColumnIndex); */
  nsresult GetDecimal(PRInt32 aColumnIndex, float *_retval);

  /**
   * Returns the value at the specified column in the current row as a date.
   * An error occurs if the value is not a date type.
   *
   * @param aColumnIndex   the column to retrieve
   * @return               the date value
   */
  /* long long getDate (in long aColumnIndex); */
  nsresult GetDate(PRInt32 aColumnIndex, PRInt64 *_retval);

  /**
   * Returns the value at the specified column in the current row as a
   * boolean. An error occurs if the value is not a boolean type.
   *
   * @param aColumnIndex   the column to retrieve
   * @return               the boolean value
   */
  /* boolean getBool (in long aColumnIndex); */
  nsresult GetBool(PRInt32 aColumnIndex, PRBool *_retval);

  /**
   * Sets the value at the specified column in the current row to null.
   * Changes are not committed until either the insertRow or updateRow method
   * is called.
   *
   * @param aColumnIndex   the column to modify
   */
  /* void setNull (in long aColumnIndex); */
  nsresult SetNull(PRInt32 aColumnIndex);

  /**
   * Sets the value at the specified column in the current row to the
   * default value for that column. Changes are not committed until either the
   * insertRow or updateRow method is called.
   *
   * @param aColumnIndex   the column to modify
   */
  /* void setDefault (in long aColumnIndex); */
  nsresult SetDefault(PRInt32 aColumnIndex);

  /**
   * Sets the value at the specified column in the current row to its original
   * value. The row may be changed with the various setX methods and then
   * commited with updateRow.
   *
   * @param aColumnIndex   the column to modify
   */
  /* void copy (in long aColumnIndex); */
  nsresult Copy(PRInt32 aColumnIndex);

  /**
   * Sets the value at the specified column in the current row to a variant.
   * Changes are not committed until either the insertRow or updateRow method
   * is called.
   *
   * @param aColumnIndex   the column to modify
   * @param aValue         the value to assign
   */
  /* void setVariant (in long aColumnIndex, in nsIVariant aValue); */
  nsresult SetVariant(PRInt32 aColumnIndex, nsIVariant aValue);

  /**
   * Sets the value at the specified column in the current row to a string.
   * Changes are not committed until either the insertRow or updateRow method
   * is called.
   *
   * @param aColumnIndex   the column to modify
   * @param aValue         the value to assign
   */
  /* void setString (in long aColumnIndex, in AString aValue); */
  nsresult SetString(PRInt32 aColumnIndex, nsAString * aValue);

  /**
   * Sets the value at the specified column in the current row to an integer.
   * Changes are not committed until either the insertRow or updateRow method
   * is called.
   *
   * @param aColumnIndex   the column to modify
   * @param aValue         the value to assign
   */
  /* void setInt (in long aColumnIndex, in long aValue); */
  nsresult SetInt(PRInt32 aColumnIndex, PRInt32 aValue);

  /**
   * Sets the value at the specified column in the current row to a float.
   * Changes are not committed until either the insertRow or updateRow method
   * is called.
   *
   * @param aColumnIndex   the column to modify
   * @param aValue         the value to assign
   */
  /* void setFloat (in long aColumnIndex, in float aValue); */
  nsresult SetFloat(PRInt32 aColumnIndex, float aValue);

  /**
   * Sets the value at the specified column in the current row to a decimal.
   * Changes are not committed until either the insertRow or updateRow method
   * is called.
   *
   * @param aColumnIndex   the column to modify
   * @param aValue         the value to assign
   */
  /* void setDecimal (in long aColumnIndex, in float aValue); */
  nsresult SetDecimal(PRInt32 aColumnIndex, float aValue);

  /**
   * Sets the value at the specified column in the current row to a date.
   * Changes are not committed until either the insertRow or updateRow method
   * is called.
   *
   * @param aColumnIndex   the column to modify
   * @param aValue         the value to assign
   */
  /* void setDate (in long aColumnIndex, in long long aValue); */
  nsresult SetDate(PRInt32 aColumnIndex, PRInt64 aValue);

  /**
   * Sets the value at the specified column in the current row to a boolean.
   * Changes are not committed until either the insertRow or updateRow method
   * is called.
   *
   * @param aColumnIndex   the column to modify
   * @param aValue         the value to assign
   */
  /* void setBool (in long aColumnIndex, in boolean aValue); */
  nsresult SetBool(PRInt32 aColumnIndex, PRBool aValue);

  /**
   * Sets the value of the cells in all columns in the current row to null.
   * This is equivalent to calling setNullValue for every column.
   */
  /* void setNullValues (); */
  nsresult SetNullValues();

  /**
   * Sets the value of the cells in all columns in the current row to the
   * default values for the columns. This is equivalent to calling
   * setDefaultValue for every column.
   */
  /* void setDefaultValues (); */
  nsresult SetDefaultValues();

  /**
   * Sets the values of all of the cells in the current row to their original
   * values. The row may be changed with the various set methods and then
   * commited with updateRow. This method is equivalent to calling the copy
   * method for each column.
   */
  /* void copyValues (); */
  nsresult CopyValues();

  /**
   * Returns true if inserts are allowed.
   *
   * @return               true if inserts are allowed
   */
  /* boolean canInsert (); */
  nsresult CanInsert(PRBool *_retval);

  /**
   * Returns true if updates are allowed.
   *
   * @return               true if updates are allowed
   */
  /* boolean canUpdate (); */
  nsresult CanUpdate(PRBool *_retval);

  /**
   * Returns true if deletes are allowed.
   *
   * @return               true if deletes are allowed
   */
  /* boolean canDelete (); */
  nsresult CanDelete(PRBool *_retval);

  /**
   * Inserts a row using the data assigned using the various setX methods.
   * The row was inserted successfully if 0 or 1 is returned, however if 0
   * is returned, the row does not satisfy the where condition of the result
   * (that is, it doesn't belong in the result enumerator) and does not need
   * to be displayed.
   *
   * @return               1 if the row was inserted, 0 if the row was
   *                       inserted but does not fit the condition, or -1
   *                       if an error occured.
   */
  /* long insertRow (); */
  nsresult InsertRow(PRInt32 *_retval);

  /**
   * Updates the current row using the data assigned using the various setX
   * methods. The row was inserted successfully if 0 or 1 is returned, however
   * if 0 is returned, the row does not satisfy the where condition of the
   * result and does not need to be displayed.
   *
   * @return               1 if the row was updated, 0 if the row was updated
   *                       but does not fit the condition, or -1 if an error
   *                       occured.
   */
  /* long updateRow (); */
  nsresult UpdateRow(PRInt32 *_retval);

  /**
   * Deletes the current row.
   *
   * @return               1 if the row was deleted or -1 if an error occured.
   */
  /* long deleteRow (); */
  nsresult DeleteRow(PRInt32 *_retval);

  /**
   * Holds the SQL condition clause.
   */
  /* readonly attribute AString currentCondition; */
  nsresult GetCurrentCondition(nsAString * aCurrentCondition);

}

