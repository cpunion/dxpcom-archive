/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITreeColumns.idl
 */

module mozilla.dxpcom.nsITreeColumnsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsITreeColumns;


public import mozilla.dxpcom.nsITreeColumnsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsITreeColumns;

public import mozilla.dxpcom.nsITreeColumnsD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;

public import mozilla.xpcom.nsIAtom;

public import mozilla.dxpcom.nsIAtomD;


/* starting wrapper class:    nsITreeColumn */
class nsITreeColumnD : public nsISupportsD {

  static const nsIID IID = NS_ITREECOLUMN_IID;


  alias nsITreeColumn InnerType;

  this(nsITreeColumn intr){
    super(intr);
    this.inner = intr;
  }

  nsITreeColumn opCast() {
    return inner;
  }

  void opAssign(nsITreeColumn value) {
    inner = value;
  }

  /* readonly attribute nsIDOMElement element; */
  nsIDOMElementD  Element(){
    nsIDOMElement value;
    nsresult __result = inner.GetElement(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

  /* readonly attribute nsITreeColumns columns; */
  nsITreeColumnsD  Columns(){
    nsITreeColumns value;
    nsresult __result = inner.GetColumns(&value);
    CheckException(__result);
    return new nsITreeColumnsD(value);
  }

  /* readonly attribute long x; */
  PRInt32 X(){
    PRInt32 value;
    nsresult __result = inner.GetX(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long width; */
  PRInt32 Width(){
    PRInt32 value;
    nsresult __result = inner.GetWidth(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute AString id; */
  wchar[] Id(){
    scope auto value = new AString();
    nsresult __result = inner.GetId(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* [noscript] void getIdConst ([shared] out wstring idConst); */
  void GetIdConst(out PRUnichar*idConst){
    nsresult __result = inner.GetIdConst(&idConst);
    CheckException(__result);
  }

  /* [noscript] readonly attribute nsIAtom atom; */
  nsIAtomD  Atom(){
    nsIAtom value;
    nsresult __result = inner.GetAtom(&value);
    CheckException(__result);
    return new nsIAtomD(value);
  }

  /* readonly attribute long index; */
  PRInt32 Index(){
    PRInt32 value;
    nsresult __result = inner.GetIndex(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean primary; */
  PRBool Primary(){
    PRBool value;
    nsresult __result = inner.GetPrimary(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean cycler; */
  PRBool Cycler(){
    PRBool value;
    nsresult __result = inner.GetCycler(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean editable; */
  PRBool Editable(){
    PRBool value;
    nsresult __result = inner.GetEditable(&value);
    CheckException(__result);
    return value;
  }

  enum { TYPE_TEXT = 1 }

  enum { TYPE_CHECKBOX = 2 }

  enum { TYPE_PROGRESSMETER = 3 }

  /* readonly attribute short type; */
  PRInt16 Type(){
    PRInt16 value;
    nsresult __result = inner.GetType(&value);
    CheckException(__result);
    return value;
  }

  /* nsITreeColumn getNext (); */
  nsITreeColumnD  GetNext(){
    nsITreeColumn _retval;
    nsresult __result = inner.GetNext(&_retval);
    CheckException(__result);
    return new nsITreeColumnD(_retval);
  }

  /* nsITreeColumn getPrevious (); */
  nsITreeColumnD  GetPrevious(){
    nsITreeColumn _retval;
    nsresult __result = inner.GetPrevious(&_retval);
    CheckException(__result);
    return new nsITreeColumnD(_retval);
  }

  /* void invalidate (); */
  void Invalidate(){
    nsresult __result = inner.Invalidate();
    CheckException(__result);
  }

private:
  nsITreeColumn inner;

}

public import mozilla.xpcom.nsITreeBoxObject;

public import mozilla.dxpcom.nsITreeBoxObjectD;


/* starting wrapper class:    nsITreeColumns */
class nsITreeColumnsD : public nsISupportsD {

  static const nsIID IID = NS_ITREECOLUMNS_IID;


  alias nsITreeColumns InnerType;

  this(nsITreeColumns intr){
    super(intr);
    this.inner = intr;
  }

  nsITreeColumns opCast() {
    return inner;
  }

  void opAssign(nsITreeColumns value) {
    inner = value;
  }

  /**
   * The tree widget for these columns.
   */
  /* readonly attribute nsITreeBoxObject tree; */
  nsITreeBoxObjectD  Tree(){
    nsITreeBoxObject value;
    nsresult __result = inner.GetTree(&value);
    CheckException(__result);
    return new nsITreeBoxObjectD(value);
  }

  /**
   * The number of columns.
   */
  /* readonly attribute long count; */
  PRInt32 Count(){
    PRInt32 value;
    nsresult __result = inner.GetCount(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Get the first/last column.
   */
  /* nsITreeColumn getFirstColumn (); */
  nsITreeColumnD  GetFirstColumn(){
    nsITreeColumn _retval;
    nsresult __result = inner.GetFirstColumn(&_retval);
    CheckException(__result);
    return new nsITreeColumnD(_retval);
  }

  /* nsITreeColumn getLastColumn (); */
  nsITreeColumnD  GetLastColumn(){
    nsITreeColumn _retval;
    nsresult __result = inner.GetLastColumn(&_retval);
    CheckException(__result);
    return new nsITreeColumnD(_retval);
  }

  /**
   * Attribute based column getters.
   */
  /* nsITreeColumn getPrimaryColumn (); */
  nsITreeColumnD  GetPrimaryColumn(){
    nsITreeColumn _retval;
    nsresult __result = inner.GetPrimaryColumn(&_retval);
    CheckException(__result);
    return new nsITreeColumnD(_retval);
  }

  /* nsITreeColumn getSortedColumn (); */
  nsITreeColumnD  GetSortedColumn(){
    nsITreeColumn _retval;
    nsresult __result = inner.GetSortedColumn(&_retval);
    CheckException(__result);
    return new nsITreeColumnD(_retval);
  }

  /* nsITreeColumn getKeyColumn (); */
  nsITreeColumnD  GetKeyColumn(){
    nsITreeColumn _retval;
    nsresult __result = inner.GetKeyColumn(&_retval);
    CheckException(__result);
    return new nsITreeColumnD(_retval);
  }

  /**
   * Get the column for the given element.
   */
  /* nsITreeColumn getColumnFor (in nsIDOMElement element); */
  nsITreeColumnD  GetColumnFor(nsIDOMElementD element){
    nsITreeColumn _retval;
    nsresult __result = inner.GetColumnFor(element ? cast(nsIDOMElement)element : null, &_retval);
    CheckException(__result);
    return new nsITreeColumnD(_retval);
  }

  /**
   * Parametric column getters.
   */
  /* nsITreeColumn getNamedColumn (in AString id); */
  nsITreeColumnD  GetNamedColumn(wchar[] id){
    scope auto _id = new AString(id);
    nsITreeColumn _retval;
    nsresult __result = inner.GetNamedColumn(cast(nsAString*)_id, &_retval);
    CheckException(__result);
    return new nsITreeColumnD(_retval);
  }

  /* nsITreeColumn getColumnAt (in long index); */
  nsITreeColumnD  GetColumnAt(PRInt32 index){
    nsITreeColumn _retval;
    nsresult __result = inner.GetColumnAt(index, &_retval);
    CheckException(__result);
    return new nsITreeColumnD(_retval);
  }

  /**
   * This method is called whenever a treecol is added or removed and
   * the column cache needs to be rebuilt.
   */
  /* void invalidateColumns (); */
  void InvalidateColumns(){
    nsresult __result = inner.InvalidateColumns();
    CheckException(__result);
  }

  /* void restoreNaturalOrder (); */
  void RestoreNaturalOrder(){
    nsresult __result = inner.RestoreNaturalOrder();
    CheckException(__result);
  }

private:
  nsITreeColumns inner;

}

