/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAutoCompletePopup.idl
 */

module mozilla.dxpcom.nsIAutoCompletePopupD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAutoCompletePopup;


public import mozilla.dxpcom.nsIAutoCompletePopupD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIAutoCompleteInput;

public import mozilla.dxpcom.nsIAutoCompleteInputD;


/* starting wrapper class:    nsIAutoCompletePopup */
class nsIAutoCompletePopupD : public nsISupportsD {

  static const nsIID IID = NS_IAUTOCOMPLETEPOPUP_IID;


  alias nsIAutoCompletePopup InnerType;

  this(nsIAutoCompletePopup intr){
    super(intr);
    this.inner = intr;
  }

  nsIAutoCompletePopup opCast() {
    return inner;
  }

  void opAssign(nsIAutoCompletePopup value) {
    inner = value;
  }

  /* readonly attribute nsIAutoCompleteInput input; */
  nsIAutoCompleteInputD  Input(){
    nsIAutoCompleteInput value;
    nsresult __result = inner.GetInput(&value);
    CheckException(__result);
    return new nsIAutoCompleteInputD(value);
  }

  /* readonly attribute AString overrideValue; */
  wchar[] OverrideValue(){
    scope auto value = new AString();
    nsresult __result = inner.GetOverrideValue(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* attribute long selectedIndex; */
  PRInt32 SelectedIndex(){
    PRInt32 value;
    nsresult __result = inner.GetSelectedIndex(&value);
    CheckException(__result);
    return value;
  }
  void SelectedIndex(PRInt32 aSelectedIndex){
    nsresult __result = inner.SetSelectedIndex(aSelectedIndex);
    CheckException(__result);
  }

  /* readonly attribute boolean popupOpen; */
  PRBool PopupOpen(){
    PRBool value;
    nsresult __result = inner.GetPopupOpen(&value);
    CheckException(__result);
    return value;
  }

  /* void openPopup (in nsIAutoCompleteInput input, in long x, in long y, in long width); */
  void OpenPopup(nsIAutoCompleteInputD input, PRInt32 x, PRInt32 y, PRInt32 width){
    nsresult __result = inner.OpenPopup(input ? cast(nsIAutoCompleteInput)input : null, x, y, width);
    CheckException(__result);
  }

  /* void closePopup (); */
  void ClosePopup(){
    nsresult __result = inner.ClosePopup();
    CheckException(__result);
  }

  /* void invalidate (); */
  void Invalidate(){
    nsresult __result = inner.Invalidate();
    CheckException(__result);
  }

  /* void selectBy (in boolean reverse, in boolean page); */
  void SelectBy(PRBool reverse, PRBool page){
    nsresult __result = inner.SelectBy(reverse, page);
    CheckException(__result);
  }

private:
  nsIAutoCompletePopup inner;

}

