/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFileView.idl
 */

module mozilla.dxpcom.nsIFileViewD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFileView;


public import mozilla.dxpcom.nsIFileViewD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIArray;

public import mozilla.dxpcom.nsIArrayD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;


/* starting wrapper class:    nsIFileView */
class nsIFileViewD : public nsISupportsD {

  static const nsIID IID = NS_IFILEVIEW_IID;


  alias nsIFileView InnerType;

  this(nsIFileView intr){
    super(intr);
    this.inner = intr;
  }

  nsIFileView opCast() {
    return inner;
  }

  void opAssign(nsIFileView value) {
    inner = value;
  }

  enum { sortName = 0 }

  enum { sortSize = 1 }

  enum { sortDate = 2 }

  /* attribute boolean showHiddenFiles; */
  PRBool ShowHiddenFiles(){
    PRBool value;
    nsresult __result = inner.GetShowHiddenFiles(&value);
    CheckException(__result);
    return value;
  }
  void ShowHiddenFiles(PRBool aShowHiddenFiles){
    nsresult __result = inner.SetShowHiddenFiles(aShowHiddenFiles);
    CheckException(__result);
  }

  /* attribute boolean showOnlyDirectories; */
  PRBool ShowOnlyDirectories(){
    PRBool value;
    nsresult __result = inner.GetShowOnlyDirectories(&value);
    CheckException(__result);
    return value;
  }
  void ShowOnlyDirectories(PRBool aShowOnlyDirectories){
    nsresult __result = inner.SetShowOnlyDirectories(aShowOnlyDirectories);
    CheckException(__result);
  }

  /* readonly attribute short sortType; */
  PRInt16 SortType(){
    PRInt16 value;
    nsresult __result = inner.GetSortType(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean reverseSort; */
  PRBool ReverseSort(){
    PRBool value;
    nsresult __result = inner.GetReverseSort(&value);
    CheckException(__result);
    return value;
  }

  /* void sort (in short sortType, in boolean reverseSort); */
  void Sort(PRInt16 sortType, PRBool reverseSort){
    nsresult __result = inner.Sort(sortType, reverseSort);
    CheckException(__result);
  }

  /* void setDirectory (in nsIFile directory); */
  void SetDirectory(nsIFileD directory){
    nsresult __result = inner.SetDirectory(directory ? cast(nsIFile)directory : null);
    CheckException(__result);
  }

  /* void setFilter (in wstring filterString); */
  void SetFilter(PRUnichar*filterString){
    nsresult __result = inner.SetFilter(filterString);
    CheckException(__result);
  }

  /* readonly attribute nsIArray selectedFiles; */
  nsIArrayD  SelectedFiles(){
    nsIArray value;
    nsresult __result = inner.GetSelectedFiles(&value);
    CheckException(__result);
    return new nsIArrayD(value);
  }

private:
  nsIFileView inner;

}

