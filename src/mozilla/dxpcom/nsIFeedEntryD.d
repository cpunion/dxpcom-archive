/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFeedEntry.idl
 */

module mozilla.dxpcom.nsIFeedEntryD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFeedEntry;


public import mozilla.dxpcom.nsIFeedEntryD;

public import mozilla.xpcom.nsIFeedContainer;
public import mozilla.dxpcom.nsIFeedContainerD;

public import mozilla.xpcom.nsIArray;

public import mozilla.dxpcom.nsIArrayD;


/* starting wrapper class:    nsIFeedEntry */
/**
 * An nsIFeedEntry represents an Atom or RSS entry/item. Summary
 * and/or full-text content may be available, but callers will have to
 * check both.
 */
class nsIFeedEntryD : public nsIFeedContainerD {

  static const nsIID IID = NS_IFEEDENTRY_IID;


  alias nsIFeedEntry InnerType;

  this(nsIFeedEntry intr){
    super(intr);
    this.inner = intr;
  }

  nsIFeedEntry opCast() {
    return inner;
  }

  void opAssign(nsIFeedEntry value) {
    inner = value;
  }

  /**
  * Uses description, subtitle, summary, content and extensions
  * to generate a summary. 
  * 
  */
  /* attribute nsIFeedTextConstruct summary; */
  nsIFeedTextConstructD  Summary(){
    nsIFeedTextConstruct value;
    nsresult __result = inner.GetSummary(&value);
    CheckException(__result);
    return new nsIFeedTextConstructD(value);
  }
  void Summary(nsIFeedTextConstructD  aSummary){
    nsIFeedTextConstruct value;
    nsresult __result = inner.SetSummary(value);
    CheckException(__result);
  }

  /**
   * The date the entry was published, in RFC822 form. Parsable by JS
   * and mail code.
   */
  /* attribute AString published; */
  wchar[] Published(){
    scope auto value = new AString();
    nsresult __result = inner.GetPublished(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Published(wchar[] aPublished){
    scope auto value = new AString(aPublished);
    nsresult __result = inner.SetPublished(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
  * Uses atom:content and content:encoded to provide
  * a 'full text' view of an entry.
  *
  */
  /* attribute nsIFeedTextConstruct content; */
  nsIFeedTextConstructD  Content(){
    nsIFeedTextConstruct value;
    nsresult __result = inner.GetContent(&value);
    CheckException(__result);
    return new nsIFeedTextConstructD(value);
  }
  void Content(nsIFeedTextConstructD  aContent){
    nsIFeedTextConstruct value;
    nsresult __result = inner.SetContent(value);
    CheckException(__result);
  }

  /**
  * Enclosures are podcasts, photocasts, etc.
  */
  /* attribute nsIArray enclosures; */
  nsIArrayD  Enclosures(){
    nsIArray value;
    nsresult __result = inner.GetEnclosures(&value);
    CheckException(__result);
    return new nsIArrayD(value);
  }
  void Enclosures(nsIArrayD  aEnclosures){
    nsIArray value;
    nsresult __result = inner.SetEnclosures(value);
    CheckException(__result);
  }

  /**
  * Enclosures, etc. that might be displayed inline.
  */
  /* attribute nsIArray mediaContent; */
  nsIArrayD  MediaContent(){
    nsIArray value;
    nsresult __result = inner.GetMediaContent(&value);
    CheckException(__result);
    return new nsIArrayD(value);
  }
  void MediaContent(nsIArrayD  aMediaContent){
    nsIArray value;
    nsresult __result = inner.SetMediaContent(value);
    CheckException(__result);
  }

private:
  nsIFeedEntry inner;

}

