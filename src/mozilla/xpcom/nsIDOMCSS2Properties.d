/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCSS2Properties.idl
 */

module mozilla.xpcom.nsIDOMCSS2Properties;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

alias PRUint64 DOMTimeStamp;

public import mozilla.xpcom.nsIDOMAttr; /* forward declaration */

public import mozilla.xpcom.nsIDOMCDATASection; /* forward declaration */

public import mozilla.xpcom.nsIDOMCharacterData; /* forward declaration */

public import mozilla.xpcom.nsIDOMComment; /* forward declaration */

public import mozilla.xpcom.nsIDOMDOMImplementation; /* forward declaration */
    
public import mozilla.xpcom.nsIDOMDocument; /* forward declaration */
    
public import mozilla.xpcom.nsIDOMDocumentFragment; /* forward declaration */

public import mozilla.xpcom.nsIDOMDocumentType; /* forward declaration */

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */

public import mozilla.xpcom.nsIDOMEntity; /* forward declaration */
    
public import mozilla.xpcom.nsIDOMEntityReference; /* forward declaration */

public import mozilla.xpcom.nsIDOMNSDocument; /* forward declaration */

public import mozilla.xpcom.nsIDOMNamedNodeMap; /* forward declaration */

public import mozilla.xpcom.nsIDOMNode; /* forward declaration */

public import mozilla.xpcom.nsIDOMNodeList; /* forward declaration */

public import mozilla.xpcom.nsIDOMNotation; /* forward declaration */

public import mozilla.xpcom.nsIDOMProcessingInstruction; /* forward declaration */

public import mozilla.xpcom.nsIDOMText; /* forward declaration */

public import mozilla.xpcom.nsIDOMDOMStringList; /* forward declaration */

public import mozilla.xpcom.nsIDOMNameList; /* forward declaration */

//public import mozilla.xpcom.DOMException; /* forward declaration */

//public import mozilla.xpcom.RangeException; /* forward declaration */

public import mozilla.xpcom.nsIDOMEvent;

public import mozilla.xpcom.nsIDOMEventListener;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.xpcom.nsIDOMHTMLFormElement;

public import mozilla.xpcom.nsIDOMBarProp;

public import mozilla.xpcom.nsIDOMWindowCollection;

public import mozilla.xpcom.nsIDOMHTMLCollection;

public import mozilla.xpcom.nsIDOMNavigator;

public import mozilla.xpcom.nsIDOMScreen;

public import mozilla.xpcom.nsIDOMHistory;

public import mozilla.xpcom.nsIDOMPkcs11;

public import mozilla.xpcom.nsIDOMMimeTypeArray;

public import mozilla.xpcom.nsIDOMPluginArray;

public import mozilla.xpcom.nsIDOMCrypto;

public import mozilla.xpcom.nsIDOMCRMFObject;

public import mozilla.xpcom.nsIDOMPlugin;

public import mozilla.xpcom.nsIDOMMimeType;

public import mozilla.xpcom.nsIDOMCSSRule;

public import mozilla.xpcom.nsIDOMCSSRuleList;

public import mozilla.xpcom.nsIDOMStyleSheet;

public import mozilla.xpcom.nsIDOMCSSValue;

public import mozilla.xpcom.nsIDOMMediaList;

public import mozilla.xpcom.nsIDOMCSSStyleSheet;

public import mozilla.xpcom.nsIDOMCSSStyleDeclaration;

public import mozilla.xpcom.nsIDOMAbstractView;

public import mozilla.xpcom.nsIDOMDocumentView;

public import mozilla.xpcom.nsIDOMXULSelectCntrlItemEl;

public import mozilla.xpcom.nsIDOMHTMLTableCaptionElem;

public import mozilla.xpcom.nsIDOMHTMLTableSectionElem;

public import mozilla.xpcom.nsIDOMStyleSheetList;

public import mozilla.xpcom.nsIDOMKeyEvent;

public import mozilla.xpcom.nsIDOMCounter;

public import mozilla.xpcom.nsIDOMRect;

public import mozilla.xpcom.nsIDOMRGBColor;

public import mozilla.xpcom.nsIDOMCounter;

public import mozilla.xpcom.nsIDOMCSSPrimitiveValue;

public import mozilla.xpcom.nsIDOMEventGroup;



/* starting interface:    nsIDOMCSS2Properties */
const char[] NS_IDOMCSS2PROPERTIES_IID_STR = "529b987a-cb21-4d58-99d7-9586e7662801";

const nsIID NS_IDOMCSS2PROPERTIES_IID= 
  {0x529b987a, 0xcb21, 0x4d58, 
    [ 0x99, 0xd7, 0x95, 0x86, 0xe7, 0x66, 0x28, 0x01 ]};

