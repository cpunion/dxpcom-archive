/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFeedContainer.idl
 */

module mozilla.dxpcom.nsIFeedContainerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFeedContainer;


public import mozilla.dxpcom.nsIFeedContainerD;

public import mozilla.xpcom.nsIFeedElementBase;
public import mozilla.dxpcom.nsIFeedElementBaseD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIWritablePropertyBag2;

public import mozilla.dxpcom.nsIWritablePropertyBag2D;

public import mozilla.xpcom.nsIArray;

public import mozilla.dxpcom.nsIArrayD;

public import mozilla.xpcom.nsIFeedTextConstruct;

public import mozilla.dxpcom.nsIFeedTextConstructD;


/* starting wrapper class:    nsIFeedContainer */
/**
* A shared base for feeds and items, which are pretty similar,
* but they have some divergent attributes and require
* different convenience methods.
*/
class nsIFeedContainerD : public nsIFeedElementBaseD {

  static const nsIID IID = NS_IFEEDCONTAINER_IID;


  alias nsIFeedContainer InnerType;

  this(nsIFeedContainer intr){
    super(intr);
    this.inner = intr;
  }

  nsIFeedContainer opCast() {
    return inner;
  }

  void opAssign(nsIFeedContainer value) {
    inner = value;
  }

  /**
  * Many feeds contain an ID distinct from their URI, and
  * entries have standard fields for this in all major formats.
  */
  /* attribute AString id; */
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

  /**
  * The fields found in the document. Common Atom
  * and RSS fields are normalized. This includes some namespaced
  * extensions such as dc:subject and content:encoded. 
  * Consumers can avoid normalization by checking the feed type
  * and accessing specific fields.
  *
  * Common namespaces are accessed using prefixes, like get("dc:subject");.
  * See nsIFeedResult::registerExtensionPrefix.
  */
  /* attribute nsIWritablePropertyBag2 fields; */
  nsIWritablePropertyBag2D  Fields(){
    nsIWritablePropertyBag2 value;
    nsresult __result = inner.GetFields(&value);
    CheckException(__result);
    return new nsIWritablePropertyBag2D(value);
  }
  void Fields(nsIWritablePropertyBag2D  aFields){
    nsIWritablePropertyBag2 value;
    nsresult __result = inner.SetFields(value);
    CheckException(__result);
  }

  /**
   * Sometimes there's no title, or the title contains markup, so take
   * care in decoding the attribute.
   */
  /* attribute nsIFeedTextConstruct title; */
  nsIFeedTextConstructD  Title(){
    nsIFeedTextConstruct value;
    nsresult __result = inner.GetTitle(&value);
    CheckException(__result);
    return new nsIFeedTextConstructD(value);
  }
  void Title(nsIFeedTextConstructD  aTitle){
    nsIFeedTextConstruct value;
    nsresult __result = inner.SetTitle(value);
    CheckException(__result);
  }

  /**
  * Returns the primary link for the feed or entry.
  */
  /* attribute nsIURI link; */
  nsIURID  Link(){
    nsIURI value;
    nsresult __result = inner.GetLink(&value);
    CheckException(__result);
    return new nsIURID(value);
  }
  void Link(nsIURID  aLink){
    nsIURI value;
    nsresult __result = inner.SetLink(value);
    CheckException(__result);
  }

  /**
  * Returns all links for a feed or entry.
  */
  /* attribute nsIArray links; */
  nsIArrayD  Links(){
    nsIArray value;
    nsresult __result = inner.GetLinks(&value);
    CheckException(__result);
    return new nsIArrayD(value);
  }
  void Links(nsIArrayD  aLinks){
    nsIArray value;
    nsresult __result = inner.SetLinks(value);
    CheckException(__result);
  }

  /**
  * Returns the categories found in a feed or entry.
  */
  /* attribute nsIArray categories; */
  nsIArrayD  Categories(){
    nsIArray value;
    nsresult __result = inner.GetCategories(&value);
    CheckException(__result);
    return new nsIArrayD(value);
  }
  void Categories(nsIArrayD  aCategories){
    nsIArray value;
    nsresult __result = inner.SetCategories(value);
    CheckException(__result);
  }

  /**
   * The rights or license associated with a feed or entry.
   */
  /* attribute nsIFeedTextConstruct rights; */
  nsIFeedTextConstructD  Rights(){
    nsIFeedTextConstruct value;
    nsresult __result = inner.GetRights(&value);
    CheckException(__result);
    return new nsIFeedTextConstructD(value);
  }
  void Rights(nsIFeedTextConstructD  aRights){
    nsIFeedTextConstruct value;
    nsresult __result = inner.SetRights(value);
    CheckException(__result);
  }

  /**
   * A list of nsIFeedPersons that authored the feed.
   */
  /* attribute nsIArray authors; */
  nsIArrayD  Authors(){
    nsIArray value;
    nsresult __result = inner.GetAuthors(&value);
    CheckException(__result);
    return new nsIArrayD(value);
  }
  void Authors(nsIArrayD  aAuthors){
    nsIArray value;
    nsresult __result = inner.SetAuthors(value);
    CheckException(__result);
  }

  /**
   * A list of nsIFeedPersons that contributed to the feed.
   */
  /* attribute nsIArray contributors; */
  nsIArrayD  Contributors(){
    nsIArray value;
    nsresult __result = inner.GetContributors(&value);
    CheckException(__result);
    return new nsIArrayD(value);
  }
  void Contributors(nsIArrayD  aContributors){
    nsIArray value;
    nsresult __result = inner.SetContributors(value);
    CheckException(__result);
  }

  /**
   * The date the feed was updated, in RFC822 form. Parsable by JS
   * and mail code.
   */
  /* attribute AString updated; */
  wchar[] Updated(){
    scope auto value = new AString();
    nsresult __result = inner.GetUpdated(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Updated(wchar[] aUpdated){
    scope auto value = new AString(aUpdated);
    nsresult __result = inner.SetUpdated(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
  * Syncs a container's fields with its convenience attributes.
  */
  /* void normalize (); */
  void Normalize(){
    nsresult __result = inner.Normalize();
    CheckException(__result);
  }

private:
  nsIFeedContainer inner;

}

