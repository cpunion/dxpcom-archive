/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULElement.idl
 */

module mozilla.xpcom.nsIDOMXULElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.xpcom.nsIRDFCompositeDataSource; /* forward declaration */

public import mozilla.xpcom.nsIXULTemplateBuilder; /* forward declaration */

public import mozilla.xpcom.nsIRDFResource; /* forward declaration */

public import mozilla.xpcom.nsIControllers; /* forward declaration */

public import mozilla.xpcom.nsIBoxObject; /* forward declaration */


/* starting interface:    nsIDOMXULElement */
const char[] NS_IDOMXULELEMENT_IID_STR = "0574ed81-c088-11d2-96ed-00104b7b7deb";

const nsIID NS_IDOMXULELEMENT_IID= 
  {0x0574ed81, 0xc088, 0x11d2, 
    [ 0x96, 0xed, 0x00, 0x10, 0x4b, 0x7b, 0x7d, 0xeb ]};

extern(Windows)
interface nsIDOMXULElement : nsIDOMElement {
  static const char[] IID_STR = NS_IDOMXULELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMXULELEMENT_IID;

  /* attribute DOMString id; */
  nsresult GetId(nsAString * aId);
  nsresult SetId(nsAString * aId);

  /* attribute DOMString className; */
  nsresult GetClassName(nsAString * aClassName);
  nsresult SetClassName(nsAString * aClassName);

  /* attribute DOMString align; */
  nsresult GetAlign(nsAString * aAlign);
  nsresult SetAlign(nsAString * aAlign);

  /* attribute DOMString dir; */
  nsresult GetDir(nsAString * aDir);
  nsresult SetDir(nsAString * aDir);

  /* attribute DOMString flex; */
  nsresult GetFlex(nsAString * aFlex);
  nsresult SetFlex(nsAString * aFlex);

  /* attribute DOMString flexGroup; */
  nsresult GetFlexGroup(nsAString * aFlexGroup);
  nsresult SetFlexGroup(nsAString * aFlexGroup);

  /* attribute DOMString ordinal; */
  nsresult GetOrdinal(nsAString * aOrdinal);
  nsresult SetOrdinal(nsAString * aOrdinal);

  /* attribute DOMString orient; */
  nsresult GetOrient(nsAString * aOrient);
  nsresult SetOrient(nsAString * aOrient);

  /* attribute DOMString pack; */
  nsresult GetPack(nsAString * aPack);
  nsresult SetPack(nsAString * aPack);

  /* attribute boolean hidden; */
  nsresult GetHidden(PRBool *aHidden);
  nsresult SetHidden(PRBool aHidden);

  /* attribute boolean collapsed; */
  nsresult GetCollapsed(PRBool *aCollapsed);
  nsresult SetCollapsed(PRBool aCollapsed);

  /* attribute DOMString observes; */
  nsresult GetObserves(nsAString * aObserves);
  nsresult SetObserves(nsAString * aObserves);

  /* attribute DOMString menu; */
  nsresult GetMenu(nsAString * aMenu);
  nsresult SetMenu(nsAString * aMenu);

  /* attribute DOMString contextMenu; */
  nsresult GetContextMenu(nsAString * aContextMenu);
  nsresult SetContextMenu(nsAString * aContextMenu);

  /* attribute DOMString tooltip; */
  nsresult GetTooltip(nsAString * aTooltip);
  nsresult SetTooltip(nsAString * aTooltip);

  /* attribute DOMString width; */
  nsresult GetWidth(nsAString * aWidth);
  nsresult SetWidth(nsAString * aWidth);

  /* attribute DOMString height; */
  nsresult GetHeight(nsAString * aHeight);
  nsresult SetHeight(nsAString * aHeight);

  /* attribute DOMString minWidth; */
  nsresult GetMinWidth(nsAString * aMinWidth);
  nsresult SetMinWidth(nsAString * aMinWidth);

  /* attribute DOMString minHeight; */
  nsresult GetMinHeight(nsAString * aMinHeight);
  nsresult SetMinHeight(nsAString * aMinHeight);

  /* attribute DOMString maxWidth; */
  nsresult GetMaxWidth(nsAString * aMaxWidth);
  nsresult SetMaxWidth(nsAString * aMaxWidth);

  /* attribute DOMString maxHeight; */
  nsresult GetMaxHeight(nsAString * aMaxHeight);
  nsresult SetMaxHeight(nsAString * aMaxHeight);

  /* attribute DOMString persist; */
  nsresult GetPersist(nsAString * aPersist);
  nsresult SetPersist(nsAString * aPersist);

  /* attribute DOMString left; */
  nsresult GetLeft(nsAString * aLeft);
  nsresult SetLeft(nsAString * aLeft);

  /* attribute DOMString top; */
  nsresult GetTop(nsAString * aTop);
  nsresult SetTop(nsAString * aTop);

  /* attribute DOMString datasources; */
  nsresult GetDatasources(nsAString * aDatasources);
  nsresult SetDatasources(nsAString * aDatasources);

  /* attribute DOMString ref; */
  nsresult GetRef(nsAString * aRef);
  nsresult SetRef(nsAString * aRef);

  /* attribute DOMString tooltipText; */
  nsresult GetTooltipText(nsAString * aTooltipText);
  nsresult SetTooltipText(nsAString * aTooltipText);

  /* attribute DOMString statusText; */
  nsresult GetStatusText(nsAString * aStatusText);
  nsresult SetStatusText(nsAString * aStatusText);

  /* attribute boolean allowEvents; */
  nsresult GetAllowEvents(PRBool *aAllowEvents);
  nsresult SetAllowEvents(PRBool aAllowEvents);

  /* readonly attribute nsIDOMCSSStyleDeclaration style; */
  nsresult GetStyle(nsIDOMCSSStyleDeclaration  *aStyle);

  /* readonly attribute nsIRDFCompositeDataSource database; */
  nsresult GetDatabase(nsIRDFCompositeDataSource  *aDatabase);

  /* readonly attribute nsIXULTemplateBuilder builder; */
  nsresult GetBuilder(nsIXULTemplateBuilder  *aBuilder);

  /* readonly attribute nsIRDFResource resource; */
  nsresult GetResource(nsIRDFResource  *aResource);

  /* readonly attribute nsIControllers controllers; */
  nsresult GetControllers(nsIControllers  *aControllers);

  /* readonly attribute nsIBoxObject boxObject; */
  nsresult GetBoxObject(nsIBoxObject  *aBoxObject);

  /* void focus (); */
  nsresult Focus();

  /* void blur (); */
  nsresult Blur();

  /* void click (); */
  nsresult Click();

  /* void doCommand (); */
  nsresult DoCommand();

  /* nsIDOMNodeList getElementsByAttribute (in DOMString name, in DOMString value); */
  nsresult GetElementsByAttribute(nsAString * name, nsAString * value, nsIDOMNodeList *_retval);

}

