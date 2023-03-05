/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISelectionDisplay.idl
 */

module mozilla.dxpcom.nsISelectionDisplayD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISelectionDisplay;


public import mozilla.dxpcom.nsISelectionDisplayD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsISelectionDisplay */
class nsISelectionDisplayD : public nsISupportsD {

  static const nsIID IID = NS_ISELECTIONDISPLAY_IID;


  alias nsISelectionDisplay InnerType;

  this(nsISelectionDisplay intr){
    super(intr);
    this.inner = intr;
  }

  nsISelectionDisplay opCast() {
    return inner;
  }

  void opAssign(nsISelectionDisplay value) {
    inner = value;
  }

  enum { DISPLAY_TEXT = 1 }

  enum { DISPLAY_IMAGES = 2 }

  enum { DISPLAY_FRAMES = 4 }

  enum { DISPLAY_ALL = 7 }

  /* void setSelectionFlags (in short toggle); */
  void SetSelectionFlags(PRInt16 toggle){
    nsresult __result = inner.SetSelectionFlags(toggle);
    CheckException(__result);
  }

  /* short getSelectionFlags (); */
  PRInt16 GetSelectionFlags(){
    PRInt16 _retval;
    nsresult __result = inner.GetSelectionFlags(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISelectionDisplay inner;

}

