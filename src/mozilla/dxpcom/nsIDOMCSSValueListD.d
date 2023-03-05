/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCSSValueList.idl
 */

module mozilla.dxpcom.nsIDOMCSSValueListD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMCSSValueList;


public import mozilla.dxpcom.nsIDOMCSSValueListD;

public import mozilla.xpcom.nsIDOMCSSValue;
public import mozilla.dxpcom.nsIDOMCSSValueD;


/* starting wrapper class:    nsIDOMCSSValueList */
class nsIDOMCSSValueListD : public nsIDOMCSSValueD {

  static const nsIID IID = NS_IDOMCSSVALUELIST_IID;


  alias nsIDOMCSSValueList InnerType;

  this(nsIDOMCSSValueList intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMCSSValueList opCast() {
    return inner;
  }

  void opAssign(nsIDOMCSSValueList value) {
    inner = value;
  }

  /**
 * The nsIDOMCSSValueList interface is a datatype for a list of CSS
 * values in the Document Object Model.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-Style
 *
 * @status FROZEN
 */
  /* readonly attribute unsigned long length; */
  PRUint32 Length(){
    PRUint32 value;
    nsresult __result = inner.GetLength(&value);
    CheckException(__result);
    return value;
  }

  /* nsIDOMCSSValue item (in unsigned long index); */
  nsIDOMCSSValueD  Item(PRUint32 index){
    nsIDOMCSSValue _retval;
    nsresult __result = inner.Item(index, &_retval);
    CheckException(__result);
    return new nsIDOMCSSValueD(_retval);
  }

private:
  nsIDOMCSSValueList inner;

}

