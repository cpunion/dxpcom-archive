/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITableEditor.idl
 */

module mozilla.dxpcom.nsITableEditorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsITableEditor;


public import mozilla.dxpcom.nsITableEditorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMNode;

public import mozilla.dxpcom.nsIDOMNodeD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;

public import mozilla.xpcom.nsIDOMRange;

public import mozilla.dxpcom.nsIDOMRangeD;


/* starting wrapper class:    nsITableEditor */
class nsITableEditorD : public nsISupportsD {

  static const nsIID IID = NS_ITABLEEDITOR_IID;


  alias nsITableEditor InnerType;

  this(nsITableEditor intr){
    super(intr);
    this.inner = intr;
  }

  nsITableEditor opCast() {
    return inner;
  }

  void opAssign(nsITableEditor value) {
    inner = value;
  }

  enum { eNoSearch = 0 }

  enum { ePreviousColumn = 1 }

  enum { ePreviousRow = 2 }

  /** Insert table methods
    * Insert relative to the selected cell or the 
    *  cell enclosing the selection anchor
    * The selection is collapsed and is left in the new cell
    *  at the same row,col location as the original anchor cell
    *
    * @param aNumber    Number of items to insert
    * @param aAfter     If TRUE, insert after the current cell,
    *                     else insert before current cell
    */
  /* void insertTableCell (in long aNumber, in boolean aAfter); */
  void InsertTableCell(PRInt32 aNumber, PRBool aAfter){
    nsresult __result = inner.InsertTableCell(aNumber, aAfter);
    CheckException(__result);
  }

  /* void insertTableColumn (in long aNumber, in boolean aAfter); */
  void InsertTableColumn(PRInt32 aNumber, PRBool aAfter){
    nsresult __result = inner.InsertTableColumn(aNumber, aAfter);
    CheckException(__result);
  }

  /* void insertTableRow (in long aNumber, in boolean aAfter); */
  void InsertTableRow(PRInt32 aNumber, PRBool aAfter){
    nsresult __result = inner.InsertTableRow(aNumber, aAfter);
    CheckException(__result);
  }

  /** Delete table methods
    * Delete starting at the selected cell or the 
    *  cell (or table) enclosing the selection anchor
    * The selection is collapsed and is left in the 
    *  cell at the same row,col location as
    *  the previous selection anchor, if possible,
    *  else in the closest neigboring cell
    *
    * @param aNumber    Number of items to insert/delete
    */
  /* void deleteTable (); */
  void DeleteTable(){
    nsresult __result = inner.DeleteTable();
    CheckException(__result);
  }

  /** Delete just the cell contents
    * This is what should happen when Delete key is used
    *   for selected cells, to minimize upsetting the table layout
    */
  /* void deleteTableCellContents (); */
  void DeleteTableCellContents(){
    nsresult __result = inner.DeleteTableCellContents();
    CheckException(__result);
  }

  /** Delete cell elements as well as contents
    * @param aNumber   Number of contiguous cells, rows, or columns
    *
    * When there are more than 1 selected cells, aNumber is ignored.
    * For Delete Rows or Columns, the complete columns or rows are 
    *  determined by the selected cells. E.g., to delete 2 complete rows,
    *  user simply selects a cell in each, and they don't
    *  have to be contiguous.
    */
  /* void deleteTableCell (in long aNumber); */
  void DeleteTableCell(PRInt32 aNumber){
    nsresult __result = inner.DeleteTableCell(aNumber);
    CheckException(__result);
  }

  /* void deleteTableColumn (in long aNumber); */
  void DeleteTableColumn(PRInt32 aNumber){
    nsresult __result = inner.DeleteTableColumn(aNumber);
    CheckException(__result);
  }

  /* void deleteTableRow (in long aNumber); */
  void DeleteTableRow(PRInt32 aNumber){
    nsresult __result = inner.DeleteTableRow(aNumber);
    CheckException(__result);
  }

  /** Table Selection methods
    * Selecting a row or column actually
    * selects all cells (not TR in the case of rows)
    */
  /* void selectTableCell (); */
  void SelectTableCell(){
    nsresult __result = inner.SelectTableCell();
    CheckException(__result);
  }

