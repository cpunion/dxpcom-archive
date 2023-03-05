/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbView.idl
 */

module mozilla.dxpcom.nsIAbViewD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAbView;


public import mozilla.dxpcom.nsIAbViewD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.dxpcom.nsISupportsArrayD;

public import mozilla.xpcom.nsIAbCard;

public import mozilla.dxpcom.nsIAbCardD;

public import mozilla.xpcom.nsIAbDirectory;

public import mozilla.dxpcom.nsIAbDirectoryD;


/* starting wrapper class:    nsIAbViewListener */
class nsIAbViewListenerD : public nsISupportsD {

  static const nsIID IID = NS_IABVIEWLISTENER_IID;


  alias nsIAbViewListener InnerType;

  this(nsIAbViewListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbViewListener opCast() {
    return inner;
  }

  void opAssign(nsIAbViewListener value) {
    inner = value;
  }

  /* void onSelectionChanged (); */
  void OnSelectionChanged(){
    nsresult __result = inner.OnSelectionChanged();
    CheckException(__result);
  }

  /* void onCountChanged (in long total); */
  void OnCountChanged(PRInt32 total){
    nsresult __result = inner.OnCountChanged(total);
    CheckException(__result);
  }

private:
  nsIAbViewListener inner;

}


/* starting wrapper class:    nsIAbView */
class nsIAbViewD : public nsISupportsD {

  static const nsIID IID = NS_IABVIEW_IID;


  alias nsIAbView InnerType;

  this(nsIAbView intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbView opCast() {
    return inner;
  }

  void opAssign(nsIAbView value) {
    inner = value;
  }

  /**
     * returns the actual sortColumn.  migration, switching from mozilla 
     * to netscape 6.x, etc, could cause
     * the "persisted" sortColumn to be bogus.
     */
  /* wstring init (in string URI, in boolean aSearchView, in nsIAbViewListener abViewListener, in wstring sortColumn, in wstring sortDirection); */
  PRUnichar* Init(char*URI, PRBool aSearchView, nsIAbViewListenerD abViewListener, PRUnichar*sortColumn, PRUnichar*sortDirection){
    PRUnichar* _retval;
    nsresult __result = inner.Init(URI, aSearchView, abViewListener ? cast(nsIAbViewListener)abViewListener : null, sortColumn, sortDirection, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void close (); */
  void Close(){
    nsresult __result = inner.Close();
    CheckException(__result);
  }

  /**
     * sortBy does not optimize for the case when sortColumn and sortDirection
     * is identical since the last call, the caller is responsible optimizing
     * for that case
     */
  /* void sortBy (in wstring sortColumn, in wstring sortDirection); */
  void SortBy(PRUnichar*sortColumn, PRUnichar*sortDirection){
    nsresult __result = inner.SortBy(sortColumn, sortDirection);
    CheckException(__result);
  }

  /* readonly attribute string URI; */
  char* URI(){
    char* value;
    nsresult __result = inner.GetURI(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute AString sortColumn; */
  wchar[] SortColumn(){
    scope auto value = new AString();
    nsresult __result = inner.GetSortColumn(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute AString sortDirection; */
  wchar[] SortDirection(){
    scope auto value = new AString();
    nsresult __result = inner.GetSortDirection(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute nsIAbDirectory directory; */
  nsIAbDirectoryD  Directory(){
    nsIAbDirectory value;
    nsresult __result = inner.GetDirectory(&value);
    CheckException(__result);
    return new nsIAbDirectoryD(value);
  }

  /* nsIAbCard getCardFromRow (in long row); */
  nsIAbCardD  GetCardFromRow(PRInt32 row){
    nsIAbCard _retval;
    nsresult __result = inner.GetCardFromRow(row, &_retval);
    CheckException(__result);
    return new nsIAbCardD(_retval);
  }

  /* void selectAll (); */
  void SelectAll(){
    nsresult __result = inner.SelectAll();
    CheckException(__result);
  }

  /* void deleteSelectedCards (); */
  void DeleteSelectedCards(){
    nsresult __result = inner.DeleteSelectedCards();
    CheckException(__result);
  }

  /* void swapFirstNameLastName (); */
  void SwapFirstNameLastName(){
    nsresult __result = inner.SwapFirstNameLastName();
    CheckException(__result);
  }

  /* readonly attribute nsISupportsArray selectedAddresses; */
  nsISupportsArrayD  SelectedAddresses(){
    nsISupportsArray value;
    nsresult __result = inner.GetSelectedAddresses(&value);
    CheckException(__result);
    return new nsISupportsArrayD(value);
  }

private:
  nsIAbView inner;

}

