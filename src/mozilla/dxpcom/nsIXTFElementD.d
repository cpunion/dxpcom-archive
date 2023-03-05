/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXTFElement.idl
 */

module mozilla.dxpcom.nsIXTFElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXTFElement;


public import mozilla.dxpcom.nsIXTFElementD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIAtom;

public import mozilla.dxpcom.nsIAtomD;

public import mozilla.xpcom.nsIDOMDocument;

public import mozilla.dxpcom.nsIDOMDocumentD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;

public import mozilla.xpcom.nsIDOMNode;

public import mozilla.dxpcom.nsIDOMNodeD;

public import mozilla.xpcom.nsIDOMEvent;

public import mozilla.dxpcom.nsIDOMEventD;


/* starting wrapper class:    nsIXTFElement */
class nsIXTFElementD : public nsISupportsD {

  static const nsIID IID = NS_IXTFELEMENT_IID;


  alias nsIXTFElement InnerType;

  this(nsIXTFElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIXTFElement opCast() {
    return inner;
  }

  void opAssign(nsIXTFElement value) {
    inner = value;
  }

  /* void onDestroyed (); */
  void OnDestroyed(){
    nsresult __result = inner.OnDestroyed();
    CheckException(__result);
  }

  enum { ELEMENT_TYPE_GENERIC_ELEMENT = 0U }

  enum { ELEMENT_TYPE_SVG_VISUAL = 1U }

  enum { ELEMENT_TYPE_XML_VISUAL = 2U }

  enum { ELEMENT_TYPE_XUL_VISUAL = 3U }

  enum { ELEMENT_TYPE_BINDABLE = 4U }

  /* readonly attribute unsigned long elementType; */
  PRUint32 ElementType(){
    PRUint32 value;
    nsresult __result = inner.GetElementType(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean isAttributeHandler; */
  PRBool IsAttributeHandler(){
    PRBool value;
    nsresult __result = inner.GetIsAttributeHandler(&value);
    CheckException(__result);
    return value;
  }

  /* void getScriptingInterfaces (out unsigned long count, [array, size_is (count), retval] out nsIIDPtr array); */
  void GetScriptingInterfaces(out PRUint32 count, out nsIID * *array){
    nsresult __result = inner.GetScriptingInterfaces(&count, &array);
    CheckException(__result);
  }

  enum { NOTIFY_WILL_CHANGE_DOCUMENT = 1U }

  enum { NOTIFY_DOCUMENT_CHANGED = 2U }

  enum { NOTIFY_WILL_CHANGE_PARENT = 4U }

  enum { NOTIFY_PARENT_CHANGED = 8U }

  enum { NOTIFY_WILL_INSERT_CHILD = 16U }

  enum { NOTIFY_CHILD_INSERTED = 32U }

  enum { NOTIFY_WILL_APPEND_CHILD = 64U }

  enum { NOTIFY_CHILD_APPENDED = 128U }

  enum { NOTIFY_WILL_REMOVE_CHILD = 256U }

  enum { NOTIFY_CHILD_REMOVED = 512U }

  enum { NOTIFY_WILL_SET_ATTRIBUTE = 1024U }

  enum { NOTIFY_ATTRIBUTE_SET = 2048U }

  enum { NOTIFY_WILL_REMOVE_ATTRIBUTE = 4096U }

  enum { NOTIFY_ATTRIBUTE_REMOVED = 8192U }

  enum { NOTIFY_BEGIN_ADDING_CHILDREN = 16384U }

  enum { NOTIFY_DONE_ADDING_CHILDREN = 32768U }

  enum { NOTIFY_HANDLE_DEFAULT = 65536U }

  /* void willChangeDocument (in nsIDOMDocument newDoc); */
  void WillChangeDocument(nsIDOMDocumentD newDoc){
    nsresult __result = inner.WillChangeDocument(newDoc ? cast(nsIDOMDocument)newDoc : null);
    CheckException(__result);
  }

  /* void documentChanged (in nsIDOMDocument newDoc); */
  void DocumentChanged(nsIDOMDocumentD newDoc){
    nsresult __result = inner.DocumentChanged(newDoc ? cast(nsIDOMDocument)newDoc : null);
    CheckException(__result);
  }

  /* void willChangeParent (in nsIDOMElement newParent); */
  void WillChangeParent(nsIDOMElementD newParent){
    nsresult __result = inner.WillChangeParent(newParent ? cast(nsIDOMElement)newParent : null);
    CheckException(__result);
  }

  /* void parentChanged (in nsIDOMElement newParent); */
  void ParentChanged(nsIDOMElementD newParent){
    nsresult __result = inner.ParentChanged(newParent ? cast(nsIDOMElement)newParent : null);
    CheckException(__result);
  }

  /* void willInsertChild (in nsIDOMNode child, in unsigned long index); */
  void WillInsertChild(nsIDOMNodeD child, PRUint32 index){
    nsresult __result = inner.WillInsertChild(child ? cast(nsIDOMNode)child : null, index);
    CheckException(__result);
  }

  /* void childInserted (in nsIDOMNode child, in unsigned long index); */
  void ChildInserted(nsIDOMNodeD child, PRUint32 index){
    nsresult __result = inner.ChildInserted(child ? cast(nsIDOMNode)child : null, index);
    CheckException(__result);
  }

  /* void willAppendChild (in nsIDOMNode child); */
  void WillAppendChild(nsIDOMNodeD child){
    nsresult __result = inner.WillAppendChild(child ? cast(nsIDOMNode)child : null);
    CheckException(__result);
  }

  /* void childAppended (in nsIDOMNode child); */
  void ChildAppended(nsIDOMNodeD child){
    nsresult __result = inner.ChildAppended(child ? cast(nsIDOMNode)child : null);
    CheckException(__result);
  }

  /* void willRemoveChild (in unsigned long index); */
  void WillRemoveChild(PRUint32 index){
    nsresult __result = inner.WillRemoveChild(index);
    CheckException(__result);
  }

  /* void childRemoved (in unsigned long index); */
  void ChildRemoved(PRUint32 index){
    nsresult __result = inner.ChildRemoved(index);
    CheckException(__result);
  }

  /* void willSetAttribute (in nsIAtom name, in AString newValue); */
  void WillSetAttribute(nsIAtomD name, wchar[] newValue){
    scope auto _newValue = new AString(newValue);
    nsresult __result = inner.WillSetAttribute(name ? cast(nsIAtom)name : null, cast(nsAString*)_newValue);
    CheckException(__result);
  }

  /* void attributeSet (in nsIAtom name, in AString newValue); */
  void AttributeSet(nsIAtomD name, wchar[] newValue){
    scope auto _newValue = new AString(newValue);
    nsresult __result = inner.AttributeSet(name ? cast(nsIAtom)name : null, cast(nsAString*)_newValue);
    CheckException(__result);
  }

  /* void willRemoveAttribute (in nsIAtom name); */
  void WillRemoveAttribute(nsIAtomD name){
    nsresult __result = inner.WillRemoveAttribute(name ? cast(nsIAtom)name : null);
    CheckException(__result);
  }

  /* void attributeRemoved (in nsIAtom name); */
  void AttributeRemoved(nsIAtomD name){
    nsresult __result = inner.AttributeRemoved(name ? cast(nsIAtom)name : null);
    CheckException(__result);
  }

  /* void beginAddingChildren (); */
  void BeginAddingChildren(){
    nsresult __result = inner.BeginAddingChildren();
    CheckException(__result);
  }

  /* void doneAddingChildren (); */
  void DoneAddingChildren(){
    nsresult __result = inner.DoneAddingChildren();
    CheckException(__result);
  }

  /* boolean handleDefault (in nsIDOMEvent aEvent); */
  PRBool HandleDefault(nsIDOMEventD aEvent){
    PRBool _retval;
    nsresult __result = inner.HandleDefault(aEvent ? cast(nsIDOMEvent)aEvent : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void cloneState (in nsIDOMElement aElement); */
  void CloneState(nsIDOMElementD aElement){
    nsresult __result = inner.CloneState(aElement ? cast(nsIDOMElement)aElement : null);
    CheckException(__result);
  }

private:
  nsIXTFElement inner;

}