  /** Select a rectangular block of cells:
    *  all cells falling within the row/column index of aStartCell
    *  to through the row/column index of the aEndCell
    *  aStartCell can be any location relative to aEndCell,
    *   as long as they are in the same table
    *  @param aStartCell  starting cell in block
    *  @param aEndCell    ending cell in block
    */
  /* void selectBlockOfCells (in nsIDOMElement aStartCell, in nsIDOMElement aEndCell); */
  void SelectBlockOfCells(nsIDOMElementD aStartCell, nsIDOMElementD aEndCell){
    nsresult __result = inner.SelectBlockOfCells(aStartCell ? cast(nsIDOMElement)aStartCell : null, aEndCell ? cast(nsIDOMElement)aEndCell : null);
    CheckException(__result);
  }

  /* void selectTableRow (); */
  void SelectTableRow(){
    nsresult __result = inner.SelectTableRow();
    CheckException(__result);
  }

  /* void selectTableColumn (); */
  void SelectTableColumn(){
    nsresult __result = inner.SelectTableColumn();
    CheckException(__result);
  }

  /* void selectTable (); */
  void SelectTable(){
    nsresult __result = inner.SelectTable();
    CheckException(__result);
  }

  /* void selectAllTableCells (); */
  void SelectAllTableCells(){
    nsresult __result = inner.SelectAllTableCells();
    CheckException(__result);
  }

  /** Create a new TD or TH element, the opposite type of the supplied aSourceCell
    *   1. Copy all attributes from aSourceCell to the new cell
    *   2. Move all contents of aSourceCell to the new cell
    *   3. Replace aSourceCell in the table with the new cell
    *
    *  @param aSourceCell   The cell to be replaced
    *  @return              The new cell that replaces aSourceCell
    */
  /* nsIDOMElement switchTableCellHeaderType (in nsIDOMElement aSourceCell); */
  nsIDOMElementD  SwitchTableCellHeaderType(nsIDOMElementD aSourceCell){
    nsIDOMElement _retval;
    nsresult __result = inner.SwitchTableCellHeaderType(aSourceCell ? cast(nsIDOMElement)aSourceCell : null, &_retval);
    CheckException(__result);
    return new nsIDOMElementD(_retval);
  }

  /** Merges contents of all selected cells
    * for selected cells that are adjacent,
    * this will result in a larger cell with appropriate 
    * rowspan and colspan, and original cells are deleted
    * The resulting cell is in the location of the 
    *   cell at the upper-left corner of the adjacent
    *   block of selected cells
    *
    * @param aMergeNonContiguousContents:  
    *       If true: 
    *         Non-contiguous cells are not deleted,
    *         but their contents are still moved 
    *         to the upper-left cell
    *       If false: contiguous cells are ignored
    *
    * If there are no selected cells,
    *   and selection or caret is in a cell,
    *   that cell and the one to the right 
    *   are merged
    */
  /* void joinTableCells (in boolean aMergeNonContiguousContents); */
  void JoinTableCells(PRBool aMergeNonContiguousContents){
    nsresult __result = inner.JoinTableCells(aMergeNonContiguousContents);
    CheckException(__result);
  }

  /** Split a cell that has rowspan and/or colspan > 0
    *   into cells such that all new cells have 
    *   rowspan = 1 and colspan = 1
    *  All of the contents are not touched --
    *   they will appear to be in the upper-left cell 
    */
  /* void splitTableCell (); */
  void SplitTableCell(){
    nsresult __result = inner.SplitTableCell();
    CheckException(__result);
  }

  /** Scan through all rows and add cells as needed so 
    *   all locations in the cellmap are occupied.
    *   Used after inserting single cells or pasting
    *   a collection of cells that extend past the
    *   previous size of the table
    * If aTable is null, it uses table enclosing the selection anchor
    * This doesn't doesn't change the selection,
    *   thus it can be used to fixup all tables
    *   in a page independant of the selection
    */
  /* void normalizeTable (in nsIDOMElement aTable); */
  void NormalizeTable(nsIDOMElementD aTable){
    nsresult __result = inner.NormalizeTable(aTable ? cast(nsIDOMElement)aTable : null);
    CheckException(__result);
  }

  /** Get the row an column index from the layout's cellmap
    * If aCell is null, it will try to find enclosing table of selection anchor
    * 
    */
  /* void getCellIndexes (in nsIDOMElement aCell, out long aRowIndex, out long aColIndex); */
  void GetCellIndexes(nsIDOMElementD aCell, out PRInt32 aRowIndex, out PRInt32 aColIndex){
    nsresult __result = inner.GetCellIndexes(aCell ? cast(nsIDOMElement)aCell : null, &aRowIndex, &aColIndex);
    CheckException(__result);
  }

