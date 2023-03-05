/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessibleTable.idl
 */

module mozilla.dxpcom.nsIAccessibleTableD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAccessibleTable;


public import mozilla.dxpcom.nsIAccessibleTableD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIAccessible;

public import mozilla.dxpcom.nsIAccessibleD;


/* starting wrapper class:    nsIAccessibleTable */
class nsIAccessibleTableD : public nsISupportsD {

  static const nsIID IID = NS_IACCESSIBLETABLE_IID;


  alias nsIAccessibleTable InnerType;

  this(nsIAccessibleTable intr){
    super(intr);
    this.inner = intr;
  }

  nsIAccessibleTable opCast() {
    return inner;
  }

  void opAssign(nsIAccessibleTable value) {
    inner = value;
  }

  /* attribute nsIAccessible caption; */
  nsIAccessibleD  Caption(){
    nsIAccessible value;
    nsresult __result = inner.GetCaption(&value);
    CheckException(__result);
    return new nsIAccessibleD(value);
  }
  void Caption(nsIAccessibleD  aCaption){
    nsIAccessible value;
    nsresult __result = inner.SetCaption(value);
    CheckException(__result);
  }

  /* attribute AString summary; */
  wchar[] Summary(){
    scope auto value = new AString();
    nsresult __result = inner.GetSummary(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Summary(wchar[] aSummary){
    scope auto value = new AString(aSummary);
    nsresult __result = inner.SetSummary(cast(nsAString*)value);
    CheckException(__result);
  }

  /* readonly attribute long columns; */
  PRInt32 Columns(){
    PRInt32 value;
    nsresult __result = inner.GetColumns(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsIAccessibleTable columnHeader; */
  nsIAccessibleTableD  ColumnHeader(){
    nsIAccessibleTable value;
    nsresult __result = inner.GetColumnHeader(&value);
    CheckException(__result);
    return new nsIAccessibleTableD(value);
  }

  /* readonly attribute long rows; */
  PRInt32 Rows(){
    PRInt32 value;
    nsresult __result = inner.GetRows(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsIAccessibleTable rowHeader; */
  nsIAccessibleTableD  RowHeader(){
    nsIAccessibleTable value;
    nsresult __result = inner.GetRowHeader(&value);
    CheckException(__result);
    return new nsIAccessibleTableD(value);
  }

  /* void getSelectedColumns (out unsigned long columnsSize, [array, size_is (columnsSize), retval] out long columns); */
  void GetSelectedColumns(out PRUint32 columnsSize, out PRInt32 *columns){
    nsresult __result = inner.GetSelectedColumns(&columnsSize, &columns);
    CheckException(__result);
  }

  /* void getSelectedRows (out unsigned long rowsSize, [array, size_is (rowsSize), retval] out long rows); */
  void GetSelectedRows(out PRUint32 rowsSize, out PRInt32 *rows){
    nsresult __result = inner.GetSelectedRows(&rowsSize, &rows);
    CheckException(__result);
  }

  /**
      * gets a cell
      */
  /* nsIAccessible cellRefAt (in long row, in long column); */
  nsIAccessibleD  CellRefAt(PRInt32 row, PRInt32 column){
    nsIAccessible _retval;
    nsresult __result = inner.CellRefAt(row, column, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /**
      * get an index
      */
  /* long getIndexAt (in long row, in long column); */
  PRInt32 GetIndexAt(PRInt32 row, PRInt32 column){
    PRInt32 _retval;
    nsresult __result = inner.GetIndexAt(row, column, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* long getColumnAtIndex (in long index); */
  PRInt32 GetColumnAtIndex(PRInt32 index){
    PRInt32 _retval;
    nsresult __result = inner.GetColumnAtIndex(index, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* long getRowAtIndex (in long index); */
  PRInt32 GetRowAtIndex(PRInt32 index){
    PRInt32 _retval;
    nsresult __result = inner.GetRowAtIndex(index, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* long getColumnExtentAt (in long row, in long column); */
  PRInt32 GetColumnExtentAt(PRInt32 row, PRInt32 column){
    PRInt32 _retval;
    nsresult __result = inner.GetColumnExtentAt(row, column, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* long getRowExtentAt (in long row, in long column); */
  PRInt32 GetRowExtentAt(PRInt32 row, PRInt32 column){
    PRInt32 _retval;
    nsresult __result = inner.GetRowExtentAt(row, column, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* AString getColumnDescription (in long column); */
  wchar[] GetColumnDescription(PRInt32 column){
    scope auto _retval = new AString;
    nsresult __result = inner.GetColumnDescription(column, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* AString getRowDescription (in long row); */
  wchar[] GetRowDescription(PRInt32 row){
    scope auto _retval = new AString;
    nsresult __result = inner.GetRowDescription(row, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* boolean isColumnSelected (in long column); */
  PRBool IsColumnSelected(PRInt32 column){
    PRBool _retval;
    nsresult __result = inner.IsColumnSelected(column, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean isRowSelected (in long row); */
  PRBool IsRowSelected(PRInt32 row){
    PRBool _retval;
    nsresult __result = inner.IsRowSelected(row, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean isCellSelected (in long row, in long column); */
  PRBool IsCellSelected(PRInt32 row, PRInt32 column){
    PRBool _retval;
    nsresult __result = inner.IsCellSelected(row, column, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIAccessibleTable inner;

}