extern(Windows)
interface nsIDOMCSS2Properties : nsISupports {
  static const char[] IID_STR = NS_IDOMCSS2PROPERTIES_IID_STR;
  static const nsIID IID = NS_IDOMCSS2PROPERTIES_IID;

  /* attribute DOMString azimuth; */
  nsresult GetAzimuth(nsAString * aAzimuth);
  nsresult SetAzimuth(nsAString * aAzimuth);

  /* attribute DOMString background; */
  nsresult GetBackground(nsAString * aBackground);
  nsresult SetBackground(nsAString * aBackground);

  /* attribute DOMString backgroundAttachment; */
  nsresult GetBackgroundAttachment(nsAString * aBackgroundAttachment);
  nsresult SetBackgroundAttachment(nsAString * aBackgroundAttachment);

  /* attribute DOMString backgroundColor; */
  nsresult GetBackgroundColor(nsAString * aBackgroundColor);
  nsresult SetBackgroundColor(nsAString * aBackgroundColor);

  /* attribute DOMString backgroundImage; */
  nsresult GetBackgroundImage(nsAString * aBackgroundImage);
  nsresult SetBackgroundImage(nsAString * aBackgroundImage);

  /* attribute DOMString backgroundPosition; */
  nsresult GetBackgroundPosition(nsAString * aBackgroundPosition);
  nsresult SetBackgroundPosition(nsAString * aBackgroundPosition);

  /* attribute DOMString backgroundRepeat; */
  nsresult GetBackgroundRepeat(nsAString * aBackgroundRepeat);
  nsresult SetBackgroundRepeat(nsAString * aBackgroundRepeat);

  /* attribute DOMString border; */
  nsresult GetBorder(nsAString * aBorder);
  nsresult SetBorder(nsAString * aBorder);

  /* attribute DOMString borderCollapse; */
  nsresult GetBorderCollapse(nsAString * aBorderCollapse);
  nsresult SetBorderCollapse(nsAString * aBorderCollapse);

  /* attribute DOMString borderColor; */
  nsresult GetBorderColor(nsAString * aBorderColor);
  nsresult SetBorderColor(nsAString * aBorderColor);

  /* attribute DOMString borderSpacing; */
  nsresult GetBorderSpacing(nsAString * aBorderSpacing);
  nsresult SetBorderSpacing(nsAString * aBorderSpacing);

  /* attribute DOMString borderStyle; */
  nsresult GetBorderStyle(nsAString * aBorderStyle);
  nsresult SetBorderStyle(nsAString * aBorderStyle);

  /* attribute DOMString borderTop; */
  nsresult GetBorderTop(nsAString * aBorderTop);
  nsresult SetBorderTop(nsAString * aBorderTop);

  /* attribute DOMString borderRight; */
  nsresult GetBorderRight(nsAString * aBorderRight);
  nsresult SetBorderRight(nsAString * aBorderRight);

  /* attribute DOMString borderBottom; */
  nsresult GetBorderBottom(nsAString * aBorderBottom);
  nsresult SetBorderBottom(nsAString * aBorderBottom);

  /* attribute DOMString borderLeft; */
  nsresult GetBorderLeft(nsAString * aBorderLeft);
  nsresult SetBorderLeft(nsAString * aBorderLeft);

  /* attribute DOMString borderTopColor; */
  nsresult GetBorderTopColor(nsAString * aBorderTopColor);
  nsresult SetBorderTopColor(nsAString * aBorderTopColor);

  /* attribute DOMString borderRightColor; */
  nsresult GetBorderRightColor(nsAString * aBorderRightColor);
  nsresult SetBorderRightColor(nsAString * aBorderRightColor);

  /* attribute DOMString borderBottomColor; */
  nsresult GetBorderBottomColor(nsAString * aBorderBottomColor);
  nsresult SetBorderBottomColor(nsAString * aBorderBottomColor);

  /* attribute DOMString borderLeftColor; */
  nsresult GetBorderLeftColor(nsAString * aBorderLeftColor);
  nsresult SetBorderLeftColor(nsAString * aBorderLeftColor);

  /* attribute DOMString borderTopStyle; */
  nsresult GetBorderTopStyle(nsAString * aBorderTopStyle);
  nsresult SetBorderTopStyle(nsAString * aBorderTopStyle);

  /* attribute DOMString borderRightStyle; */
  nsresult GetBorderRightStyle(nsAString * aBorderRightStyle);
  nsresult SetBorderRightStyle(nsAString * aBorderRightStyle);

  /* attribute DOMString borderBottomStyle; */
  nsresult GetBorderBottomStyle(nsAString * aBorderBottomStyle);
  nsresult SetBorderBottomStyle(nsAString * aBorderBottomStyle);

  /* attribute DOMString borderLeftStyle; */
  nsresult GetBorderLeftStyle(nsAString * aBorderLeftStyle);
  nsresult SetBorderLeftStyle(nsAString * aBorderLeftStyle);

