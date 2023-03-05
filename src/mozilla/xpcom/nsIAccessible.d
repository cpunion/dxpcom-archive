/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessible.idl
 */

module mozilla.xpcom.nsIAccessible;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIAccessible */
const char[] NS_IACCESSIBLE_IID_STR = "db717db4-37e9-42f1-a3b0-2579dd7c3814";

const nsIID NS_IACCESSIBLE_IID= 
  {0xdb717db4, 0x37e9, 0x42f1, 
    [ 0xa3, 0xb0, 0x25, 0x79, 0xdd, 0x7c, 0x38, 0x14 ]};

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
extern(Windows)
interface nsIAccessible : nsISupports {
  static const char[] IID_STR = NS_IACCESSIBLE_IID_STR;
  static const nsIID IID = NS_IACCESSIBLE_IID;

  /**
   * Parent node in accessible tree.
   */
  /* readonly attribute nsIAccessible parent; */
  nsresult GetParent(nsIAccessible  *aParent);

  /**
   * Next sibling in accessible tree
   */
  /* readonly attribute nsIAccessible nextSibling; */
  nsresult GetNextSibling(nsIAccessible  *aNextSibling);

  /**
   * Previous sibling in accessible tree
   */
  /* readonly attribute nsIAccessible previousSibling; */
  nsresult GetPreviousSibling(nsIAccessible  *aPreviousSibling);

  /**
   * First child in accessible tree
   */
  /* readonly attribute nsIAccessible firstChild; */
  nsresult GetFirstChild(nsIAccessible  *aFirstChild);

  /**
   * Last child in accessible tree
   */
  /* readonly attribute nsIAccessible lastChild; */
  nsresult GetLastChild(nsIAccessible  *aLastChild);

  /**
   * Number of accessible children
   */
  /* readonly attribute long childCount; */
  nsresult GetChildCount(PRInt32 *aChildCount);

  /**
   * The 0-based index of this accessible in its parent's list of children,
   * or -1 if this accessible does not have a parent.
   */
  /* readonly attribute long indexInParent; */
  nsresult GetIndexInParent(PRInt32 *aIndexInParent);

  /**
   * Accessible name -- the main text equivalent for this node
   */
  /* attribute AString name; */
  nsresult GetName(nsAString * aName);
  nsresult SetName(nsAString * aName);

  /**
   * Accessible value -- a number or a secondary text equivalent for this node
   * Widgets that use a role attribute can force a value using the valuenow attribute
   */
  /* readonly attribute AString finalValue; */
  nsresult GetFinalValue(nsAString * aFinalValue);

  /**
   * Accessible description -- long text associated with this node
   */
  /* readonly attribute AString description; */
  nsresult GetDescription(nsAString * aDescription);

  /**
   * Provides localized string of accesskey name, such as Alt+D.
   * The modifier may be affected by user and platform preferences.
   * Usually alt+letter, or just the letter alone for menu items. 
   */
  /* readonly attribute AString keyboardShortcut; */
  nsresult GetKeyboardShortcut(nsAString * aKeyboardShortcut);

  /**
   * Provides localized string of global keyboard accelerator, such
   * as Ctrl+O for Open file
   */
  /* readonly attribute AString keyBinding; */
  nsresult GetKeyBinding(nsAString * aKeyBinding);

  /**
   * Natural enumerated accessible role for the associated element.
   * The values depend on platform because of variations.
   * See the ROLE_* constants defined later in this file.
   * This does not take into account role attribute as the finalRole does.
   */
  /* readonly attribute unsigned long role; */
  nsresult GetRole(PRUint32 *aRole);

  /**
   * Enumerated accessible role. The values depend on platform because of variations.
   * See the ROLE_* constants defined later in this file.
   * Widgets can use role attribute to force the final role
   */
  /* readonly attribute unsigned long finalRole; */
  nsresult GetFinalRole(PRUint32 *aFinalRole);