  /** Get the number of rows and columns in a table from the layout's cellmap
    * If aTable is null, it will try to find enclosing table of selection ancho
    * Note that all rows in table will not have this many because of 
    * ROWSPAN effects or if table is not "rectangular" (has short rows)
    */
  /* void getTableSize (in nsIDOMElement aTable, out long aRowCount, out long aColCount); */
  void GetTableSize(nsIDOMElementD aTable, out PRInt32 aRowCount, out PRInt32 aColCount){
    nsresult __result = inner.GetTableSize(aTable ? cast(nsIDOMElement)aTable : null, &aRowCount, &aColCount);
    CheckException(__result);
  }

  /** Get a cell element at cellmap grid coordinates
    * A cell that spans across multiple cellmap locations will
    *   be returned multiple times, once for each location it occupies
    *
    * @param aTable                   A table in the document
    * @param aRowIndex, aColIndex     The 0-based cellmap indexes
    *
    * (in C++ returns: NS_EDITOR_ELEMENT_NOT_FOUND if an element is not found
    *  passes NS_SUCCEEDED macro)
    *
    *   You can scan for all cells in a row or column
    *   by iterating through the appropriate indexes
    *   until the returned aCell is null
    */
  /* nsIDOMElement getCellAt (in nsIDOMElement aTable, in long aRowIndex, in long aColIndex); */
  nsIDOMElementD  GetCellAt(nsIDOMElementD aTable, PRInt32 aRowIndex, PRInt32 aColIndex){
    nsIDOMElement _retval;
    nsresult __result = inner.GetCellAt(aTable ? cast(nsIDOMElement)aTable : null, aRowIndex, aColIndex, &_retval);
    CheckException(__result);
    return new nsIDOMElementD(_retval);
  }

  /** Get a cell at cellmap grid coordinates and associated data
    * A cell that spans across multiple cellmap locations will
    *   be returned multiple times, once for each location it occupies
    * Examine the returned aStartRowIndex and aStartColIndex to see 
    *   if it is in the same layout column or layout row:
    *   A "layout row" is all cells sharing the same top edge
    *   A "layout column" is all cells sharing the same left edge
    *   This is important to determine what to do when inserting or deleting a column or row
    * 
    *  @param aTable                   A table in the document
    *  @param aRowIndex, aColIndex     The 0-based cellmap indexes
    * returns values:
    *  @param aCell                    The cell at this cellmap location
    *  @param aStartRowIndex           The row index where cell starts
    *  @param aStartColIndex           The col index where cell starts
    *  @param aRowSpan                 May be 0 (to span down entire table) or number of cells spanned
    *  @param aColSpan                 May be 0 (to span across entire table) or number of cells spanned
    *  @param aActualRowSpan           The actual number of cellmap locations (rows) spanned by the cell
    *  @param aActualColSpan           The actual number of cellmap locations (columns) spanned by the cell
    *  @param aIsSelected
    *  @param 
    *
    * (in C++ returns: NS_EDITOR_ELEMENT_NOT_FOUND if an element is not found
    *  passes NS_SUCCEEDED macro)
    */
  /* void getCellDataAt (in nsIDOMElement aTable, in long aRowIndex, in long aColIndex, out nsIDOMElement aCell, out long aStartRowIndex, out long aStartColIndex, out long aRowSpan, out long aColSpan, out long aActualRowSpan, out long aActualColSpan, out boolean aIsSelected); */
  void GetCellDataAt(nsIDOMElementD aTable, PRInt32 aRowIndex, PRInt32 aColIndex, out nsIDOMElementD aCell, out PRInt32 aStartRowIndex, out PRInt32 aStartColIndex, out PRInt32 aRowSpan, out PRInt32 aColSpan, out PRInt32 aActualRowSpan, out PRInt32 aActualColSpan, out PRBool aIsSelected){
    nsIDOMElement _aCell;
    nsresult __result = inner.GetCellDataAt(aTable ? cast(nsIDOMElement)aTable : null, aRowIndex, aColIndex, &_aCell, &aStartRowIndex, &aStartColIndex, &aRowSpan, &aColSpan, &aActualRowSpan, &aActualColSpan, &aIsSelected);
    CheckException(__result);
    aCell = _aCell ? new nsIDOMElementD(_aCell) : null;
  }

