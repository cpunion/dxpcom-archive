/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULElement.idl
 */

module mozilla.dxpcom.nsIDOMXULElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMXULElement;


public import mozilla.dxpcom.nsIDOMXULElementD;

public import mozilla.xpcom.nsIDOMElement;
public import mozilla.dxpcom.nsIDOMElementD;

public import mozilla.xpcom.nsIRDFCompositeDataSource;

public import mozilla.dxpcom.nsIRDFCompositeDataSourceD;

public import mozilla.xpcom.nsIXULTemplateBuilder;

public import mozilla.dxpcom.nsIXULTemplateBuilderD;

public import mozilla.xpcom.nsIRDFResource;

public import mozilla.dxpcom.nsIRDFResourceD;

public import mozilla.xpcom.nsIControllers;

public import mozilla.dxpcom.nsIControllersD;

public import mozilla.xpcom.nsIBoxObject;

public import mozilla.dxpcom.nsIBoxObjectD;


/* starting wrapper class:    nsIDOMXULElement */
class nsIDOMXULElementD : public nsIDOMElementD {

  static const nsIID IID = NS_IDOMXULELEMENT_IID;


  alias nsIDOMXULElement InnerType;

  this(nsIDOMXULElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMXULElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMXULElement value) {
    inner = value;
  }

