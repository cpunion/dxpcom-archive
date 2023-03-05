/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITreeContentView.idl
 */

module mozilla.dxpcom.nsITreeContentViewD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsITreeContentView;


public import mozilla.dxpcom.nsITreeContentViewD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIDOMElement;
public import mozilla.dxpcom.nsIDOMElementD;


/* starting wrapper class:    nsITreeContentView */
class nsITreeContentViewD : public nsISupportsD {

  static const nsIID IID = NS_ITREECONTENTVIEW_IID;


  alias nsITreeContentView InnerType;

  this(nsITreeContentView intr){
    super(intr);
    this.inner = intr;
  }

  nsITreeContentView opCast() {
    return inner;
  }

  void opAssign(nsITreeContentView value) {
    inner = value;
  }

  /**
   * Retrieve the content item associated with the specified index.
   */
  /* nsIDOMElement getItemAtIndex (in long index); */
  nsIDOMElementD  GetItemAtIndex(PRInt32 index){
    nsIDOMElement _retval;
    nsresult __result = inner.GetItemAtIndex(index, &_retval);
    CheckException(__result);
    return new nsIDOMElementD(_retval);
  }

  /**
   * Retrieve the index associated with the specified content item.
   */
  /* long getIndexOfItem (in nsIDOMElement item); */
  PRInt32 GetIndexOfItem(nsIDOMElementD item){
    PRInt32 _retval;
    nsresult __result = inner.GetIndexOfItem(item ? cast(nsIDOMElement)item : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsITreeContentView inner;

}