  /** Get the first row element in a table
    *
    * @return            The row at the requested index
    *                    Returns null if there are no rows in table
    * (in C++ returns: NS_EDITOR_ELEMENT_NOT_FOUND if an element is not found
    *  passes NS_SUCCEEDED macro)
    */
  /* nsIDOMNode getFirstRow (in nsIDOMElement aTableElement); */
  nsIDOMNodeD  GetFirstRow(nsIDOMElementD aTableElement){
    nsIDOMNode _retval;
    nsresult __result = inner.GetFirstRow(aTableElement ? cast(nsIDOMElement)aTableElement : null, &_retval);
    CheckException(__result);
    return new nsIDOMNodeD(_retval);
  }

  /** Get the next row element starting the search from aTableElement
    *
    * @param aTableElement Any TR or child-of-TR element in the document
    *
    * @return            The row to start search from
    *                    and the row returned from the search
    *                    Returns null if there isn't another row
    * (in C++ returns: NS_EDITOR_ELEMENT_NOT_FOUND if an element is not found
    *  passes NS_SUCCEEDED macro)
    */
  /* nsIDOMNode getNextRow (in nsIDOMNode aTableElement); */
  nsIDOMNodeD  GetNextRow(nsIDOMNodeD aTableElement){
    nsIDOMNode _retval;
    nsresult __result = inner.GetNextRow(aTableElement ? cast(nsIDOMNode)aTableElement : null, &_retval);
    CheckException(__result);
    return new nsIDOMNodeD(_retval);
  }

  /** Preferred direction to search for neighboring cell
    * when trying to locate a cell to place caret in after
    * a table editing action. 
    * Used for aDirection param in SetSelectionAfterTableEdit
    */
/** Reset a selected cell or collapsed selection (the caret) after table editing
    *
    * @param aTable      A table in the document
    * @param aRow        The row ...
    * @param aCol        ... and column defining the cell
    *                    where we will try to place the caret
    * @param aSelected   If true, we select the whole cell instead of setting caret
    * @param aDirection  If cell at (aCol, aRow) is not found,
    *                    search for previous cell in the same
    *                    column (aPreviousColumn) or row (ePreviousRow)
    *                    or don't search for another cell (aNoSearch)
    *                    If no cell is found, caret is place just before table;
    *                    and if that fails, at beginning of document.
    *                    Thus we generally don't worry about the return value
    *                     and can use the nsSetSelectionAfterTableEdit stack-based 
    *                     object to insure we reset the caret in a table-editing method.
    */
  /* void setSelectionAfterTableEdit (in nsIDOMElement aTable, in long aRow, in long aCol, in long aDirection, in boolean aSelected); */
  void SetSelectionAfterTableEdit(nsIDOMElementD aTable, PRInt32 aRow, PRInt32 aCol, PRInt32 aDirection, PRBool aSelected){
    nsresult __result = inner.SetSelectionAfterTableEdit(aTable ? cast(nsIDOMElement)aTable : null, aRow, aCol, aDirection, aSelected);
    CheckException(__result);
  }

  /** Examine the current selection and find
    *   a selected TABLE, TD or TH, or TR element.
    *   or return the parent TD or TH if selection is inside a table cell
    *   Returns null if no table element is found.
    *
    * @param aTagName         The tagname of returned element
    *                         Note that "td" will be returned if name
    *                         is actually "th"
    * @param aCount           How many table elements were selected
    *                         This tells us if we have multiple cells selected
    *                           (0 if element is a parent cell of selection)
    * @return                 The table element (table, row, or first selected cell)
    *
    */
  /* nsIDOMElement getSelectedOrParentTableElement (out AString aTagName, out long aCount); */
  nsIDOMElementD  GetSelectedOrParentTableElement(wchar[] aTagName, out PRInt32 aCount){
    scope auto _aTagName = new AString;
    nsIDOMElement _retval;
    nsresult __result = inner.GetSelectedOrParentTableElement(cast(nsAString*)_aTagName, &aCount, &_retval);
    CheckException(__result);
    aTagName = _aTagName.GetString();
    return new nsIDOMElementD(_retval);
  }

