/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessibleTable.idl
 */

module mozilla.xpcom.nsIAccessibleTable;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIAccessible; /* forward declaration */


/* starting interface:    nsIAccessibleTable */
const char[] NS_IACCESSIBLETABLE_IID_STR = "0a7e98a9-ca7d-42f0-bfe1-2cfc35256038";

const nsIID NS_IACCESSIBLETABLE_IID= 
  {0x0a7e98a9, 0xca7d, 0x42f0, 
    [ 0xbf, 0xe1, 0x2c, 0xfc, 0x35, 0x25, 0x60, 0x38 ]};

extern(Windows)
interface nsIAccessibleTable : nsISupports {
  static const char[] IID_STR = NS_IACCESSIBLETABLE_IID_STR;
  static const nsIID IID = NS_IACCESSIBLETABLE_IID;

  /* attribute nsIAccessible caption; */
  nsresult GetCaption(nsIAccessible  *aCaption);
  nsresult SetCaption(nsIAccessible  aCaption);

  /* attribute AString summary; */
  nsresult GetSummary(nsAString * aSummary);
  nsresult SetSummary(nsAString * aSummary);

  /* readonly attribute long columns; */
  nsresult GetColumns(PRInt32 *aColumns);

  /* readonly attribute nsIAccessibleTable columnHeader; */
  nsresult GetColumnHeader(nsIAccessibleTable  *aColumnHeader);

  /* readonly attribute long rows; */
  nsresult GetRows(PRInt32 *aRows);

  /* readonly attribute nsIAccessibleTable rowHeader; */
  nsresult GetRowHeader(nsIAccessibleTable  *aRowHeader);

  /* void getSelectedColumns (out unsigned long columnsSize, [array, size_is (columnsSize), retval] out long columns); */
  nsresult GetSelectedColumns(PRUint32 *columnsSize, PRInt32 **columns);

  /* void getSelectedRows (out unsigned long rowsSize, [array, size_is (rowsSize), retval] out long rows); */
  nsresult GetSelectedRows(PRUint32 *rowsSize, PRInt32 **rows);

  /**
      * gets a cell
      */
  /* nsIAccessible cellRefAt (in long row, in long column); */
  nsresult CellRefAt(PRInt32 row, PRInt32 column, nsIAccessible *_retval);

  /**
      * get an index
      */
  /* long getIndexAt (in long row, in long column); */
  nsresult GetIndexAt(PRInt32 row, PRInt32 column, PRInt32 *_retval);

  /* long getColumnAtIndex (in long index); */
  nsresult GetColumnAtIndex(PRInt32 index, PRInt32 *_retval);

  /* long getRowAtIndex (in long index); */
  nsresult GetRowAtIndex(PRInt32 index, PRInt32 *_retval);

  /* long getColumnExtentAt (in long row, in long column); */
  nsresult GetColumnExtentAt(PRInt32 row, PRInt32 column, PRInt32 *_retval);

  /* long getRowExtentAt (in long row, in long column); */
  nsresult GetRowExtentAt(PRInt32 row, PRInt32 column, PRInt32 *_retval);

  /* AString getColumnDescription (in long column); */
  nsresult GetColumnDescription(PRInt32 column, nsAString * _retval);

  /* AString getRowDescription (in long row); */
  nsresult GetRowDescription(PRInt32 row, nsAString * _retval);

  /* boolean isColumnSelected (in long column); */
  nsresult IsColumnSelected(PRInt32 column, PRBool *_retval);

  /* boolean isRowSelected (in long row); */
  nsresult IsRowSelected(PRInt32 row, PRBool *_retval);

  /* boolean isCellSelected (in long row, in long column); */
  nsresult IsCellSelected(PRInt32 row, PRInt32 column, PRBool *_retval);

}