  /* attribute DOMString id; */
  wchar[] Id(){
    scope auto value = new AString();
    nsresult __result = inner.GetId(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Id(wchar[] aId){
    scope auto value = new AString(aId);
    nsresult __result = inner.SetId(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString className; */
  wchar[] ClassName(){
    scope auto value = new AString();
    nsresult __result = inner.GetClassName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void ClassName(wchar[] aClassName){
    scope auto value = new AString(aClassName);
    nsresult __result = inner.SetClassName(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString align; */
  wchar[] Align(){
    scope auto value = new AString();
    nsresult __result = inner.GetAlign(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Align(wchar[] aAlign){
    scope auto value = new AString(aAlign);
    nsresult __result = inner.SetAlign(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString dir; */
  wchar[] Dir(){
    scope auto value = new AString();
    nsresult __result = inner.GetDir(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Dir(wchar[] aDir){
    scope auto value = new AString(aDir);
    nsresult __result = inner.SetDir(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString flex; */
  wchar[] Flex(){
    scope auto value = new AString();
    nsresult __result = inner.GetFlex(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Flex(wchar[] aFlex){
    scope auto value = new AString(aFlex);
    nsresult __result = inner.SetFlex(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString flexGroup; */
  wchar[] FlexGroup(){
    scope auto value = new AString();
    nsresult __result = inner.GetFlexGroup(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void FlexGroup(wchar[] aFlexGroup){
    scope auto value = new AString(aFlexGroup);
    nsresult __result = inner.SetFlexGroup(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString ordinal; */
  wchar[] Ordinal(){
    scope auto value = new AString();
    nsresult __result = inner.GetOrdinal(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Ordinal(wchar[] aOrdinal){
    scope auto value = new AString(aOrdinal);
    nsresult __result = inner.SetOrdinal(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString orient; */
  wchar[] Orient(){
    scope auto value = new AString();
    nsresult __result = inner.GetOrient(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Orient(wchar[] aOrient){
    scope auto value = new AString(aOrient);
    nsresult __result = inner.SetOrient(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString pack; */
  wchar[] Pack(){
    scope auto value = new AString();
    nsresult __result = inner.GetPack(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Pack(wchar[] aPack){
    scope auto value = new AString(aPack);
    nsresult __result = inner.SetPack(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute boolean hidden; */
  PRBool Hidden(){
    PRBool value;
    nsresult __result = inner.GetHidden(&value);
    CheckException(__result);
    return value;
  }
  void Hidden(PRBool aHidden){
    nsresult __result = inner.SetHidden(aHidden);
    CheckException(__result);
  }

  /* attribute boolean collapsed; */
  PRBool Collapsed(){
    PRBool value;
    nsresult __result = inner.GetCollapsed(&value);
    CheckException(__result);
    return value;
  }
  void Collapsed(PRBool aCollapsed){
    nsresult __result = inner.SetCollapsed(aCollapsed);
    CheckException(__result);
  }

  /* attribute DOMString observes; */
  wchar[] Observes(){
    scope auto value = new AString();
    nsresult __result = inner.GetObserves(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Observes(wchar[] aObserves){
    scope auto value = new AString(aObserves);
    nsresult __result = inner.SetObserves(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString menu; */
  wchar[] Menu(){
    scope auto value = new AString();
    nsresult __result = inner.GetMenu(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Menu(wchar[] aMenu){
    scope auto value = new AString(aMenu);
    nsresult __result = inner.SetMenu(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString contextMenu; */
  wchar[] ContextMenu(){
    scope auto value = new AString();
    nsresult __result = inner.GetContextMenu(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void ContextMenu(wchar[] aContextMenu){
    scope auto value = new AString(aContextMenu);
    nsresult __result = inner.SetContextMenu(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString tooltip; */
  wchar[] Tooltip(){
    scope auto value = new AString();
    nsresult __result = inner.GetTooltip(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Tooltip(wchar[] aTooltip){
    scope auto value = new AString(aTooltip);
    nsresult __result = inner.SetTooltip(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString width; */
  wchar[] Width(){
    scope auto value = new AString();
    nsresult __result = inner.GetWidth(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Width(wchar[] aWidth){
    scope auto value = new AString(aWidth);
    nsresult __result = inner.SetWidth(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString height; */
  wchar[] Height(){
    scope auto value = new AString();
    nsresult __result = inner.GetHeight(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Height(wchar[] aHeight){
    scope auto value = new AString(aHeight);
    nsresult __result = inner.SetHeight(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString minWidth; */
  wchar[] MinWidth(){
    scope auto value = new AString();
    nsresult __result = inner.GetMinWidth(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void MinWidth(wchar[] aMinWidth){
    scope auto value = new AString(aMinWidth);
    nsresult __result = inner.SetMinWidth(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString minHeight; */
  wchar[] MinHeight(){
    scope auto value = new AString();
    nsresult __result = inner.GetMinHeight(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void MinHeight(wchar[] aMinHeight){
    scope auto value = new AString(aMinHeight);
    nsresult __result = inner.SetMinHeight(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString maxWidth; */
  wchar[] MaxWidth(){
    scope auto value = new AString();
    nsresult __result = inner.GetMaxWidth(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void MaxWidth(wchar[] aMaxWidth){
    scope auto value = new AString(aMaxWidth);
    nsresult __result = inner.SetMaxWidth(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString maxHeight; */
  wchar[] MaxHeight(){
    scope auto value = new AString();
    nsresult __result = inner.GetMaxHeight(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void MaxHeight(wchar[] aMaxHeight){
    scope auto value = new AString(aMaxHeight);
    nsresult __result = inner.SetMaxHeight(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString persist; */
  wchar[] Persist(){
    scope auto value = new AString();
    nsresult __result = inner.GetPersist(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Persist(wchar[] aPersist){
    scope auto value = new AString(aPersist);
    nsresult __result = inner.SetPersist(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString left; */
  wchar[] Left(){
    scope auto value = new AString();
    nsresult __result = inner.GetLeft(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Left(wchar[] aLeft){
    scope auto value = new AString(aLeft);
    nsresult __result = inner.SetLeft(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString top; */
  wchar[] Top(){
    scope auto value = new AString();
    nsresult __result = inner.GetTop(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Top(wchar[] aTop){
    scope auto value = new AString(aTop);
    nsresult __result = inner.SetTop(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString datasources; */
  wchar[] Datasources(){
    scope auto value = new AString();
    nsresult __result = inner.GetDatasources(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Datasources(wchar[] aDatasources){
    scope auto value = new AString(aDatasources);
    nsresult __result = inner.SetDatasources(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString ref; */
  wchar[] Ref(){
    scope auto value = new AString();
    nsresult __result = inner.GetRef(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Ref(wchar[] aRef){
    scope auto value = new AString(aRef);
    nsresult __result = inner.SetRef(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString tooltipText; */
  wchar[] TooltipText(){
    scope auto value = new AString();
    nsresult __result = inner.GetTooltipText(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void TooltipText(wchar[] aTooltipText){
    scope auto value = new AString(aTooltipText);
    nsresult __result = inner.SetTooltipText(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString statusText; */
  wchar[] StatusText(){
    scope auto value = new AString();
    nsresult __result = inner.GetStatusText(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void StatusText(wchar[] aStatusText){
    scope auto value = new AString(aStatusText);
    nsresult __result = inner.SetStatusText(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute boolean allowEvents; */
  PRBool AllowEvents(){
    PRBool value;
    nsresult __result = inner.GetAllowEvents(&value);
    CheckException(__result);
    return value;
  }
  void AllowEvents(PRBool aAllowEvents){
    nsresult __result = inner.SetAllowEvents(aAllowEvents);
    CheckException(__result);
  }

  /* readonly attribute nsIDOMCSSStyleDeclaration style; */
  nsIDOMCSSStyleDeclarationD  Style(){
    nsIDOMCSSStyleDeclaration value;
    nsresult __result = inner.GetStyle(&value);
    CheckException(__result);
    return new nsIDOMCSSStyleDeclarationD(value);
  }

  /* readonly attribute nsIRDFCompositeDataSource database; */
  nsIRDFCompositeDataSourceD  Database(){
    nsIRDFCompositeDataSource value;
    nsresult __result = inner.GetDatabase(&value);
    CheckException(__result);
    return new nsIRDFCompositeDataSourceD(value);
  }

  /* readonly attribute nsIXULTemplateBuilder builder; */
  nsIXULTemplateBuilderD  Builder(){
    nsIXULTemplateBuilder value;
    nsresult __result = inner.GetBuilder(&value);
    CheckException(__result);
    return new nsIXULTemplateBuilderD(value);
  }

  /* readonly attribute nsIRDFResource resource; */
  nsIRDFResourceD  Resource(){
    nsIRDFResource value;
    nsresult __result = inner.GetResource(&value);
    CheckException(__result);
    return new nsIRDFResourceD(value);
  }

  /* readonly attribute nsIControllers controllers; */
  nsIControllersD  Controllers(){
    nsIControllers value;
    nsresult __result = inner.GetControllers(&value);
    CheckException(__result);
    return new nsIControllersD(value);
  }

  /* readonly attribute nsIBoxObject boxObject; */
  nsIBoxObjectD  BoxObject(){
    nsIBoxObject value;
    nsresult __result = inner.GetBoxObject(&value);
    CheckException(__result);
    return new nsIBoxObjectD(value);
  }

  /* void focus (); */
  void Focus(){
    nsresult __result = inner.Focus();
    CheckException(__result);
  }

  /* void blur (); */
  void Blur(){
    nsresult __result = inner.Blur();
    CheckException(__result);
  }

  /* void click (); */
  void Click(){
    nsresult __result = inner.Click();
    CheckException(__result);
  }

  /* void doCommand (); */
  void DoCommand(){
    nsresult __result = inner.DoCommand();
    CheckException(__result);
  }

  /* nsIDOMNodeList getElementsByAttribute (in DOMString name, in DOMString value); */
  nsIDOMNodeListD  GetElementsByAttribute(wchar[] name, wchar[] value){
    scope auto _name = new AString(name);
    scope auto _value = new AString(value);
    nsIDOMNodeList _retval;
    nsresult __result = inner.GetElementsByAttribute(cast(nsAString*)_name, cast(nsAString*)_value, &_retval);
    CheckException(__result);
    return new nsIDOMNodeListD(_retval);
  }

private:
  nsIDOMXULElement inner;

}