  /* attribute DOMString borderTopWidth; */
  nsresult GetBorderTopWidth(nsAString * aBorderTopWidth);
  nsresult SetBorderTopWidth(nsAString * aBorderTopWidth);

  /* attribute DOMString borderRightWidth; */
  nsresult GetBorderRightWidth(nsAString * aBorderRightWidth);
  nsresult SetBorderRightWidth(nsAString * aBorderRightWidth);

  /* attribute DOMString borderBottomWidth; */
  nsresult GetBorderBottomWidth(nsAString * aBorderBottomWidth);
  nsresult SetBorderBottomWidth(nsAString * aBorderBottomWidth);

  /* attribute DOMString borderLeftWidth; */
  nsresult GetBorderLeftWidth(nsAString * aBorderLeftWidth);
  nsresult SetBorderLeftWidth(nsAString * aBorderLeftWidth);

  /* attribute DOMString borderWidth; */
  nsresult GetBorderWidth(nsAString * aBorderWidth);
  nsresult SetBorderWidth(nsAString * aBorderWidth);

  /* attribute DOMString bottom; */
  nsresult GetBottom(nsAString * aBottom);
  nsresult SetBottom(nsAString * aBottom);

  /* attribute DOMString captionSide; */
  nsresult GetCaptionSide(nsAString * aCaptionSide);
  nsresult SetCaptionSide(nsAString * aCaptionSide);

  /* attribute DOMString clear; */
  nsresult GetClear(nsAString * aClear);
  nsresult SetClear(nsAString * aClear);

  /* attribute DOMString clip; */
  nsresult GetClip(nsAString * aClip);
  nsresult SetClip(nsAString * aClip);

  /* attribute DOMString color; */
  nsresult GetColor(nsAString * aColor);
  nsresult SetColor(nsAString * aColor);

  /* attribute DOMString content; */
  nsresult GetContent(nsAString * aContent);
  nsresult SetContent(nsAString * aContent);

  /* attribute DOMString counterIncrement; */
  nsresult GetCounterIncrement(nsAString * aCounterIncrement);
  nsresult SetCounterIncrement(nsAString * aCounterIncrement);

  /* attribute DOMString counterReset; */
  nsresult GetCounterReset(nsAString * aCounterReset);
  nsresult SetCounterReset(nsAString * aCounterReset);

  /* attribute DOMString cue; */
  nsresult GetCue(nsAString * aCue);
  nsresult SetCue(nsAString * aCue);

  /* attribute DOMString cueAfter; */
  nsresult GetCueAfter(nsAString * aCueAfter);
  nsresult SetCueAfter(nsAString * aCueAfter);

  /* attribute DOMString cueBefore; */
  nsresult GetCueBefore(nsAString * aCueBefore);
  nsresult SetCueBefore(nsAString * aCueBefore);

  /* attribute DOMString cursor; */
  nsresult GetCursor(nsAString * aCursor);
  nsresult SetCursor(nsAString * aCursor);

  /* attribute DOMString direction; */
  nsresult GetDirection(nsAString * aDirection);
  nsresult SetDirection(nsAString * aDirection);

  /* attribute DOMString display; */
  nsresult GetDisplay(nsAString * aDisplay);
  nsresult SetDisplay(nsAString * aDisplay);

  /* attribute DOMString elevation; */
  nsresult GetElevation(nsAString * aElevation);
  nsresult SetElevation(nsAString * aElevation);

  /* attribute DOMString emptyCells; */
  nsresult GetEmptyCells(nsAString * aEmptyCells);
  nsresult SetEmptyCells(nsAString * aEmptyCells);

  /* attribute DOMString cssFloat; */
  nsresult GetCssFloat(nsAString * aCssFloat);
  nsresult SetCssFloat(nsAString * aCssFloat);

  /* attribute DOMString font; */
  nsresult GetFont(nsAString * aFont);
  nsresult SetFont(nsAString * aFont);

  /* attribute DOMString fontFamily; */
  nsresult GetFontFamily(nsAString * aFontFamily);
  nsresult SetFontFamily(nsAString * aFontFamily);

  /* attribute DOMString fontSize; */
  nsresult GetFontSize(nsAString * aFontSize);
  nsresult SetFontSize(nsAString * aFontSize);

  /* attribute DOMString fontSizeAdjust; */
  nsresult GetFontSizeAdjust(nsAString * aFontSizeAdjust);
  nsresult SetFontSizeAdjust(nsAString * aFontSizeAdjust);

  /* attribute DOMString fontStretch; */
  nsresult GetFontStretch(nsAString * aFontStretch);
  nsresult SetFontStretch(nsAString * aFontStretch);

  /* attribute DOMString fontStyle; */
  nsresult GetFontStyle(nsAString * aFontStyle);
  nsresult SetFontStyle(nsAString * aFontStyle);

