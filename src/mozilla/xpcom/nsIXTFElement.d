/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXTFElement.idl
 */

module mozilla.xpcom.nsIXTFElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIAtom; /* forward declaration */

public import mozilla.xpcom.nsIDOMDocument; /* forward declaration */

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */

public import mozilla.xpcom.nsIDOMNode; /* forward declaration */

public import mozilla.xpcom.nsIDOMEvent; /* forward declaration */


/* starting interface:    nsIXTFElement */
const char[] NS_IXTFELEMENT_IID_STR = "a8b607fd-24b6-4a8c-9a89-d9b24f8e2592";

const nsIID NS_IXTFELEMENT_IID= 
  {0xa8b607fd, 0x24b6, 0x4a8c, 
    [ 0x9a, 0x89, 0xd9, 0xb2, 0x4f, 0x8e, 0x25, 0x92 ]};

extern(Windows)
interface nsIXTFElement : nsISupports {
  static const char[] IID_STR = NS_IXTFELEMENT_IID_STR;
  static const nsIID IID = NS_IXTFELEMENT_IID;

  /* void onDestroyed (); */
  nsresult OnDestroyed();

  enum { ELEMENT_TYPE_GENERIC_ELEMENT = 0U };

  enum { ELEMENT_TYPE_SVG_VISUAL = 1U };

  enum { ELEMENT_TYPE_XML_VISUAL = 2U };

  enum { ELEMENT_TYPE_XUL_VISUAL = 3U };

  enum { ELEMENT_TYPE_BINDABLE = 4U };

  /* readonly attribute unsigned long elementType; */
  nsresult GetElementType(PRUint32 *aElementType);

  /* readonly attribute boolean isAttributeHandler; */
  nsresult GetIsAttributeHandler(PRBool *aIsAttributeHandler);

  /* void getScriptingInterfaces (out unsigned long count, [array, size_is (count), retval] out nsIIDPtr array); */
  nsresult GetScriptingInterfaces(PRUint32 *count, nsIID * **array);

  enum { NOTIFY_WILL_CHANGE_DOCUMENT = 1U };

  enum { NOTIFY_DOCUMENT_CHANGED = 2U };

  enum { NOTIFY_WILL_CHANGE_PARENT = 4U };

  enum { NOTIFY_PARENT_CHANGED = 8U };

  enum { NOTIFY_WILL_INSERT_CHILD = 16U };

  enum { NOTIFY_CHILD_INSERTED = 32U };

  enum { NOTIFY_WILL_APPEND_CHILD = 64U };

  enum { NOTIFY_CHILD_APPENDED = 128U };

  enum { NOTIFY_WILL_REMOVE_CHILD = 256U };

  enum { NOTIFY_CHILD_REMOVED = 512U };

  enum { NOTIFY_WILL_SET_ATTRIBUTE = 1024U };

  enum { NOTIFY_ATTRIBUTE_SET = 2048U };

  enum { NOTIFY_WILL_REMOVE_ATTRIBUTE = 4096U };

  enum { NOTIFY_ATTRIBUTE_REMOVED = 8192U };

  enum { NOTIFY_BEGIN_ADDING_CHILDREN = 16384U };

  enum { NOTIFY_DONE_ADDING_CHILDREN = 32768U };

  enum { NOTIFY_HANDLE_DEFAULT = 65536U };

  /* void willChangeDocument (in nsIDOMDocument newDoc); */
  nsresult WillChangeDocument(nsIDOMDocument newDoc);

  /* void documentChanged (in nsIDOMDocument newDoc); */
  nsresult DocumentChanged(nsIDOMDocument newDoc);

  /* void willChangeParent (in nsIDOMElement newParent); */
  nsresult WillChangeParent(nsIDOMElement newParent);

  /* void parentChanged (in nsIDOMElement newParent); */
  nsresult ParentChanged(nsIDOMElement newParent);

  /* void willInsertChild (in nsIDOMNode child, in unsigned long index); */
  nsresult WillInsertChild(nsIDOMNode child, PRUint32 index);

  /* void childInserted (in nsIDOMNode child, in unsigned long index); */
  nsresult ChildInserted(nsIDOMNode child, PRUint32 index);

  /* void willAppendChild (in nsIDOMNode child); */
  nsresult WillAppendChild(nsIDOMNode child);

  /* void childAppended (in nsIDOMNode child); */
  nsresult ChildAppended(nsIDOMNode child);

  /* void willRemoveChild (in unsigned long index); */
  nsresult WillRemoveChild(PRUint32 index);

  /* void childRemoved (in unsigned long index); */
  nsresult ChildRemoved(PRUint32 index);

  /* void willSetAttribute (in nsIAtom name, in AString newValue); */
  nsresult WillSetAttribute(nsIAtom name, nsAString * newValue);

  /* void attributeSet (in nsIAtom name, in AString newValue); */
  nsresult AttributeSet(nsIAtom name, nsAString * newValue);

  /* void willRemoveAttribute (in nsIAtom name); */
  nsresult WillRemoveAttribute(nsIAtom name);

  /* void attributeRemoved (in nsIAtom name); */
  nsresult AttributeRemoved(nsIAtom name);

  /* void beginAddingChildren (); */
  nsresult BeginAddingChildren();

  /* void doneAddingChildren (); */
  nsresult DoneAddingChildren();

  /* boolean handleDefault (in nsIDOMEvent aEvent); */
  nsresult HandleDefault(nsIDOMEvent aEvent, PRBool *_retval);

  /* void cloneState (in nsIDOMElement aElement); */
  nsresult CloneState(nsIDOMElement aElement);

}

