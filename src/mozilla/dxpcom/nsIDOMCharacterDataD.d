/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCharacterData.idl
 */

module mozilla.dxpcom.nsIDOMCharacterDataD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMCharacterData;


public import mozilla.dxpcom.nsIDOMCharacterDataD;

public import mozilla.xpcom.nsIDOMNode;
public import mozilla.dxpcom.nsIDOMNodeD;


/* starting wrapper class:    nsIDOMCharacterData */
class nsIDOMCharacterDataD : public nsIDOMNodeD {

  static const nsIID IID = NS_IDOMCHARACTERDATA_IID;


  alias nsIDOMCharacterData InnerType;

  this(nsIDOMCharacterData intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMCharacterData opCast() {
    return inner;
  }

  void opAssign(nsIDOMCharacterData value) {
    inner = value;
  }

  /**
 * The nsIDOMCharacterData interface extends nsIDOMNode with a set of 
 * attributes and methods for accessing character data in the DOM.
 * 
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Core/
 *
 * @status FROZEN
 */
  /* attribute DOMString data; */
  wchar[] Data(){
    scope auto value = new AString();
    nsresult __result = inner.GetData(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Data(wchar[] aData){
    scope auto value = new AString(aData);
    nsresult __result = inner.SetData(cast(nsAString*)value);
    CheckException(__result);
  }

  /* readonly attribute unsigned long length; */
  PRUint32 Length(){
    PRUint32 value;
    nsresult __result = inner.GetLength(&value);
    CheckException(__result);
    return value;
  }

  /* DOMString substringData (in unsigned long offset, in unsigned long count)  raises (DOMException); */
  wchar[] SubstringData(PRUint32 offset, PRUint32 count){
    scope auto _retval = new AString;
    nsresult __result = inner.SubstringData(offset, count, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* void appendData (in DOMString arg)  raises (DOMException); */
  void AppendData(wchar[] arg){
    scope auto _arg = new AString(arg);
    nsresult __result = inner.AppendData(cast(nsAString*)_arg);
    CheckException(__result);
  }

  /* void insertData (in unsigned long offset, in DOMString arg)  raises (DOMException); */
  void InsertData(PRUint32 offset, wchar[] arg){
    scope auto _arg = new AString(arg);
    nsresult __result = inner.InsertData(offset, cast(nsAString*)_arg);
    CheckException(__result);
  }

  /* void deleteData (in unsigned long offset, in unsigned long count)  raises (DOMException); */
  void DeleteData(PRUint32 offset, PRUint32 count){
    nsresult __result = inner.DeleteData(offset, count);
    CheckException(__result);
  }

  /* void replaceData (in unsigned long offset, in unsigned long count, in DOMString arg)  raises (DOMException); */
  void ReplaceData(PRUint32 offset, PRUint32 count, wchar[] arg){
    scope auto _arg = new AString(arg);
    nsresult __result = inner.ReplaceData(offset, count, cast(nsAString*)_arg);
    CheckException(__result);
  }

private:
  nsIDOMCharacterData inner;

}