  /* attribute DOMString fontVariant; */
  nsresult GetFontVariant(nsAString * aFontVariant);
  nsresult SetFontVariant(nsAString * aFontVariant);

  /* attribute DOMString fontWeight; */
  nsresult GetFontWeight(nsAString * aFontWeight);
  nsresult SetFontWeight(nsAString * aFontWeight);

  /* attribute DOMString height; */
  nsresult GetHeight(nsAString * aHeight);
  nsresult SetHeight(nsAString * aHeight);

  /* attribute DOMString left; */
  nsresult GetLeft(nsAString * aLeft);
  nsresult SetLeft(nsAString * aLeft);

  /* attribute DOMString letterSpacing; */
  nsresult GetLetterSpacing(nsAString * aLetterSpacing);
  nsresult SetLetterSpacing(nsAString * aLetterSpacing);

  /* attribute DOMString lineHeight; */
  nsresult GetLineHeight(nsAString * aLineHeight);
  nsresult SetLineHeight(nsAString * aLineHeight);

  /* attribute DOMString listStyle; */
  nsresult GetListStyle(nsAString * aListStyle);
  nsresult SetListStyle(nsAString * aListStyle);

  /* attribute DOMString listStyleImage; */
  nsresult GetListStyleImage(nsAString * aListStyleImage);
  nsresult SetListStyleImage(nsAString * aListStyleImage);

  /* attribute DOMString listStylePosition; */
  nsresult GetListStylePosition(nsAString * aListStylePosition);
  nsresult SetListStylePosition(nsAString * aListStylePosition);

  /* attribute DOMString listStyleType; */
  nsresult GetListStyleType(nsAString * aListStyleType);
  nsresult SetListStyleType(nsAString * aListStyleType);

  /* attribute DOMString margin; */
  nsresult GetMargin(nsAString * aMargin);
  nsresult SetMargin(nsAString * aMargin);

  /* attribute DOMString marginTop; */
  nsresult GetMarginTop(nsAString * aMarginTop);
  nsresult SetMarginTop(nsAString * aMarginTop);

  /* attribute DOMString marginRight; */
  nsresult GetMarginRight(nsAString * aMarginRight);
  nsresult SetMarginRight(nsAString * aMarginRight);

  /* attribute DOMString marginBottom; */
  nsresult GetMarginBottom(nsAString * aMarginBottom);
  nsresult SetMarginBottom(nsAString * aMarginBottom);

  /* attribute DOMString marginLeft; */
  nsresult GetMarginLeft(nsAString * aMarginLeft);
  nsresult SetMarginLeft(nsAString * aMarginLeft);

  /* attribute DOMString markerOffset; */
  nsresult GetMarkerOffset(nsAString * aMarkerOffset);
  nsresult SetMarkerOffset(nsAString * aMarkerOffset);

  /* attribute DOMString marks; */
  nsresult GetMarks(nsAString * aMarks);
  nsresult SetMarks(nsAString * aMarks);

  /* attribute DOMString maxHeight; */
  nsresult GetMaxHeight(nsAString * aMaxHeight);
  nsresult SetMaxHeight(nsAString * aMaxHeight);

  /* attribute DOMString maxWidth; */
  nsresult GetMaxWidth(nsAString * aMaxWidth);
  nsresult SetMaxWidth(nsAString * aMaxWidth);

  /* attribute DOMString minHeight; */
  nsresult GetMinHeight(nsAString * aMinHeight);
  nsresult SetMinHeight(nsAString * aMinHeight);

  /* attribute DOMString minWidth; */
  nsresult GetMinWidth(nsAString * aMinWidth);
  nsresult SetMinWidth(nsAString * aMinWidth);

  /* attribute DOMString orphans; */
  nsresult GetOrphans(nsAString * aOrphans);
  nsresult SetOrphans(nsAString * aOrphans);

  /* attribute DOMString outline; */
  nsresult GetOutline(nsAString * aOutline);
  nsresult SetOutline(nsAString * aOutline);

  /* attribute DOMString outlineColor; */
  nsresult GetOutlineColor(nsAString * aOutlineColor);
  nsresult SetOutlineColor(nsAString * aOutlineColor);

  /* attribute DOMString outlineStyle; */
  nsresult GetOutlineStyle(nsAString * aOutlineStyle);
  nsresult SetOutlineStyle(nsAString * aOutlineStyle);

  /* attribute DOMString outlineWidth; */
  nsresult GetOutlineWidth(nsAString * aOutlineWidth);
  nsresult SetOutlineWidth(nsAString * aOutlineWidth);

  /* attribute DOMString overflow; */
  nsresult GetOverflow(nsAString * aOverflow);
  nsresult SetOverflow(nsAString * aOverflow);