  /**
   * Accessible states -- bit field which describes boolean properties of node. 
   * See the STATE_* constants defined later in this file.
   * Many states are only valid given a certain role attribute that supports them
   */
  /* readonly attribute unsigned long finalState; */
  nsresult GetFinalState(PRUint32 *aFinalState);

  /**
   * Extended accessible states -- second bit field describing node
   */
  /* readonly attribute unsigned long extState; */
  nsresult GetExtState(PRUint32 *aExtState);

  /**
   * Help text associated with node
   */
  /* readonly attribute AString help; */
  nsresult GetHelp(nsAString * aHelp);

  /**
   * Focused accessible child of node
   */
  /* readonly attribute nsIAccessible focusedChild; */
  nsresult GetFocusedChild(nsIAccessible  *aFocusedChild);

  /**
   * Accessible child which contains the coordinate at x,y
   */
  /* nsIAccessible getChildAtPoint (in long x, in long y); */
  nsresult GetChildAtPoint(PRInt32 x, PRInt32 y, nsIAccessible *_retval);

  /**
   * Nth accessible child using zero-based index or last child if index less than zero
   */
  /* nsIAccessible getChildAt (in long aChildIndex); */
  nsresult GetChildAt(PRInt32 aChildIndex, nsIAccessible *_retval);

  /**
   * Accessible node geometrically to the right of this one
   */
  /* nsIAccessible getAccessibleToRight (); */
  nsresult GetAccessibleToRight(nsIAccessible *_retval);

  /**
   * Accessible node geometrically to the left of this one
   */
  /* nsIAccessible getAccessibleToLeft (); */
  nsresult GetAccessibleToLeft(nsIAccessible *_retval);

  /**
   * Accessible node geometrically above this one
   */
  /* nsIAccessible getAccessibleAbove (); */
  nsresult GetAccessibleAbove(nsIAccessible *_retval);

  /**
   * Accessible node geometrically below this one
   */
  /* nsIAccessible getAccessibleBelow (); */
  nsresult GetAccessibleBelow(nsIAccessible *_retval);

  /**
   * Accessible node related to this one 
   */
  /* nsIAccessible getAccessibleRelated (in unsigned long aRelationType); */
  nsresult GetAccessibleRelated(PRUint32 aRelationType, nsIAccessible *_retval);

  /* void getBounds (out long x, out long y, out long width, out long height); */
  nsresult GetBounds(PRInt32 *x, PRInt32 *y, PRInt32 *width, PRInt32 *height);

  /**
   * Add this accessible to the current selection
   */
  /* void addSelection (); */
  nsresult AddSelection();

  /**
   * Remove this accessible from the current selection
   */
  /* void removeSelection (); */
  nsresult RemoveSelection();

  /**
   * Extend the current selection from its current accessible anchor node
   * to this accessible
   */
  /* void extendSelection (); */
  nsresult ExtendSelection();

  /**
   * Select this accessible node only
   */
  /* void takeSelection (); */
  nsresult TakeSelection();

  /**
   * Focus this accessible node,
   * The state STATE_FOCUSABLE indicates whether this node is normally focusable.
   * It is the callers responsibility to determine whether this node is focusable.
   * accTakeFocus on a node that is not normally focusable (such as a table),
   * will still set focus on that node, although normally that will not be visually 
   * indicated in most style sheets.
   */
  /* void takeFocus (); */
  nsresult TakeFocus();

  /**
   * The number of accessible actions associated with this accessible
   */
  /* readonly attribute PRUint8 numActions; */
  nsresult GetNumActions(PRUint8 *aNumActions);

  /**
   * The name of the accessible action at the given zero-based index
   */
  /* AString getActionName (in PRUint8 index); */
  nsresult GetActionName(PRUint8 index, nsAString * _retval);

  /**
   * Perform the accessible action at the given zero-based index
   * Action number 0 is the default action
   */
  /* void doAction (in PRUint8 index); */
  nsresult DoAction(PRUint8 index);

  /**
   * Get a pointer to accessibility interface for this node, which is specific 
   * to the OS/accessibility toolkit we're running on.
   */
  /* [noscript] void getNativeInterface (out voidPtr aOutAccessible); */
  nsresult GetNativeInterface(void * *aOutAccessible);

