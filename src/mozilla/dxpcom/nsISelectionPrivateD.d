/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISelectionPrivate.idl
 */

module mozilla.dxpcom.nsISelectionPrivateD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISelectionPrivate;


public import mozilla.dxpcom.nsISelectionPrivateD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISelectionListener;
public import mozilla.dxpcom.nsISelectionListenerD;
public import mozilla.xpcom.nsIEnumerator;
public import mozilla.dxpcom.nsIEnumeratorD;

public import mozilla.xpcom.nsIDOMRange;

public import mozilla.dxpcom.nsIDOMRangeD;

public import mozilla.xpcom.nsISelectionListener;

public import mozilla.dxpcom.nsISelectionListenerD;


/* starting wrapper class:    nsISelectionPrivate */
class nsISelectionPrivateD : public nsISupportsD {

  static const nsIID IID = NS_ISELECTIONPRIVATE_IID;


  alias nsISelectionPrivate InnerType;

  this(nsISelectionPrivate intr){
    super(intr);
    this.inner = intr;
  }

  nsISelectionPrivate opCast() {
    return inner;
  }

  void opAssign(nsISelectionPrivate value) {
    inner = value;
  }

  enum { ENDOFPRECEDINGLINE = 0 }

  enum { STARTOFNEXTLINE = 1 }

  /* attribute boolean interlinePosition; */
  PRBool InterlinePosition(){
    PRBool value;
    nsresult __result = inner.GetInterlinePosition(&value);
    CheckException(__result);
    return value;
  }
  void InterlinePosition(PRBool aInterlinePosition){
    nsresult __result = inner.SetInterlinePosition(aInterlinePosition);
    CheckException(__result);
  }

  /* void startBatchChanges (); */
  void StartBatchChanges(){
    nsresult __result = inner.StartBatchChanges();
    CheckException(__result);
  }

  /* void endBatchChanges (); */
  void EndBatchChanges(){
    nsresult __result = inner.EndBatchChanges();
    CheckException(__result);
  }

  /* nsIEnumerator getEnumerator (); */
  nsIEnumeratorD  GetEnumerator(){
    nsIEnumerator _retval;
    nsresult __result = inner.GetEnumerator(&_retval);
    CheckException(__result);
    return new nsIEnumeratorD(_retval);
  }

  /* wstring toStringWithFormat (in string formatType, in unsigned long flags, in PRInt32 wrapColumn); */
  PRUnichar* ToStringWithFormat(char*formatType, PRUint32 flags, PRInt32 wrapColumn){
    PRUnichar* _retval;
    nsresult __result = inner.ToStringWithFormat(formatType, flags, wrapColumn, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void addSelectionListener (in nsISelectionListener newListener); */
  void AddSelectionListener(nsISelectionListenerD newListener){
    nsresult __result = inner.AddSelectionListener(newListener ? cast(nsISelectionListener)newListener : null);
    CheckException(__result);
  }

  /* void removeSelectionListener (in nsISelectionListener listenerToRemove); */
  void RemoveSelectionListener(nsISelectionListenerD listenerToRemove){
    nsresult __result = inner.RemoveSelectionListener(listenerToRemove ? cast(nsISelectionListener)listenerToRemove : null);
    CheckException(__result);
  }

  enum { TABLESELECTION_NONE = 0 }

  enum { TABLESELECTION_CELL = 1 }

  enum { TABLESELECTION_ROW = 2 }

  enum { TABLESELECTION_COLUMN = 3 }

  enum { TABLESELECTION_TABLE = 4 }

  enum { TABLESELECTION_ALLCELLS = 5 }

  /** Test if supplied range points to a single table element:
      *    Result is one of above constants. "None" means
      *    a table element isn't selected.
      */
  /* long getTableSelectionType (in nsIDOMRange range); */
  PRInt32 GetTableSelectionType(nsIDOMRangeD range){
    PRInt32 _retval;
    nsresult __result = inner.GetTableSelectionType(range ? cast(nsIDOMRange)range : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] void setPresShell (in nsIPresShell aPresShell); */
  void SetPresShell(nsIPresShell * aPresShell){
    nsresult __result = inner.SetPresShell(aPresShell);
    CheckException(__result);
  }

  /* [noscript] attribute boolean canCacheFrameOffset; */
  PRBool CanCacheFrameOffset(){
    PRBool value;
    nsresult __result = inner.GetCanCacheFrameOffset(&value);
    CheckException(__result);
    return value;
  }
  void CanCacheFrameOffset(PRBool aCanCacheFrameOffset){
    nsresult __result = inner.SetCanCacheFrameOffset(aCanCacheFrameOffset);
    CheckException(__result);
  }

  /* [noscript] void getCachedFrameOffset (in nsIFrame aFrame, in PRInt32 inOffset, in nsPointRef aPoint); */
  void GetCachedFrameOffset(nsIFrame * aFrame, PRInt32 inOffset, nsPoint * aPoint){
    nsresult __result = inner.GetCachedFrameOffset(aFrame, inOffset, aPoint);
    CheckException(__result);
  }

  /* [noscript] nsIFrameSelection getFrameSelection (); */
  nsIFrameSelectionD  GetFrameSelection(){
    nsIFrameSelection _retval;
    nsresult __result = inner.GetFrameSelection(&_retval);
    CheckException(__result);
    return new nsIFrameSelectionD(_retval);
  }

private:
  nsISelectionPrivate inner;

}