  /* attribute DOMString padding; */
  nsresult GetPadding(nsAString * aPadding);
  nsresult SetPadding(nsAString * aPadding);

  /* attribute DOMString paddingTop; */
  nsresult GetPaddingTop(nsAString * aPaddingTop);
  nsresult SetPaddingTop(nsAString * aPaddingTop);

  /* attribute DOMString paddingRight; */
  nsresult GetPaddingRight(nsAString * aPaddingRight);
  nsresult SetPaddingRight(nsAString * aPaddingRight);

  /* attribute DOMString paddingBottom; */
  nsresult GetPaddingBottom(nsAString * aPaddingBottom);
  nsresult SetPaddingBottom(nsAString * aPaddingBottom);

  /* attribute DOMString paddingLeft; */
  nsresult GetPaddingLeft(nsAString * aPaddingLeft);
  nsresult SetPaddingLeft(nsAString * aPaddingLeft);

  /* attribute DOMString page; */
  nsresult GetPage(nsAString * aPage);
  nsresult SetPage(nsAString * aPage);

  /* attribute DOMString pageBreakAfter; */
  nsresult GetPageBreakAfter(nsAString * aPageBreakAfter);
  nsresult SetPageBreakAfter(nsAString * aPageBreakAfter);

  /* attribute DOMString pageBreakBefore; */
  nsresult GetPageBreakBefore(nsAString * aPageBreakBefore);
  nsresult SetPageBreakBefore(nsAString * aPageBreakBefore);

  /* attribute DOMString pageBreakInside; */
  nsresult GetPageBreakInside(nsAString * aPageBreakInside);
  nsresult SetPageBreakInside(nsAString * aPageBreakInside);

  /* attribute DOMString pause; */
  nsresult GetPause(nsAString * aPause);
  nsresult SetPause(nsAString * aPause);

  /* attribute DOMString pauseAfter; */
  nsresult GetPauseAfter(nsAString * aPauseAfter);
  nsresult SetPauseAfter(nsAString * aPauseAfter);

  /* attribute DOMString pauseBefore; */
  nsresult GetPauseBefore(nsAString * aPauseBefore);
  nsresult SetPauseBefore(nsAString * aPauseBefore);

  /* attribute DOMString pitch; */
  nsresult GetPitch(nsAString * aPitch);
  nsresult SetPitch(nsAString * aPitch);

  /* attribute DOMString pitchRange; */
  nsresult GetPitchRange(nsAString * aPitchRange);
  nsresult SetPitchRange(nsAString * aPitchRange);

  /* attribute DOMString position; */
  nsresult GetPosition(nsAString * aPosition);
  nsresult SetPosition(nsAString * aPosition);

  /* attribute DOMString quotes; */
  nsresult GetQuotes(nsAString * aQuotes);
  nsresult SetQuotes(nsAString * aQuotes);

  /* attribute DOMString richness; */
  nsresult GetRichness(nsAString * aRichness);
  nsresult SetRichness(nsAString * aRichness);

  /* attribute DOMString right; */
  nsresult GetRight(nsAString * aRight);
  nsresult SetRight(nsAString * aRight);

  /* attribute DOMString size; */
  nsresult GetSize(nsAString * aSize);
  nsresult SetSize(nsAString * aSize);

  /* attribute DOMString speak; */
  nsresult GetSpeak(nsAString * aSpeak);
  nsresult SetSpeak(nsAString * aSpeak);

  /* attribute DOMString speakHeader; */
  nsresult GetSpeakHeader(nsAString * aSpeakHeader);
  nsresult SetSpeakHeader(nsAString * aSpeakHeader);

  /* attribute DOMString speakNumeral; */
  nsresult GetSpeakNumeral(nsAString * aSpeakNumeral);
  nsresult SetSpeakNumeral(nsAString * aSpeakNumeral);

  /* attribute DOMString speakPunctuation; */
  nsresult GetSpeakPunctuation(nsAString * aSpeakPunctuation);
  nsresult SetSpeakPunctuation(nsAString * aSpeakPunctuation);

  /* attribute DOMString speechRate; */
  nsresult GetSpeechRate(nsAString * aSpeechRate);
  nsresult SetSpeechRate(nsAString * aSpeechRate);

  /* attribute DOMString stress; */
  nsresult GetStress(nsAString * aStress);
  nsresult SetStress(nsAString * aStress);

  /* attribute DOMString tableLayout; */
  nsresult GetTableLayout(nsAString * aTableLayout);
  nsresult SetTableLayout(nsAString * aTableLayout);

  /* attribute DOMString textAlign; */
  nsresult GetTextAlign(nsAString * aTextAlign);
  nsresult SetTextAlign(nsAString * aTextAlign);

  /* attribute DOMString textDecoration; */
  nsresult GetTextDecoration(nsAString * aTextDecoration);
  nsresult SetTextDecoration(nsAString * aTextDecoration);

