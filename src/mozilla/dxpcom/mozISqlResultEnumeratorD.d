/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozISqlResultEnumerator.idl
 */

module mozilla.dxpcom.mozISqlResultEnumeratorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.mozISqlResultEnumerator;


public import mozilla.dxpcom.mozISqlResultEnumeratorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIVariant;

public import mozilla.dxpcom.nsIVariantD;


/* starting wrapper class:    mozISqlResultEnumerator */
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
class mozISqlResultEnumeratorD : public nsISupportsD {

  static const nsIID IID = MOZISQLRESULTENUMERATOR_IID;


  alias mozISqlResultEnumerator InnerType;

  this(mozISqlResultEnumerator intr){
    super(intr);
    this.inner = intr;
  }

  mozISqlResultEnumerator opCast() {
    return inner;
  }

  void opAssign(mozISqlResultEnumerator value) {
    inner = value;
  }

  /**
   * The most recent error message.
   */
  /* readonly attribute AString errorMessage; */
  wchar[] ErrorMessage(){
    scope auto value = new AString();
    nsresult __result = inner.GetErrorMessage(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * Moves the row pointer to the next row in the results.
   * Returns true if there is a next row and false if there are
   * no more rows.
   *
   * @return               false if there are no more rows
   */
  /* boolean next (); */
  PRBool Next(){
    PRBool _retval;
    nsresult __result = inner.Next(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Moves the row pointer to the previous row in the results.
   * Returns true if there is a previous row.
   *
   * @return               false if there are no previous rows
   */
  /* boolean previous (); */
  PRBool Previous(){
    PRBool _retval;
    nsresult __result = inner.Previous(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Moves the row pointer to just before the first row.
   */
  /* void beforeFirst (); */
  void BeforeFirst(){
    nsresult __result = inner.BeforeFirst();
    CheckException(__result);
  }

  /**
   * Moves the row pointer to the first row.
   */
  /* void first (); */
  void First(){
    nsresult __result = inner.First();
    CheckException(__result);
  }

  /**
   * Moves the row pointer to the last row.
   */
  /* void last (); */
  void Last(){
    nsresult __result = inner.Last();
    CheckException(__result);
  }

  /**
   * Moves the row pointer by a number relative to the current row.
   * An error occurs if this causes the row pointer to extend past
   * the last row. This method may also be used to move the row pointer
   * back by using a negative value.
   *
   * @param aRowIndex      aRowIndex the number of rows to move by
   */
  /* void relative (in long aRows); */
  void Relative(PRInt32 aRows){
    nsresult __result = inner.Relative(aRows);
    CheckException(__result);
  }

  /**
   * Moves the row pointer to a specific row. An error occurs if the index
   * is after the last row.
   *
   * @param aRowIndex      the index of the row to move to
   */
  /* void absolute (in long aRowIndex); */
  void Absolute(PRInt32 aRowIndex){
    nsresult __result = inner.Absolute(aRowIndex);
    CheckException(__result);
  }

  /**
   * Returns true if the value at the specified column in the current row
   * is null.
   *
   * @param aColumnIndex   the column to retrieve
   * @return               true if the value is null
   */
  /* boolean isNull (in long aColumnIndex); */
  PRBool IsNull(PRInt32 aColumnIndex){
    PRBool _retval;
    nsresult __result = inner.IsNull(aColumnIndex, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Returns the value at the specified column in the current row as a variant.
   *
   * @param aColumnIndex   the column to retrieve
   * @return               the value as a variant
   */
  /* nsIVariant getVariant (in long aColumnIndex); */
  nsIVariantD  GetVariant(PRInt32 aColumnIndex){
    nsIVariant _retval;
    nsresult __result = inner.GetVariant(aColumnIndex, &_retval);
    CheckException(__result);
    return new nsIVariantD(_retval);
  }

  /**
   * Returns the value at the specified column in the current row as a string.
   * An error occurs if the value is not a string type.
   *
   * @param aColumnIndex   the column to retrieve
   * @return               the string value
   */
  /* AString getString (in long aColumnIndex); */
  wchar[] GetString(PRInt32 aColumnIndex){
    scope auto _retval = new AString;
    nsresult __result = inner.GetString(aColumnIndex, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Returns the value at the specified column in the current row as an
   * integer. An error occurs if the value is not a integer type.
   *
   * @param aColumnIndex   the column to retrieve
   * @return               the integer value
   */
  /* long getInt (in long aColumnIndex); */
  PRInt32 GetInt(PRInt32 aColumnIndex){
    PRInt32 _retval;
    nsresult __result = inner.GetInt(aColumnIndex, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Returns the value at the specified column in the current row as a
   * float. An error occurs if the value is not a float type.
   *
   * @param aColumnIndex   the column to retrieve
   * @return               the float value
   */
  /* float getFloat (in long aColumnIndex); */
  float GetFloat(PRInt32 aColumnIndex){
    float _retval;
    nsresult __result = inner.GetFloat(aColumnIndex, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Returns the value at the specified column in the current row as a
   * decimal. An error occurs if the value is not a decimal type.
   *
   * @param aColumnIndex   the column to retrieve
   * @return               the decimal value
   */
  /* float getDecimal (in long aColumnIndex); */
  float GetDecimal(PRInt32 aColumnIndex){
    float _retval;
    nsresult __result = inner.GetDecimal(aColumnIndex, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Returns the value at the specified column in the current row as a date.
   * An error occurs if the value is not a date type.
   *
   * @param aColumnIndex   the column to retrieve
   * @return               the date value
   */
  /* long long getDate (in long aColumnIndex); */
  PRInt64 GetDate(PRInt32 aColumnIndex){
    PRInt64 _retval;
    nsresult __result = inner.GetDate(aColumnIndex, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Returns the value at the specified column in the current row as a
   * boolean. An error occurs if the value is not a boolean type.
   *
   * @param aColumnIndex   the column to retrieve
   * @return               the boolean value
   */
  /* boolean getBool (in long aColumnIndex); */
  PRBool GetBool(PRInt32 aColumnIndex){
    PRBool _retval;
    nsresult __result = inner.GetBool(aColumnIndex, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Sets the value at the specified column in the current row to null.
   * Changes are not committed until either the insertRow or updateRow method
   * is called.
   *
   * @param aColumnIndex   the column to modify
   */
  /* void setNull (in long aColumnIndex); */
  void SetNull(PRInt32 aColumnIndex){
    nsresult __result = inner.SetNull(aColumnIndex);
    CheckException(__result);
  }

  /**
   * Sets the value at the specified column in the current row to the
   * default value for that column. Changes are not committed until either the
   * insertRow or updateRow method is called.
   *
   * @param aColumnIndex   the column to modify
   */
  /* void setDefault (in long aColumnIndex); */
  void SetDefault(PRInt32 aColumnIndex){
    nsresult __result = inner.SetDefault(aColumnIndex);
    CheckException(__result);
  }

  /**
   * Sets the value at the specified column in the current row to its original
   * value. The row may be changed with the various setX methods and then
   * commited with updateRow.
   *
   * @param aColumnIndex   the column to modify
   */
  /* void copy (in long aColumnIndex); */
  void Copy(PRInt32 aColumnIndex){
    nsresult __result = inner.Copy(aColumnIndex);
    CheckException(__result);
  }

  /**
   * Sets the value at the specified column in the current row to a variant.
   * Changes are not committed until either the insertRow or updateRow method
   * is called.
   *
   * @param aColumnIndex   the column to modify
   * @param aValue         the value to assign
   */
  /* void setVariant (in long aColumnIndex, in nsIVariant aValue); */
  void SetVariant(PRInt32 aColumnIndex, nsIVariantD aValue){
    nsresult __result = inner.SetVariant(aColumnIndex, aValue ? cast(nsIVariant)aValue : null);
    CheckException(__result);
  }

  /**
   * Sets the value at the specified column in the current row to a string.
   * Changes are not committed until either the insertRow or updateRow method
   * is called.
   *
   * @param aColumnIndex   the column to modify
   * @param aValue         the value to assign
   */
  /* void setString (in long aColumnIndex, in AString aValue); */
  void SetString(PRInt32 aColumnIndex, wchar[] aValue){
    scope auto _aValue = new AString(aValue);
    nsresult __result = inner.SetString(aColumnIndex, cast(nsAString*)_aValue);
    CheckException(__result);
  }

  /**
   * Sets the value at the specified column in the current row to an integer.
   * Changes are not committed until either the insertRow or updateRow method
   * is called.
   *
   * @param aColumnIndex   the column to modify
   * @param aValue         the value to assign
   */
  /* void setInt (in long aColumnIndex, in long aValue); */
  void SetInt(PRInt32 aColumnIndex, PRInt32 aValue){
    nsresult __result = inner.SetInt(aColumnIndex, aValue);
    CheckException(__result);
  }

  /**
   * Sets the value at the specified column in the current row to a float.
   * Changes are not committed until either the insertRow or updateRow method
   * is called.
   *
   * @param aColumnIndex   the column to modify
   * @param aValue         the value to assign
   */
  /* void setFloat (in long aColumnIndex, in float aValue); */
  void SetFloat(PRInt32 aColumnIndex, float aValue){
    nsresult __result = inner.SetFloat(aColumnIndex, aValue);
    CheckException(__result);
  }

  /**
   * Sets the value at the specified column in the current row to a decimal.
   * Changes are not committed until either the insertRow or updateRow method
   * is called.
   *
   * @param aColumnIndex   the column to modify
   * @param aValue         the value to assign
   */
  /* void setDecimal (in long aColumnIndex, in float aValue); */
  void SetDecimal(PRInt32 aColumnIndex, float aValue){
    nsresult __result = inner.SetDecimal(aColumnIndex, aValue);
    CheckException(__result);
  }

  /**
   * Sets the value at the specified column in the current row to a date.
   * Changes are not committed until either the insertRow or updateRow method
   * is called.
   *
   * @param aColumnIndex   the column to modify
   * @param aValue         the value to assign
   */
  /* void setDate (in long aColumnIndex, in long long aValue); */
  void SetDate(PRInt32 aColumnIndex, PRInt64 aValue){
    nsresult __result = inner.SetDate(aColumnIndex, aValue);
    CheckException(__result);
  }

  /**
   * Sets the value at the specified column in the current row to a boolean.
   * Changes are not committed until either the insertRow or updateRow method
   * is called.
   *
   * @param aColumnIndex   the column to modify
   * @param aValue         the value to assign
   */
  /* void setBool (in long aColumnIndex, in boolean aValue); */
  void SetBool(PRInt32 aColumnIndex, PRBool aValue){
    nsresult __result = inner.SetBool(aColumnIndex, aValue);
    CheckException(__result);
  }

  /**
   * Sets the value of the cells in all columns in the current row to null.
   * This is equivalent to calling setNullValue for every column.
   */
  /* void setNullValues (); */
  void SetNullValues(){
    nsresult __result = inner.SetNullValues();
    CheckException(__result);
  }

  /**
   * Sets the value of the cells in all columns in the current row to the
   * default values for the columns. This is equivalent to calling
   * setDefaultValue for every column.
   */
  /* void setDefaultValues (); */
  void SetDefaultValues(){
    nsresult __result = inner.SetDefaultValues();
    CheckException(__result);
  }

  /**
   * Sets the values of all of the cells in the current row to their original
   * values. The row may be changed with the various set methods and then
   * commited with updateRow. This method is equivalent to calling the copy
   * method for each column.
   */
  /* void copyValues (); */
  void CopyValues(){
    nsresult __result = inner.CopyValues();
    CheckException(__result);
  }

  /**
   * Returns true if inserts are allowed.
   *
   * @return               true if inserts are allowed
   */
  /* boolean canInsert (); */
  PRBool CanInsert(){
    PRBool _retval;
    nsresult __result = inner.CanInsert(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Returns true if updates are allowed.
   *
   * @return               true if updates are allowed
   */
  /* boolean canUpdate (); */
  PRBool CanUpdate(){
    PRBool _retval;
    nsresult __result = inner.CanUpdate(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Returns true if deletes are allowed.
   *
   * @return               true if deletes are allowed
   */
  /* boolean canDelete (); */
  PRBool CanDelete(){
    PRBool _retval;
    nsresult __result = inner.CanDelete(&_retval);
    CheckException(__result);
    return _retval;
  }

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
  PRInt32 InsertRow(){
    PRInt32 _retval;
    nsresult __result = inner.InsertRow(&_retval);
    CheckException(__result);
    return _retval;
  }

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
  PRInt32 UpdateRow(){
    PRInt32 _retval;
    nsresult __result = inner.UpdateRow(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Deletes the current row.
   *
   * @return               1 if the row was deleted or -1 if an error occured.
   */
  /* long deleteRow (); */
  PRInt32 DeleteRow(){
    PRInt32 _retval;
    nsresult __result = inner.DeleteRow(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Holds the SQL condition clause.
   */
  /* readonly attribute AString currentCondition; */
  wchar[] CurrentCondition(){
    scope auto value = new AString();
    nsresult __result = inner.GetCurrentCondition(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

private:
  mozISqlResultEnumerator inner;

}

