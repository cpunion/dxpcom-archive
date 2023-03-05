/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessible.idl
 */

module mozilla.dxpcom.nsIAccessibleD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAccessible;


public import mozilla.dxpcom.nsIAccessibleD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIAccessible */
/**
 * A cross-platform interface that supports platform-specific 
 * accessibility APIs like MSAA and ATK. Contains the sum of what's needed
 * to support IAccessible as well as ATK's generic accessibility objects.
 * Can also be used by in-process accessibility clients to get information
 * about objects in the accessible tree. The accessible tree is a subset of 
 * nodes in the DOM tree -- such as documents, focusable elements and text.
 * Mozilla creates the implementations of nsIAccessible on demand.
 * See http://www.mozilla.org/projects/ui/accessibility for more information.
 *
 * @status UNDER_REVIEW
 */
class nsIAccessibleD : public nsISupportsD {

  static const nsIID IID = NS_IACCESSIBLE_IID;


  alias nsIAccessible InnerType;

  this(nsIAccessible intr){
    super(intr);
    this.inner = intr;
  }

  nsIAccessible opCast() {
    return inner;
  }

  void opAssign(nsIAccessible value) {
    inner = value;
  }

  /**
   * Parent node in accessible tree.
   */
  /* readonly attribute nsIAccessible parent; */
  nsIAccessibleD  Parent(){
    nsIAccessible value;
    nsresult __result = inner.GetParent(&value);
    CheckException(__result);
    return new nsIAccessibleD(value);
  }

  /**
   * Next sibling in accessible tree
   */
  /* readonly attribute nsIAccessible nextSibling; */
  nsIAccessibleD  NextSibling(){
    nsIAccessible value;
    nsresult __result = inner.GetNextSibling(&value);
    CheckException(__result);
    return new nsIAccessibleD(value);
  }

  /**
   * Previous sibling in accessible tree
   */
  /* readonly attribute nsIAccessible previousSibling; */
  nsIAccessibleD  PreviousSibling(){
    nsIAccessible value;
    nsresult __result = inner.GetPreviousSibling(&value);
    CheckException(__result);
    return new nsIAccessibleD(value);
  }

  /**
   * First child in accessible tree
   */
  /* readonly attribute nsIAccessible firstChild; */
  nsIAccessibleD  FirstChild(){
    nsIAccessible value;
    nsresult __result = inner.GetFirstChild(&value);
    CheckException(__result);
    return new nsIAccessibleD(value);
  }

  /**
   * Last child in accessible tree
   */
  /* readonly attribute nsIAccessible lastChild; */
  nsIAccessibleD  LastChild(){
    nsIAccessible value;
    nsresult __result = inner.GetLastChild(&value);
    CheckException(__result);
    return new nsIAccessibleD(value);
  }

  /**
   * Number of accessible children
   */
  /* readonly attribute long childCount; */
  PRInt32 ChildCount(){
    PRInt32 value;
    nsresult __result = inner.GetChildCount(&value);
    CheckException(__result);
    return value;
  }