  /* attribute DOMString textIndent; */
  nsresult GetTextIndent(nsAString * aTextIndent);
  nsresult SetTextIndent(nsAString * aTextIndent);

  /* attribute DOMString textShadow; */
  nsresult GetTextShadow(nsAString * aTextShadow);
  nsresult SetTextShadow(nsAString * aTextShadow);

  /* attribute DOMString textTransform; */
  nsresult GetTextTransform(nsAString * aTextTransform);
  nsresult SetTextTransform(nsAString * aTextTransform);

  /* attribute DOMString top; */
  nsresult GetTop(nsAString * aTop);
  nsresult SetTop(nsAString * aTop);

  /* attribute DOMString unicodeBidi; */
  nsresult GetUnicodeBidi(nsAString * aUnicodeBidi);
  nsresult SetUnicodeBidi(nsAString * aUnicodeBidi);

  /* attribute DOMString verticalAlign; */
  nsresult GetVerticalAlign(nsAString * aVerticalAlign);
  nsresult SetVerticalAlign(nsAString * aVerticalAlign);

  /* attribute DOMString visibility; */
  nsresult GetVisibility(nsAString * aVisibility);
  nsresult SetVisibility(nsAString * aVisibility);

  /* attribute DOMString voiceFamily; */
  nsresult GetVoiceFamily(nsAString * aVoiceFamily);
  nsresult SetVoiceFamily(nsAString * aVoiceFamily);

  /* attribute DOMString volume; */
  nsresult GetVolume(nsAString * aVolume);
  nsresult SetVolume(nsAString * aVolume);

  /* attribute DOMString whiteSpace; */
  nsresult GetWhiteSpace(nsAString * aWhiteSpace);
  nsresult SetWhiteSpace(nsAString * aWhiteSpace);

  /* attribute DOMString widows; */
  nsresult GetWidows(nsAString * aWidows);
  nsresult SetWidows(nsAString * aWidows);

  /* attribute DOMString width; */
  nsresult GetWidth(nsAString * aWidth);
  nsresult SetWidth(nsAString * aWidth);

  /* attribute DOMString wordSpacing; */
  nsresult GetWordSpacing(nsAString * aWordSpacing);
  nsresult SetWordSpacing(nsAString * aWordSpacing);

  /* attribute DOMString zIndex; */
  nsresult GetZIndex(nsAString * aZIndex);
  nsresult SetZIndex(nsAString * aZIndex);

}


/* starting interface:    nsIDOMNSCSS2Properties */
const char[] NS_IDOMNSCSS2PROPERTIES_IID_STR = "06b42e9d-61b5-400d-9561-b43f0e9883c0";

const nsIID NS_IDOMNSCSS2PROPERTIES_IID= 
  {0x06b42e9d, 0x61b5, 0x400d, 
    [ 0x95, 0x61, 0xb4, 0x3f, 0x0e, 0x98, 0x83, 0xc0 ]};

extern(Windows)
interface nsIDOMNSCSS2Properties : nsIDOMCSS2Properties {
  static const char[] IID_STR = NS_IDOMNSCSS2PROPERTIES_IID_STR;
  static const nsIID IID = NS_IDOMNSCSS2PROPERTIES_IID;

  /* attribute DOMString MozAppearance; */
  nsresult GetMozAppearance(nsAString * aMozAppearance);
  nsresult SetMozAppearance(nsAString * aMozAppearance);

  /* attribute DOMString MozBackgroundClip; */
  nsresult GetMozBackgroundClip(nsAString * aMozBackgroundClip);
  nsresult SetMozBackgroundClip(nsAString * aMozBackgroundClip);

  /* attribute DOMString MozBackgroundInlinePolicy; */
  nsresult GetMozBackgroundInlinePolicy(nsAString * aMozBackgroundInlinePolicy);
  nsresult SetMozBackgroundInlinePolicy(nsAString * aMozBackgroundInlinePolicy);

  /* attribute DOMString MozBackgroundOrigin; */
  nsresult GetMozBackgroundOrigin(nsAString * aMozBackgroundOrigin);
  nsresult SetMozBackgroundOrigin(nsAString * aMozBackgroundOrigin);

  /* attribute DOMString MozBinding; */
  nsresult GetMozBinding(nsAString * aMozBinding);
  nsresult SetMozBinding(nsAString * aMozBinding);

  /* attribute DOMString MozBorderBottomColors; */
  nsresult GetMozBorderBottomColors(nsAString * aMozBorderBottomColors);
  nsresult SetMozBorderBottomColors(nsAString * aMozBorderBottomColors);

  /* attribute DOMString MozBorderLeftColors; */
  nsresult GetMozBorderLeftColors(nsAString * aMozBorderLeftColors);
  nsresult SetMozBorderLeftColors(nsAString * aMozBorderLeftColors);

