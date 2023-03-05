/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFeed.idl
 */

module mozilla.dxpcom.nsIFeedD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFeed;


public import mozilla.dxpcom.nsIFeedD;

public import mozilla.xpcom.nsIFeedContainer;
public import mozilla.dxpcom.nsIFeedContainerD;

public import mozilla.xpcom.nsIArray;

public import mozilla.dxpcom.nsIArrayD;

public import mozilla.xpcom.nsIFeedGenerator;

public import mozilla.dxpcom.nsIFeedGeneratorD;


/* starting wrapper class:    nsIFeed */
/**
 * An nsIFeed represents a single Atom or RSS feed.
 */
class nsIFeedD : public nsIFeedContainerD {

  static const nsIID IID = NS_IFEED_IID;


  alias nsIFeed InnerType;

  this(nsIFeed intr){
    super(intr);
    this.inner = intr;
  }

  nsIFeed opCast() {
    return inner;
  }

  void opAssign(nsIFeed value) {
    inner = value;
  }

  /** 
  * Uses description, subtitle, and extensions
  * to generate a summary. 
  */
  /* attribute nsIFeedTextConstruct subtitle; */
  nsIFeedTextConstructD  Subtitle(){
    nsIFeedTextConstruct value;
    nsresult __result = inner.GetSubtitle(&value);
    CheckException(__result);
    return new nsIFeedTextConstructD(value);
  }
  void Subtitle(nsIFeedTextConstructD  aSubtitle){
    nsIFeedTextConstruct value;
    nsresult __result = inner.SetSubtitle(value);
    CheckException(__result);
  }

  enum { TYPE_FEED = 0U }

  enum { TYPE_AUDIO = 1U }

  enum { TYPE_IMAGE = 2U }

  enum { TYPE_VIDEO = 4U }

  /**
  * The type of feed. For example, a podcast would be TYPE_AUDIO.
  */
  /* readonly attribute unsigned long type; */
  PRUint32 Type(){
    PRUint32 value;
    nsresult __result = inner.GetType(&value);
    CheckException(__result);
    return value;
  }

  /**
  * The total number of enclosures found in the feed.
  */
  /* attribute long enclosureCount; */
  PRInt32 EnclosureCount(){
    PRInt32 value;
    nsresult __result = inner.GetEnclosureCount(&value);
    CheckException(__result);
    return value;
  }
  void EnclosureCount(PRInt32 aEnclosureCount){
    nsresult __result = inner.SetEnclosureCount(aEnclosureCount);
    CheckException(__result);
  }

  /**
  * The items or entries in feed.
  */
  /* attribute nsIArray items; */
  nsIArrayD  Items(){
    nsIArray value;
    nsresult __result = inner.GetItems(&value);
    CheckException(__result);
    return new nsIArrayD(value);
  }
  void Items(nsIArrayD  aItems){
    nsIArray value;
    nsresult __result = inner.SetItems(value);
    CheckException(__result);
  }

  /**
  * No one really knows what cloud is for.
  *
  * It supposedly enables some sort of interaction with an XML-RPC or
  * SOAP service.
  */
  /* attribute nsIWritablePropertyBag2 cloud; */
  nsIWritablePropertyBag2D  Cloud(){
    nsIWritablePropertyBag2 value;
    nsresult __result = inner.GetCloud(&value);
    CheckException(__result);
    return new nsIWritablePropertyBag2D(value);
  }
  void Cloud(nsIWritablePropertyBag2D  aCloud){
    nsIWritablePropertyBag2 value;
    nsresult __result = inner.SetCloud(value);
    CheckException(__result);
  }

  /**
  * Information about the software that produced the feed.
  */
  /* attribute nsIFeedGenerator generator; */
  nsIFeedGeneratorD  Generator(){
    nsIFeedGenerator value;
    nsresult __result = inner.GetGenerator(&value);
    CheckException(__result);
    return new nsIFeedGeneratorD(value);
  }
  void Generator(nsIFeedGeneratorD  aGenerator){
    nsIFeedGenerator value;
    nsresult __result = inner.SetGenerator(value);
    CheckException(__result);
  }

  /**
  * An image url and some metadata (as defined by RSS2).
  *
  */
  /* attribute nsIWritablePropertyBag2 image; */
  nsIWritablePropertyBag2D  Image(){
    nsIWritablePropertyBag2 value;
    nsresult __result = inner.GetImage(&value);
    CheckException(__result);
    return new nsIWritablePropertyBag2D(value);
  }
  void Image(nsIWritablePropertyBag2D  aImage){
    nsIWritablePropertyBag2 value;
    nsresult __result = inner.SetImage(value);
    CheckException(__result);
  }

  /**
  * No one really knows what textInput is for.
  *
  * See
  * <http://www.cadenhead.org/workbench/news/2894/rss-joy-textinput>
  * for more details.
  */
  /* attribute nsIWritablePropertyBag2 textInput; */
  nsIWritablePropertyBag2D  TextInput(){
    nsIWritablePropertyBag2 value;
    nsresult __result = inner.GetTextInput(&value);
    CheckException(__result);
    return new nsIWritablePropertyBag2D(value);
  }
  void TextInput(nsIWritablePropertyBag2D  aTextInput){
    nsIWritablePropertyBag2 value;
    nsresult __result = inner.SetTextInput(value);
    CheckException(__result);
  }

  /**
  * Days to skip fetching. This field was supposed to designate
  * intervals for feed fetching. It's not generally implemented. For
  * example, if this array contained "Monday", aggregators should not
  * fetch the feed on Mondays.
  */
  /* attribute nsIArray skipDays; */
  nsIArrayD  SkipDays(){
    nsIArray value;
    nsresult __result = inner.GetSkipDays(&value);
    CheckException(__result);
    return new nsIArrayD(value);
  }
  void SkipDays(nsIArrayD  aSkipDays){
    nsIArray value;
    nsresult __result = inner.SetSkipDays(value);
    CheckException(__result);
  }

  /**
  * Hours to skip fetching. This field was supposed to designate
  * intervals for feed fetching. It's not generally implemented. See
  * <http://blogs.law.harvard.edu/tech/rss> for more information.
  */
  /* attribute nsIArray skipHours; */
  nsIArrayD  SkipHours(){
    nsIArray value;
    nsresult __result = inner.GetSkipHours(&value);
    CheckException(__result);
    return new nsIArrayD(value);
  }
  void SkipHours(nsIArrayD  aSkipHours){
    nsIArray value;
    nsresult __result = inner.SetSkipHours(value);
    CheckException(__result);
  }

private:
  nsIFeed inner;

}

