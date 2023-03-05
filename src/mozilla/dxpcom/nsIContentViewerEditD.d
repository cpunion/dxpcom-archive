/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIContentViewerEdit.idl
 */

module mozilla.dxpcom.nsIContentViewerEditD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIContentViewerEdit;


public import mozilla.dxpcom.nsIContentViewerEditD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIContentViewerEdit */
class nsIContentViewerEditD : public nsISupportsD {

  static const nsIID IID = NS_ICONTENTVIEWEREDIT_IID;


  alias nsIContentViewerEdit InnerType;

  this(nsIContentViewerEdit intr){
    super(intr);
    this.inner = intr;
  }

  nsIContentViewerEdit opCast() {
    return inner;
  }

  void opAssign(nsIContentViewerEdit value) {
    inner = value;
  }

  /* void search (); */
  void Search(){
    nsresult __result = inner.Search();
    CheckException(__result);
  }

  /* readonly attribute boolean searchable; */
  PRBool Searchable(){
    PRBool value;
    nsresult __result = inner.GetSearchable(&value);
    CheckException(__result);
    return value;
  }

  /* void clearSelection (); */
  void ClearSelection(){
    nsresult __result = inner.ClearSelection();
    CheckException(__result);
  }

  /* void selectAll (); */
  void SelectAll(){
    nsresult __result = inner.SelectAll();
    CheckException(__result);
  }

  /* void copySelection (); */
  void CopySelection(){
    nsresult __result = inner.CopySelection();
    CheckException(__result);
  }

  /* readonly attribute boolean copyable; */
  PRBool Copyable(){
    PRBool value;
    nsresult __result = inner.GetCopyable(&value);
    CheckException(__result);
    return value;
  }

  /* void copyLinkLocation (); */
  void CopyLinkLocation(){
    nsresult __result = inner.CopyLinkLocation();
    CheckException(__result);
  }

  /* readonly attribute boolean inLink; */
  PRBool InLink(){
    PRBool value;
    nsresult __result = inner.GetInLink(&value);
    CheckException(__result);
    return value;
  }

  enum { COPY_IMAGE_TEXT = 1 }

  enum { COPY_IMAGE_HTML = 2 }

  enum { COPY_IMAGE_DATA = 4 }

  enum { COPY_IMAGE_ALL = -1 }

  /* void copyImage (in long aCopyFlags); */
  void CopyImage(PRInt32 aCopyFlags){
    nsresult __result = inner.CopyImage(aCopyFlags);
    CheckException(__result);
  }

  /* readonly attribute boolean inImage; */
  PRBool InImage(){
    PRBool value;
    nsresult __result = inner.GetInImage(&value);
    CheckException(__result);
    return value;
  }

  /* void cutSelection (); */
  void CutSelection(){
    nsresult __result = inner.CutSelection();
    CheckException(__result);
  }

  /* readonly attribute boolean cutable; */
  PRBool Cutable(){
    PRBool value;
    nsresult __result = inner.GetCutable(&value);
    CheckException(__result);
    return value;
  }

  /* void paste (); */
  void Paste(){
    nsresult __result = inner.Paste();
    CheckException(__result);
  }

  /* readonly attribute boolean pasteable; */
  PRBool Pasteable(){
    PRBool value;
    nsresult __result = inner.GetPasteable(&value);
    CheckException(__result);
    return value;
  }

  /* AString getContents (in string aMimeType, in boolean aSelectionOnly); */
  wchar[] GetContents(char*aMimeType, PRBool aSelectionOnly){
    scope auto _retval = new AString;
    nsresult __result = inner.GetContents(aMimeType, aSelectionOnly, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* readonly attribute boolean canGetContents; */
  PRBool CanGetContents(){
    PRBool value;
    nsresult __result = inner.GetCanGetContents(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIContentViewerEdit inner;

}