  /** Generally used after GetSelectedOrParentTableElement
    *   to test if selected cells are complete rows or columns
    * 
    * @param aElement           Any table or cell element or any element
    *                           inside a table
    *                           Used to get enclosing table. 
    *                           If null, selection's anchorNode is used
    * 
    * @return
    *     0                        aCellElement was not a cell
    *                              (returned result = NS_ERROR_FAILURE)
    *     TABLESELECTION_CELL      There are 1 or more cells selected but
    *                              complete rows or columns are not selected
    *     TABLESELECTION_ROW       All cells are in 1 or more rows
    *                              and in each row, all cells selected
    *                              Note: This is the value if all rows
    *                              (thus all cells) are selected
    *     TABLESELECTION_COLUMN    All cells are in 1 or more columns
    *                              and in each column, all cells are selected
    */
  /* PRUint32 getSelectedCellsType (in nsIDOMElement aElement); */
  PRUint32 GetSelectedCellsType(nsIDOMElementD aElement){
    PRUint32 _retval;
    nsresult __result = inner.GetSelectedCellsType(aElement ? cast(nsIDOMElement)aElement : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /** Get first selected element from first selection range.
    *   (If multiple cells were selected this is the first in the order they were selected)
    * Assumes cell-selection model where each cell
    * is in a separate range (selection parent node is table row)
    * @param aCell     [OUT] Selected cell or null if ranges don't contain
    *                  cell selections
    * @param aRange    [OUT] Optional: if not null, return the selection range 
    *                     associated with the cell
    * Returns the DOM cell element
    *   (in C++: returns NS_EDITOR_ELEMENT_NOT_FOUND if an element is not found
    *    passes NS_SUCCEEDED macro)
    */
  /* nsIDOMElement getFirstSelectedCell (out nsIDOMRange aRange); */
  nsIDOMElementD  GetFirstSelectedCell(out nsIDOMRangeD aRange){
    nsIDOMRange _aRange;
    nsIDOMElement _retval;
    nsresult __result = inner.GetFirstSelectedCell(&_aRange, &_retval);
    CheckException(__result);
    aRange = _aRange ? new nsIDOMRangeD(_aRange) : null;
    return new nsIDOMElementD(_retval);
  }

  /** Get first selected element in the table
    *   This is the upper-left-most selected cell in table,
    *   ignoring the order that the user selected them (order in the selection ranges)
    * Assumes cell-selection model where each cell
    * is in a separate range (selection parent node is table row)
    * @param aCell       Selected cell or null if ranges don't contain
    *                    cell selections
    * @param aRowIndex   Optional: if not null, return row index of 1st cell
    * @param aColIndex   Optional: if not null, return column index of 1st cell
    *
    * Returns the DOM cell element
    *   (in C++: returns NS_EDITOR_ELEMENT_NOT_FOUND if an element is not found
    *    passes NS_SUCCEEDED macro)
    */
  /* nsIDOMElement getFirstSelectedCellInTable (out long aRowIndex, out long aColIndex); */
  nsIDOMElementD  GetFirstSelectedCellInTable(out PRInt32 aRowIndex, out PRInt32 aColIndex){
    nsIDOMElement _retval;
    nsresult __result = inner.GetFirstSelectedCellInTable(&aRowIndex, &aColIndex, &_retval);
    CheckException(__result);
    return new nsIDOMElementD(_retval);
  }

  /** Get next selected cell element from first selection range.
    * Assumes cell-selection model where each cell
    * is in a separate range (selection parent node is table row)
    * Always call GetFirstSelectedCell() to initialize stored index of "next" cell
    * @param aCell     Selected cell or null if no more selected cells
    *                     or ranges don't contain cell selections
    * @param aRange    Optional: if not null, return the selection range 
    *                     associated with the cell
    *
    * Returns the DOM cell element
    *   (in C++: returns NS_EDITOR_ELEMENT_NOT_FOUND if an element is not found
    *    passes NS_SUCCEEDED macro)
    */
  /* nsIDOMElement getNextSelectedCell (out nsIDOMRange aRange); */
  nsIDOMElementD  GetNextSelectedCell(out nsIDOMRangeD aRange){
    nsIDOMRange _aRange;
    nsIDOMElement _retval;
    nsresult __result = inner.GetNextSelectedCell(&_aRange, &_retval);
    CheckException(__result);
    aRange = _aRange ? new nsIDOMRangeD(_aRange) : null;
    return new nsIDOMElementD(_retval);
  }

private:
  nsITableEditor inner;

}

