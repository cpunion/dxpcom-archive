/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICanvasRenderingContext2D.idl
 */

module mozilla.xpcom.nsICanvasRenderingContext2D;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMHTMLImageElement; /* forward declaration */

public import mozilla.xpcom.nsIBoxObject; /* forward declaration */


/* starting interface:    nsICanvasGradient */
const char[] NS_ICANVASGRADIENT_IID_STR = "bbb20a59-524e-4662-981e-5e142814b20c";

const nsIID NS_ICANVASGRADIENT_IID= 
  {0xbbb20a59, 0x524e, 0x4662, 
    [ 0x98, 0x1e, 0x5e, 0x14, 0x28, 0x14, 0xb2, 0x0c ]};

extern(Windows)
interface nsICanvasGradient : nsISupports {
  static const char[] IID_STR = NS_ICANVASGRADIENT_IID_STR;
  static const nsIID IID = NS_ICANVASGRADIENT_IID;

  /* void addColorStop (in float offset, in DOMString color); */
  nsresult AddColorStop(float offset, nsAString * color);

}


/* starting interface:    nsICanvasPattern */
const char[] NS_ICANVASPATTERN_IID_STR = "21dea65c-5c08-4eb1-ac82-81fe95be77b8";

const nsIID NS_ICANVASPATTERN_IID= 
  {0x21dea65c, 0x5c08, 0x4eb1, 
    [ 0xac, 0x82, 0x81, 0xfe, 0x95, 0xbe, 0x77, 0xb8 ]};

extern(Windows)
interface nsICanvasPattern : nsISupports {
  static const char[] IID_STR = NS_ICANVASPATTERN_IID_STR;
  static const nsIID IID = NS_ICANVASPATTERN_IID;

}


/* starting interface:    nsICanvasRenderingContext2D */
const char[] NS_ICANVASRENDERINGCONTEXT2D_IID_STR = "fd1e2245-8d8c-4146-bf47-fb84ddd6fca0";

const nsIID NS_ICANVASRENDERINGCONTEXT2D_IID= 
  {0xfd1e2245, 0x8d8c, 0x4146, 
    [ 0xbf, 0x47, 0xfb, 0x84, 0xdd, 0xd6, 0xfc, 0xa0 ]};

extern(Windows)
interface nsICanvasRenderingContext2D : nsISupports {
  static const char[] IID_STR = NS_ICANVASRENDERINGCONTEXT2D_IID_STR;
  static const nsIID IID = NS_ICANVASRENDERINGCONTEXT2D_IID;

  /* readonly attribute nsIBoxObject canvas; */
  nsresult GetCanvas(nsIBoxObject  *aCanvas);

  /* void save (); */
  nsresult Save();

  /* void restore (); */
  nsresult Restore();

  /* void scale (in float x, in float y); */
  nsresult Scale(float x, float y);

  /* void rotate (in float angle); */
  nsresult Rotate(float angle);

  /* void translate (in float x, in float y); */
  nsresult Translate(float x, float y);

  /* attribute float globalAlpha; */
  nsresult GetGlobalAlpha(float *aGlobalAlpha);
  nsresult SetGlobalAlpha(float aGlobalAlpha);

  /* attribute DOMString globalCompositeOperation; */
  nsresult GetGlobalCompositeOperation(nsAString * aGlobalCompositeOperation);
  nsresult SetGlobalCompositeOperation(nsAString * aGlobalCompositeOperation);

  /* attribute DOMString strokeStyle; */
  nsresult GetStrokeStyle(nsAString * aStrokeStyle);
  nsresult SetStrokeStyle(nsAString * aStrokeStyle);

  /* attribute DOMString fillStyle; */
  nsresult GetFillStyle(nsAString * aFillStyle);
  nsresult SetFillStyle(nsAString * aFillStyle);

  /* nsICanvasGradient createLinearGradient (in float x0, in float y0, in float x1, in float y1); */
  nsresult CreateLinearGradient(float x0, float y0, float x1, float y1, nsICanvasGradient *_retval);

  /* nsICanvasGradient createRadialGradient (in float x0, in float y0, in float r0, in float x1, in float y1, in float r1); */
  nsresult CreateRadialGradient(float x0, float y0, float r0, float x1, float y1, float r1, nsICanvasGradient *_retval);

  /* nsICanvasPattern createPattern (in nsIDOMHTMLImageElement image, in DOMString repetition); */
  nsresult CreatePattern(nsIDOMHTMLImageElement image, nsAString * repetition, nsICanvasPattern *_retval);

  /* attribute float lineWidth; */
  nsresult GetLineWidth(float *aLineWidth);
  nsresult SetLineWidth(float aLineWidth);

  /* attribute DOMString lineCap; */
  nsresult GetLineCap(nsAString * aLineCap);
  nsresult SetLineCap(nsAString * aLineCap);

  /* attribute DOMString lineJoin; */
  nsresult GetLineJoin(nsAString * aLineJoin);
  nsresult SetLineJoin(nsAString * aLineJoin);

  /* attribute float miterLimit; */
  nsresult GetMiterLimit(float *aMiterLimit);
  nsresult SetMiterLimit(float aMiterLimit);

  /* attribute float shadowOffsetX; */
  nsresult GetShadowOffsetX(float *aShadowOffsetX);
  nsresult SetShadowOffsetX(float aShadowOffsetX);

  /* attribute float shadowOffsetY; */
  nsresult GetShadowOffsetY(float *aShadowOffsetY);
  nsresult SetShadowOffsetY(float aShadowOffsetY);

  /* attribute float shadowBlur; */
  nsresult GetShadowBlur(float *aShadowBlur);
  nsresult SetShadowBlur(float aShadowBlur);

  /* attribute DOMString shadowColor; */
  nsresult GetShadowColor(nsAString * aShadowColor);
  nsresult SetShadowColor(nsAString * aShadowColor);

  /* void clearRect (in float x, in float y, in float w, in float h); */
  nsresult ClearRect(float x, float y, float w, float h);

  /* void fillRect (in float x, in float y, in float w, in float h); */
  nsresult FillRect(float x, float y, float w, float h);

  /* void strokeRect (in float x, in float y, in float w, in float h); */
  nsresult StrokeRect(float x, float y, float w, float h);

  /* void beginPath (); */
  nsresult BeginPath();

  /* void closePath (); */
  nsresult ClosePath();

  /* void moveTo (in float x, in float y); */
  nsresult MoveTo(float x, float y);

  /* void lineTo (in float x, in float y); */
  nsresult LineTo(float x, float y);

  /* void quadraticCurveTo (in float cpx, in float cpy, in float x, in float y); */
  nsresult QuadraticCurveTo(float cpx, float cpy, float x, float y);

  /* void bezierCurveTo (in float cp1x, in float cp1y, in float cp2x, in float cp2y, in float x, in float y); */
  nsresult BezierCurveTo(float cp1x, float cp1y, float cp2x, float cp2y, float x, float y);

  /* void arcTo (in float x1, in float y1, in float x2, in float y2, in float radius); */
  nsresult ArcTo(float x1, float y1, float x2, float y2, float radius);

  /* void arc (in float x, in float y, in float r, in float startAngle, in float endAngle, in boolean clockwise); */
  nsresult Arc(float x, float y, float r, float startAngle, float endAngle, PRBool clockwise);

  /* void rect (in float x, in float y, in float w, in float h); */
  nsresult Rect(float x, float y, float w, float h);

  /* void fill (); */
  nsresult Fill();

  /* void stroke (); */
  nsresult Stroke();

  /* void clip (); */
  nsresult Clip();

  /* void drawImage (); */
  nsresult DrawImage();

}

