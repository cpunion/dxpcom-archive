/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMProcessingInstruction.idl
 */

module mozilla.dxpcom.nsIDOMProcessingInstructionD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMProcessingInstruction;


public import mozilla.dxpcom.nsIDOMProcessingInstructionD;

public import mozilla.xpcom.nsIDOMNode;
public import mozilla.dxpcom.nsIDOMNodeD;


/* starting wrapper class:    nsIDOMProcessingInstruction */
class nsIDOMProcessingInstructionD : public nsIDOMNodeD {

  static const nsIID IID = NS_IDOMPROCESSINGINSTRUCTION_IID;


  alias nsIDOMProcessingInstruction InnerType;

  this(nsIDOMProcessingInstruction intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMProcessingInstruction opCast() {
    return inner;
  }

  void opAssign(nsIDOMProcessingInstruction value) {
    inner = value;
  }

  /**
 * The nsIDOMProcessingInstruction interface represents a 
 * "processing instruction", used in XML as a way to keep processor-specific 
 * information in the text of the document.
 *
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Core/
 *
 * @status FROZEN
 */
  /* readonly attribute DOMString target; */
  wchar[] Target(){
    scope auto value = new AString();
    nsresult __result = inner.GetTarget(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

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

private:
  nsIDOMProcessingInstruction inner;

}

