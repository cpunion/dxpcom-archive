/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCanvasRenderingContext2D.idl
 */

module mozilla.xpcom.nsIDOMCanvasRenderingContext2D;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIVariant;

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */

public import mozilla.xpcom.nsIDOMHTMLElement; /* forward declaration */

public import mozilla.xpcom.nsIDOMHTMLImageElement; /* forward declaration */

public import mozilla.xpcom.nsIDOMHTMLCanvasElement; /* forward declaration */


/* starting interface:    nsIDOMCanvasGradient */
const char[] NS_IDOMCANVASGRADIENT_IID_STR = "bbb20a59-524e-4662-981e-5e142814b20c";

const nsIID NS_IDOMCANVASGRADIENT_IID= 
  {0xbbb20a59, 0x524e, 0x4662, 
    [ 0x98, 0x1e, 0x5e, 0x14, 0x28, 0x14, 0xb2, 0x0c ]};

extern(Windows)
interface nsIDOMCanvasGradient : nsISupports {
  static const char[] IID_STR = NS_IDOMCANVASGRADIENT_IID_STR;
  static const nsIID IID = NS_IDOMCANVASGRADIENT_IID;

  /* void addColorStop (in float offset, in DOMString color); */
  nsresult AddColorStop(float offset, nsAString * color);

}


/* starting interface:    nsIDOMCanvasPattern */
const char[] NS_IDOMCANVASPATTERN_IID_STR = "21dea65c-5c08-4eb1-ac82-81fe95be77b8";

const nsIID NS_IDOMCANVASPATTERN_IID= 
  {0x21dea65c, 0x5c08, 0x4eb1, 
    [ 0xac, 0x82, 0x81, 0xfe, 0x95, 0xbe, 0x77, 0xb8 ]};

extern(Windows)
interface nsIDOMCanvasPattern : nsISupports {
  static const char[] IID_STR = NS_IDOMCANVASPATTERN_IID_STR;
  static const nsIID IID = NS_IDOMCANVASPATTERN_IID;

}


/* starting interface:    nsIDOMCanvasRenderingContext2D */
const char[] NS_IDOMCANVASRENDERINGCONTEXT2D_IID_STR = "ab27f42d-e1e1-4ef6-9c83-059a81da479b";

const nsIID NS_IDOMCANVASRENDERINGCONTEXT2D_IID= 
  {0xab27f42d, 0xe1e1, 0x4ef6, 
    [ 0x9c, 0x83, 0x05, 0x9a, 0x81, 0xda, 0x47, 0x9b ]};

extern(Windows)
interface nsIDOMCanvasRenderingContext2D : nsISupports {
  static const char[] IID_STR = NS_IDOMCANVASRENDERINGCONTEXT2D_IID_STR;
  static const nsIID IID = NS_IDOMCANVASRENDERINGCONTEXT2D_IID;

  /* readonly attribute nsIDOMHTMLCanvasElement canvas; */
  nsresult GetCanvas(nsIDOMHTMLCanvasElement  *aCanvas);

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

  /* attribute nsIVariant strokeStyle; */
  nsresult GetStrokeStyle(nsIVariant  *aStrokeStyle);
  nsresult SetStrokeStyle(nsIVariant  aStrokeStyle);

  /* attribute nsIVariant fillStyle; */
  nsresult GetFillStyle(nsIVariant  *aFillStyle);
  nsresult SetFillStyle(nsIVariant  aFillStyle);

  /* nsIDOMCanvasGradient createLinearGradient (in float x0, in float y0, in float x1, in float y1); */
  nsresult CreateLinearGradient(float x0, float y0, float x1, float y1, nsIDOMCanvasGradient *_retval);

  /* nsIDOMCanvasGradient createRadialGradient (in float x0, in float y0, in float r0, in float x1, in float y1, in float r1); */
  nsresult CreateRadialGradient(float x0, float y0, float r0, float x1, float y1, float r1, nsIDOMCanvasGradient *_retval);

  /* nsIDOMCanvasPattern createPattern (in nsIDOMHTMLElement image, in DOMString repetition); */
  nsresult CreatePattern(nsIDOMHTMLElement image, nsAString * repetition, nsIDOMCanvasPattern *_retval);

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

  /* boolean isPointInPath (in float x, in float y); */
  nsresult IsPointInPath(float x, float y, PRBool *_retval);

  /* void getImageData (); */
  nsresult GetImageData();

  /* void putImageData (); */
  nsresult PutImageData();

  /**
   * Renders a region of a window into the canvas.  The contents of
   * the window's viewport are rendered, ignoring viewport clipping
   * and scrolling.
   *
   * @param x
   * @param y
   * @param w
   * @param h specify the area of the window to render, in CSS
   * pixels.
   *
   * @param backgroundColor the canvas is filled with this color
   * before we render the window into it. This color may be
   * transparent/translucent. It is given as a CSS color string
   * (e.g., rgb() or rgba()).
   *
   * Of course, the rendering obeys the current scale, transform and
   * globalAlpha values.
   *
   * Hints:
   * -- If 'rgba(0,0,0,0)' is used for the background color, the
   * drawing will be transparent wherever the window is transparent.
   * -- Top-level browsed documents are usually not transparent
   * because the user's background-color preference is applied,
   * but IFRAMEs are transparent if the page doesn't set a background.
   * -- If an opaque color is used for the background color, rendering
   * will be faster because we won't have to compute the window's
   * transparency.
   *
   * This API cannot currently be used by Web content. It is chrome
   * only.
   */
  /* void drawWindow (in nsIDOMWindow window, in long x, in long y, in long w, in long h, in DOMString bgColor); */
  nsresult DrawWindow(nsIDOMWindow window, PRInt32 x, PRInt32 y, PRInt32 w, PRInt32 h, nsAString * bgColor);

}