  /**
   * MSAA State flags - used for bitfield. More than 1 allowed.
   */
  enum { STATE_UNAVAILABLE = 1U };

  enum { STATE_SELECTED = 2U };

  enum { STATE_FOCUSED = 4U };

  enum { STATE_PRESSED = 8U };

  enum { STATE_CHECKED = 16U };

  enum { STATE_MIXED = 32U };

  enum { STATE_READONLY = 64U };

  enum { STATE_HOTTRACKED = 128U };

  enum { STATE_DEFAULT = 256U };

  enum { STATE_EXPANDED = 512U };

  enum { STATE_COLLAPSED = 1024U };

  enum { STATE_BUSY = 2048U };

  enum { STATE_FLOATING = 4096U };

  enum { STATE_MARQUEED = 8192U };

  enum { STATE_ANIMATED = 16384U };

  enum { STATE_INVISIBLE = 32768U };

  enum { STATE_OFFSCREEN = 65536U };

  enum { STATE_SIZEABLE = 131072U };

  enum { STATE_MOVEABLE = 262144U };

  enum { STATE_SELFVOICING = 524288U };

  enum { STATE_FOCUSABLE = 1048576U };

  enum { STATE_SELECTABLE = 2097152U };

  enum { STATE_LINKED = 4194304U };

  enum { STATE_TRAVERSED = 8388608U };

  enum { STATE_MULTISELECTABLE = 16777216U };

  enum { STATE_EXTSELECTABLE = 33554432U };

  enum { STATE_ALERT_LOW = 67108864U };

  enum { STATE_ALERT_MEDIUM = 134217728U };

  enum { STATE_ALERT_HIGH = 268435456U };

  enum { STATE_PROTECTED = 536870912U };

  enum { STATE_HASPOPUP = 1073741824U };

  enum { STATE_REQUIRED = 67108864U };

  enum { STATE_IMPORTANT = 134217728U };

  enum { STATE_INVALID = 268435456U };

  enum { STATE_CHECKABLE = 8192U };

  /**
 * Extended state flags (for now non-MSAA, for Java and Gnome/ATK support)
 * "Extended state flags" has seperate value space from "MSAA State flags".
 */
  enum { EXT_STATE_EDITABLE = 2097152U };

  enum { EXT_STATE_ACTIVE = 4194304U };

  enum { EXT_STATE_EXPANDABLE = 8388608U };

  enum { EXT_STATE_MODAL = 16777216U };

  enum { EXT_STATE_MULTI_LINE = 33554432U };

  enum { EXT_STATE_SENSITIVE = 67108864U };

  enum { EXT_STATE_SHOWING = 268435456U };

  enum { EXT_STATE_SINGLE_LINE = 536870912U };

  enum { EXT_STATE_TRANSIENT = 1073741824U };

  enum { EXT_STATE_VERTICAL = 2147483648U };

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
  enum { RELATION_NUL = 0U };

  enum { RELATION_CONTROLLED_BY = 1U };

  enum { RELATION_CONTROLLER_FOR = 2U };

  enum { RELATION_LABEL_FOR = 3U };

  enum { RELATION_LABELLED_BY = 4U };

  enum { RELATION_MEMBER_OF = 5U };

  enum { RELATION_NODE_CHILD_OF = 6U };

  enum { RELATION_FLOWS_TO = 7U };

  enum { RELATION_FLOWS_FROM = 8U };

  enum { RELATION_SUBWINDOW_OF = 9U };

  enum { RELATION_EMBEDS = 10U };

  enum { RELATION_EMBEDDED_BY = 11U };

  enum { RELATION_POPUP_FOR = 12U };

  enum { RELATION_PARENT_WINDOW_OF = 13U };

  enum { RELATION_DEFAULT_BUTTON = 16384U };

  enum { RELATION_DESCRIBED_BY = 16385U };

  enum { RELATION_DESCRIPTION_FOR = 16386U };

}