  /* attribute DOMString MozBorderRightColors; */
  nsresult GetMozBorderRightColors(nsAString * aMozBorderRightColors);
  nsresult SetMozBorderRightColors(nsAString * aMozBorderRightColors);

  /* attribute DOMString MozBorderTopColors; */
  nsresult GetMozBorderTopColors(nsAString * aMozBorderTopColors);
  nsresult SetMozBorderTopColors(nsAString * aMozBorderTopColors);

  /* attribute DOMString MozBorderRadius; */
  nsresult GetMozBorderRadius(nsAString * aMozBorderRadius);
  nsresult SetMozBorderRadius(nsAString * aMozBorderRadius);

  /* attribute DOMString MozBorderRadiusTopleft; */
  nsresult GetMozBorderRadiusTopleft(nsAString * aMozBorderRadiusTopleft);
  nsresult SetMozBorderRadiusTopleft(nsAString * aMozBorderRadiusTopleft);

  /* attribute DOMString MozBorderRadiusTopright; */
  nsresult GetMozBorderRadiusTopright(nsAString * aMozBorderRadiusTopright);
  nsresult SetMozBorderRadiusTopright(nsAString * aMozBorderRadiusTopright);

  /* attribute DOMString MozBorderRadiusBottomleft; */
  nsresult GetMozBorderRadiusBottomleft(nsAString * aMozBorderRadiusBottomleft);
  nsresult SetMozBorderRadiusBottomleft(nsAString * aMozBorderRadiusBottomleft);

  /* attribute DOMString MozBorderRadiusBottomright; */
  nsresult GetMozBorderRadiusBottomright(nsAString * aMozBorderRadiusBottomright);
  nsresult SetMozBorderRadiusBottomright(nsAString * aMozBorderRadiusBottomright);

  /* attribute DOMString MozBoxAlign; */
  nsresult GetMozBoxAlign(nsAString * aMozBoxAlign);
  nsresult SetMozBoxAlign(nsAString * aMozBoxAlign);

  /* attribute DOMString MozBoxDirection; */
  nsresult GetMozBoxDirection(nsAString * aMozBoxDirection);
  nsresult SetMozBoxDirection(nsAString * aMozBoxDirection);

  /* attribute DOMString MozBoxFlex; */
  nsresult GetMozBoxFlex(nsAString * aMozBoxFlex);
  nsresult SetMozBoxFlex(nsAString * aMozBoxFlex);

  /* attribute DOMString MozBoxOrient; */
  nsresult GetMozBoxOrient(nsAString * aMozBoxOrient);
  nsresult SetMozBoxOrient(nsAString * aMozBoxOrient);

  /* attribute DOMString MozBoxOrdinalGroup; */
  nsresult GetMozBoxOrdinalGroup(nsAString * aMozBoxOrdinalGroup);
  nsresult SetMozBoxOrdinalGroup(nsAString * aMozBoxOrdinalGroup);

  /* attribute DOMString MozBoxPack; */
  nsresult GetMozBoxPack(nsAString * aMozBoxPack);
  nsresult SetMozBoxPack(nsAString * aMozBoxPack);

  /* attribute DOMString MozBoxSizing; */
  nsresult GetMozBoxSizing(nsAString * aMozBoxSizing);
  nsresult SetMozBoxSizing(nsAString * aMozBoxSizing);

  /* attribute DOMString MozColumnCount; */
  nsresult GetMozColumnCount(nsAString * aMozColumnCount);
  nsresult SetMozColumnCount(nsAString * aMozColumnCount);

  /* attribute DOMString MozColumnWidth; */
  nsresult GetMozColumnWidth(nsAString * aMozColumnWidth);
  nsresult SetMozColumnWidth(nsAString * aMozColumnWidth);

  /* attribute DOMString MozColumnGap; */
  nsresult GetMozColumnGap(nsAString * aMozColumnGap);
  nsresult SetMozColumnGap(nsAString * aMozColumnGap);

  /* attribute DOMString MozFloatEdge; */
  nsresult GetMozFloatEdge(nsAString * aMozFloatEdge);
  nsresult SetMozFloatEdge(nsAString * aMozFloatEdge);

  /* attribute DOMString MozForceBrokenImageIcon; */
  nsresult GetMozForceBrokenImageIcon(nsAString * aMozForceBrokenImageIcon);
  nsresult SetMozForceBrokenImageIcon(nsAString * aMozForceBrokenImageIcon);

  /* attribute DOMString MozImageRegion; */
  nsresult GetMozImageRegion(nsAString * aMozImageRegion);
  nsresult SetMozImageRegion(nsAString * aMozImageRegion);

  /* attribute DOMString MozMarginEnd; */
  nsresult GetMozMarginEnd(nsAString * aMozMarginEnd);
  nsresult SetMozMarginEnd(nsAString * aMozMarginEnd);