  /**
   * The 0-based index of this accessible in its parent's list of children,
   * or -1 if this accessible does not have a parent.
   */
  /* readonly attribute long indexInParent; */
  PRInt32 IndexInParent(){
    PRInt32 value;
    nsresult __result = inner.GetIndexInParent(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Accessible name -- the main text equivalent for this node
   */
  /* attribute AString name; */
  wchar[] Name(){
    scope auto value = new AString();
    nsresult __result = inner.GetName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Name(wchar[] aName){
    scope auto value = new AString(aName);
    nsresult __result = inner.SetName(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   * Accessible value -- a number or a secondary text equivalent for this node
   * Widgets that use a role attribute can force a value using the valuenow attribute
   */
  /* readonly attribute AString finalValue; */
  wchar[] FinalValue(){
    scope auto value = new AString();
    nsresult __result = inner.GetFinalValue(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * Accessible description -- long text associated with this node
   */
  /* readonly attribute AString description; */
  wchar[] Description(){
    scope auto value = new AString();
    nsresult __result = inner.GetDescription(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * Provides localized string of accesskey name, such as Alt+D.
   * The modifier may be affected by user and platform preferences.
   * Usually alt+letter, or just the letter alone for menu items. 
   */
  /* readonly attribute AString keyboardShortcut; */
  wchar[] KeyboardShortcut(){
    scope auto value = new AString();
    nsresult __result = inner.GetKeyboardShortcut(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * Provides localized string of global keyboard accelerator, such
   * as Ctrl+O for Open file
   */
  /* readonly attribute AString keyBinding; */
  wchar[] KeyBinding(){
    scope auto value = new AString();
    nsresult __result = inner.GetKeyBinding(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * Natural enumerated accessible role for the associated element.
   * The values depend on platform because of variations.
   * See the ROLE_* constants defined later in this file.
   * This does not take into account role attribute as the finalRole does.
   */
  /* readonly attribute unsigned long role; */
  PRUint32 Role(){
    PRUint32 value;
    nsresult __result = inner.GetRole(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Enumerated accessible role. The values depend on platform because of variations.
   * See the ROLE_* constants defined later in this file.
   * Widgets can use role attribute to force the final role
   */
  /* readonly attribute unsigned long finalRole; */
  PRUint32 FinalRole(){
    PRUint32 value;
    nsresult __result = inner.GetFinalRole(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Accessible states -- bit field which describes boolean properties of node. 
   * See the STATE_* constants defined later in this file.
   * Many states are only valid given a certain role attribute that supports them
   */
  /* readonly attribute unsigned long finalState; */
  PRUint32 FinalState(){
    PRUint32 value;
    nsresult __result = inner.GetFinalState(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Extended accessible states -- second bit field describing node
   */
  /* readonly attribute unsigned long extState; */
  PRUint32 ExtState(){
    PRUint32 value;
    nsresult __result = inner.GetExtState(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Help text associated with node
   */
  /* readonly attribute AString help; */
  wchar[] Help(){
    scope auto value = new AString();
    nsresult __result = inner.GetHelp(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * Focused accessible child of node
   */
  /* readonly attribute nsIAccessible focusedChild; */
  nsIAccessibleD  FocusedChild(){
    nsIAccessible value;
    nsresult __result = inner.GetFocusedChild(&value);
    CheckException(__result);
    return new nsIAccessibleD(value);
  }

  /**
   * Accessible child which contains the coordinate at x,y
   */
  /* nsIAccessible getChildAtPoint (in long x, in long y); */
  nsIAccessibleD  GetChildAtPoint(PRInt32 x, PRInt32 y){
    nsIAccessible _retval;
    nsresult __result = inner.GetChildAtPoint(x, y, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /**
   * Nth accessible child using zero-based index or last child if index less than zero
   */
  /* nsIAccessible getChildAt (in long aChildIndex); */
  nsIAccessibleD  GetChildAt(PRInt32 aChildIndex){
    nsIAccessible _retval;
    nsresult __result = inner.GetChildAt(aChildIndex, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /**
   * Accessible node geometrically to the right of this one
   */
  /* nsIAccessible getAccessibleToRight (); */
  nsIAccessibleD  GetAccessibleToRight(){
    nsIAccessible _retval;
    nsresult __result = inner.GetAccessibleToRight(&_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /**
   * Accessible node geometrically to the left of this one
   */
  /* nsIAccessible getAccessibleToLeft (); */
  nsIAccessibleD  GetAccessibleToLeft(){
    nsIAccessible _retval;
    nsresult __result = inner.GetAccessibleToLeft(&_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /**
   * Accessible node geometrically above this one
   */
  /* nsIAccessible getAccessibleAbove (); */
  nsIAccessibleD  GetAccessibleAbove(){
    nsIAccessible _retval;
    nsresult __result = inner.GetAccessibleAbove(&_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /**
   * Accessible node geometrically below this one
   */
  /* nsIAccessible getAccessibleBelow (); */
  nsIAccessibleD  GetAccessibleBelow(){
    nsIAccessible _retval;
    nsresult __result = inner.GetAccessibleBelow(&_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /**
   * Accessible node related to this one 
   */
  /* nsIAccessible getAccessibleRelated (in unsigned long aRelationType); */
  nsIAccessibleD  GetAccessibleRelated(PRUint32 aRelationType){
    nsIAccessible _retval;
    nsresult __result = inner.GetAccessibleRelated(aRelationType, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* void getBounds (out long x, out long y, out long width, out long height); */
  void GetBounds(out PRInt32 x, out PRInt32 y, out PRInt32 width, out PRInt32 height){
    nsresult __result = inner.GetBounds(&x, &y, &width, &height);
    CheckException(__result);
  }

  /**
   * Add this accessible to the current selection
   */
  /* void addSelection (); */
  void AddSelection(){
    nsresult __result = inner.AddSelection();
    CheckException(__result);
  }

  /**
   * Remove this accessible from the current selection
   */
  /* void removeSelection (); */
  void RemoveSelection(){
    nsresult __result = inner.RemoveSelection();
    CheckException(__result);
  }

  /**
   * Extend the current selection from its current accessible anchor node
   * to this accessible
   */
  /* void extendSelection (); */
  void ExtendSelection(){
    nsresult __result = inner.ExtendSelection();
    CheckException(__result);
  }

  /**
   * Select this accessible node only
   */
  /* void takeSelection (); */
  void TakeSelection(){
    nsresult __result = inner.TakeSelection();
    CheckException(__result);
  }

  /**
   * Focus this accessible node,
   * The state STATE_FOCUSABLE indicates whether this node is normally focusable.
   * It is the callers responsibility to determine whether this node is focusable.
   * accTakeFocus on a node that is not normally focusable (such as a table),
   * will still set focus on that node, although normally that will not be visually 
   * indicated in most style sheets.
   */
  /* void takeFocus (); */
  void TakeFocus(){
    nsresult __result = inner.TakeFocus();
    CheckException(__result);
  }

  /**
   * The number of accessible actions associated with this accessible
   */
  /* readonly attribute PRUint8 numActions; */
  PRUint8 NumActions(){
    PRUint8 value;
    nsresult __result = inner.GetNumActions(&value);
    CheckException(__result);
    return value;
  }

  /**
   * The name of the accessible action at the given zero-based index
   */
  /* AString getActionName (in PRUint8 index); */
  wchar[] GetActionName(PRUint8 index){
    scope auto _retval = new AString;
    nsresult __result = inner.GetActionName(index, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Perform the accessible action at the given zero-based index
   * Action number 0 is the default action
   */
  /* void doAction (in PRUint8 index); */
  void DoAction(PRUint8 index){
    nsresult __result = inner.DoAction(index);
    CheckException(__result);
  }

  /**
   * Get a pointer to accessibility interface for this node, which is specific 
   * to the OS/accessibility toolkit we're running on.
   */
  /* [noscript] void getNativeInterface (out voidPtr aOutAccessible); */
  void GetNativeInterface(out void * aOutAccessible){
    nsresult __result = inner.GetNativeInterface(&aOutAccessible);
    CheckException(__result);
  }

  /**
   * MSAA State flags - used for bitfield. More than 1 allowed.
   */
  enum { STATE_UNAVAILABLE = 1U }

  enum { STATE_SELECTED = 2U }

  enum { STATE_FOCUSED = 4U }

  enum { STATE_PRESSED = 8U }

  enum { STATE_CHECKED = 16U }

  enum { STATE_MIXED = 32U }

  enum { STATE_READONLY = 64U }

  enum { STATE_HOTTRACKED = 128U }

  enum { STATE_DEFAULT = 256U }

  enum { STATE_EXPANDED = 512U }

  enum { STATE_COLLAPSED = 1024U }

  enum { STATE_BUSY = 2048U }

  enum { STATE_FLOATING = 4096U }

  enum { STATE_MARQUEED = 8192U }

  enum { STATE_ANIMATED = 16384U }

  enum { STATE_INVISIBLE = 32768U }

  enum { STATE_OFFSCREEN = 65536U }

  enum { STATE_SIZEABLE = 131072U }

  enum { STATE_MOVEABLE = 262144U }

  enum { STATE_SELFVOICING = 524288U }

  enum { STATE_FOCUSABLE = 1048576U }

  enum { STATE_SELECTABLE = 2097152U }

  enum { STATE_LINKED = 4194304U }

  enum { STATE_TRAVERSED = 8388608U }

  enum { STATE_MULTISELECTABLE = 16777216U }

  enum { STATE_EXTSELECTABLE = 33554432U }

  enum { STATE_ALERT_LOW = 67108864U }

  enum { STATE_ALERT_MEDIUM = 134217728U }

  enum { STATE_ALERT_HIGH = 268435456U }

  enum { STATE_PROTECTED = 536870912U }

  enum { STATE_HASPOPUP = 1073741824U }

  enum { STATE_REQUIRED = 67108864U }

  enum { STATE_IMPORTANT = 134217728U }

  enum { STATE_INVALID = 268435456U }

  enum { STATE_CHECKABLE = 8192U }

  /**
 * Extended state flags (for now non-MSAA, for Java and Gnome/ATK support)
 * "Extended state flags" has seperate value space from "MSAA State flags".
 */
  enum { EXT_STATE_EDITABLE = 2097152U }

  enum { EXT_STATE_ACTIVE = 4194304U }

  enum { EXT_STATE_EXPANDABLE = 8388608U }

  enum { EXT_STATE_MODAL = 16777216U }

  enum { EXT_STATE_MULTI_LINE = 33554432U }

  enum { EXT_STATE_SENSITIVE = 67108864U }

  enum { EXT_STATE_SHOWING = 268435456U }

  enum { EXT_STATE_SINGLE_LINE = 536870912U }

  enum { EXT_STATE_TRANSIENT = 1073741824U }

  enum { EXT_STATE_VERTICAL = 2147483648U }

  /**
 * Relation Types -- most of these come from ATK's atkrelationtype.h
 * RELATION_NULL:
 * RELATION_CONTROLLED_BY:    Controlled by one or more target objects.
 * RELATION_CONTROLLER_FOR:   Controller for one or more target objects.
 * RELATION_LABEL_FOR:        Label for one or more target objects.
 * RELATION_LABELLED_BY:      Labelled by one or more target objects.
 * RELATION_MEMBER_OF:        Member of a group of one or more target objects.
 * RELATION_NODE_CHILD_OF:    Cell in a treetable which is displayed because a
 *                            cell in the same col is expanded & identifies it.
 * RELATION_FLOWS_TO:         Has content that flows logically to another
 *                            object in a sequential way, e.g. text flow.
 * RELATION_FLOWS_FROM:       Has content that flows logically from another
 *                            object in a sequential way, e.g. text flow.
 * RELATION_SUBWINDOW_OF:     Subwindow attached to a component but otherwise 
 *                            not connected in the UI hierarchy to that component.
 * RELATION_EMBEDS:           Visually embeds another object's content, i.e.
 *                            this object's content flows around another's content.
 * RELATION_EMBEDDED_BY:      Inverse of RELATION_EMBEDS; this object's content
 *                            is visually embedded in another object.
 * RELATION_POPUP_FOR:        Popup for another object.
 * RELATION_PARENT_WINDOW_OF: Parent window of another object.
 * RELATION_DEFAULT_BUTTON:   Part of a form/dialog with a related default button.
 * RELATION_DESCRIBED_BY:     Described by one or more target objects.
 * RELATION_DESCRIPTION_FOR:  Description for one or more target objects.
 * RELATION_LAST_DEFINED:
 */
  enum { RELATION_NUL = 0U }

  enum { RELATION_CONTROLLED_BY = 1U }

  enum { RELATION_CONTROLLER_FOR = 2U }

  enum { RELATION_LABEL_FOR = 3U }

  enum { RELATION_LABELLED_BY = 4U }

  enum { RELATION_MEMBER_OF = 5U }

  enum { RELATION_NODE_CHILD_OF = 6U }

  enum { RELATION_FLOWS_TO = 7U }

  enum { RELATION_FLOWS_FROM = 8U }

  enum { RELATION_SUBWINDOW_OF = 9U }

  enum { RELATION_EMBEDS = 10U }

  enum { RELATION_EMBEDDED_BY = 11U }

  enum { RELATION_POPUP_FOR = 12U }

  enum { RELATION_PARENT_WINDOW_OF = 13U }

  enum { RELATION_DEFAULT_BUTTON = 16384U }

  enum { RELATION_DESCRIBED_BY = 16385U }

  enum { RELATION_DESCRIPTION_FOR = 16386U }

private:
  nsIAccessible inner;

}