  /* attribute DOMString MozMarginStart; */
  nsresult GetMozMarginStart(nsAString * aMozMarginStart);
  nsresult SetMozMarginStart(nsAString * aMozMarginStart);

  /* attribute DOMString MozOpacity; */
  nsresult GetMozOpacity(nsAString * aMozOpacity);
  nsresult SetMozOpacity(nsAString * aMozOpacity);

  /* attribute DOMString MozOutline; */
  nsresult GetMozOutline(nsAString * aMozOutline);
  nsresult SetMozOutline(nsAString * aMozOutline);

  /* attribute DOMString MozOutlineColor; */
  nsresult GetMozOutlineColor(nsAString * aMozOutlineColor);
  nsresult SetMozOutlineColor(nsAString * aMozOutlineColor);

  /* attribute DOMString MozOutlineRadius; */
  nsresult GetMozOutlineRadius(nsAString * aMozOutlineRadius);
  nsresult SetMozOutlineRadius(nsAString * aMozOutlineRadius);

  /* attribute DOMString MozOutlineRadiusTopleft; */
  nsresult GetMozOutlineRadiusTopleft(nsAString * aMozOutlineRadiusTopleft);
  nsresult SetMozOutlineRadiusTopleft(nsAString * aMozOutlineRadiusTopleft);

  /* attribute DOMString MozOutlineRadiusTopright; */
  nsresult GetMozOutlineRadiusTopright(nsAString * aMozOutlineRadiusTopright);
  nsresult SetMozOutlineRadiusTopright(nsAString * aMozOutlineRadiusTopright);

  /* attribute DOMString MozOutlineRadiusBottomleft; */
  nsresult GetMozOutlineRadiusBottomleft(nsAString * aMozOutlineRadiusBottomleft);
  nsresult SetMozOutlineRadiusBottomleft(nsAString * aMozOutlineRadiusBottomleft);

  /* attribute DOMString MozOutlineRadiusBottomright; */
  nsresult GetMozOutlineRadiusBottomright(nsAString * aMozOutlineRadiusBottomright);
  nsresult SetMozOutlineRadiusBottomright(nsAString * aMozOutlineRadiusBottomright);

  /* attribute DOMString MozOutlineStyle; */
  nsresult GetMozOutlineStyle(nsAString * aMozOutlineStyle);
  nsresult SetMozOutlineStyle(nsAString * aMozOutlineStyle);

  /* attribute DOMString MozOutlineWidth; */
  nsresult GetMozOutlineWidth(nsAString * aMozOutlineWidth);
  nsresult SetMozOutlineWidth(nsAString * aMozOutlineWidth);

  /* attribute DOMString MozOutlineOffset; */
  nsresult GetMozOutlineOffset(nsAString * aMozOutlineOffset);
  nsresult SetMozOutlineOffset(nsAString * aMozOutlineOffset);

  /* attribute DOMString MozPaddingEnd; */
  nsresult GetMozPaddingEnd(nsAString * aMozPaddingEnd);
  nsresult SetMozPaddingEnd(nsAString * aMozPaddingEnd);

  /* attribute DOMString MozPaddingStart; */
  nsresult GetMozPaddingStart(nsAString * aMozPaddingStart);
  nsresult SetMozPaddingStart(nsAString * aMozPaddingStart);

  /* attribute DOMString MozUserFocus; */
  nsresult GetMozUserFocus(nsAString * aMozUserFocus);
  nsresult SetMozUserFocus(nsAString * aMozUserFocus);

  /* attribute DOMString MozUserInput; */
  nsresult GetMozUserInput(nsAString * aMozUserInput);
  nsresult SetMozUserInput(nsAString * aMozUserInput);

  /* attribute DOMString MozUserModify; */
  nsresult GetMozUserModify(nsAString * aMozUserModify);
  nsresult SetMozUserModify(nsAString * aMozUserModify);

  /* attribute DOMString MozUserSelect; */
  nsresult GetMozUserSelect(nsAString * aMozUserSelect);
  nsresult SetMozUserSelect(nsAString * aMozUserSelect);

  /* attribute DOMString opacity; */
  nsresult GetOpacity(nsAString * aOpacity);
  nsresult SetOpacity(nsAString * aOpacity);

  /* attribute DOMString outlineOffset; */
  nsresult GetOutlineOffset(nsAString * aOutlineOffset);
  nsresult SetOutlineOffset(nsAString * aOutlineOffset);

  /* attribute DOMString overflowX; */
  nsresult GetOverflowX(nsAString * aOverflowX);
  nsresult SetOverflowX(nsAString * aOverflowX);

  /* attribute DOMString overflowY; */
  nsresult GetOverflowY(nsAString * aOverflowY);
  nsresult SetOverflowY(nsAString * aOverflowY);

}

