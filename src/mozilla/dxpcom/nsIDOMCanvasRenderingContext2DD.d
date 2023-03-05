/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCanvasRenderingContext2D.idl
 */

module mozilla.dxpcom.nsIDOMCanvasRenderingContext2DD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMCanvasRenderingContext2D;


public import mozilla.dxpcom.nsIDOMCanvasRenderingContext2DD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIVariant;
public import mozilla.dxpcom.nsIVariantD;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.dxpcom.nsIDOMWindowD;

public import mozilla.xpcom.nsIDOMHTMLElement;

public import mozilla.dxpcom.nsIDOMHTMLElementD;

public import mozilla.xpcom.nsIDOMHTMLImageElement;

public import mozilla.dxpcom.nsIDOMHTMLImageElementD;

public import mozilla.xpcom.nsIDOMHTMLCanvasElement;

public import mozilla.dxpcom.nsIDOMHTMLCanvasElementD;


/* starting wrapper class:    nsIDOMCanvasGradient */
class nsIDOMCanvasGradientD : public nsISupportsD {

  static const nsIID IID = NS_IDOMCANVASGRADIENT_IID;


  alias nsIDOMCanvasGradient InnerType;

  this(nsIDOMCanvasGradient intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMCanvasGradient opCast() {
    return inner;
  }

  void opAssign(nsIDOMCanvasGradient value) {
    inner = value;
  }

  /* void addColorStop (in float offset, in DOMString color); */
  void AddColorStop(float offset, wchar[] color){
    scope auto _color = new AString(color);
    nsresult __result = inner.AddColorStop(offset, cast(nsAString*)_color);
    CheckException(__result);
  }

private:
  nsIDOMCanvasGradient inner;

}


/* starting wrapper class:    nsIDOMCanvasPattern */
class nsIDOMCanvasPatternD : public nsISupportsD {

  static const nsIID IID = NS_IDOMCANVASPATTERN_IID;


  alias nsIDOMCanvasPattern InnerType;

  this(nsIDOMCanvasPattern intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMCanvasPattern opCast() {
    return inner;
  }

  void opAssign(nsIDOMCanvasPattern value) {
    inner = value;
  }

private:
  nsIDOMCanvasPattern inner;

}


/* starting wrapper class:    nsIDOMCanvasRenderingContext2D */
class nsIDOMCanvasRenderingContext2DD : public nsISupportsD {

  static const nsIID IID = NS_IDOMCANVASRENDERINGCONTEXT2D_IID;


  alias nsIDOMCanvasRenderingContext2D InnerType;

  this(nsIDOMCanvasRenderingContext2D intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMCanvasRenderingContext2D opCast() {
    return inner;
  }

  void opAssign(nsIDOMCanvasRenderingContext2D value) {
    inner = value;
  }

  /* readonly attribute nsIDOMHTMLCanvasElement canvas; */
  nsIDOMHTMLCanvasElementD  Canvas(){
    nsIDOMHTMLCanvasElement value;
    nsresult __result = inner.GetCanvas(&value);
    CheckException(__result);
    return new nsIDOMHTMLCanvasElementD(value);
  }

  /* void save (); */
  void Save(){
    nsresult __result = inner.Save();
    CheckException(__result);
  }

  /* void restore (); */
  void Restore(){
    nsresult __result = inner.Restore();
    CheckException(__result);
  }

  /* void scale (in float x, in float y); */
  void Scale(float x, float y){
    nsresult __result = inner.Scale(x, y);
    CheckException(__result);
  }

  /* void rotate (in float angle); */
  void Rotate(float angle){
    nsresult __result = inner.Rotate(angle);
    CheckException(__result);
  }

  /* void translate (in float x, in float y); */
  void Translate(float x, float y){
    nsresult __result = inner.Translate(x, y);
    CheckException(__result);
  }

  /* attribute float globalAlpha; */
  float GlobalAlpha(){
    float value;
    nsresult __result = inner.GetGlobalAlpha(&value);
    CheckException(__result);
    return value;
  }
  void GlobalAlpha(float aGlobalAlpha){
    nsresult __result = inner.SetGlobalAlpha(aGlobalAlpha);
    CheckException(__result);
  }

  /* attribute DOMString globalCompositeOperation; */
  wchar[] GlobalCompositeOperation(){
    scope auto value = new AString();
    nsresult __result = inner.GetGlobalCompositeOperation(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void GlobalCompositeOperation(wchar[] aGlobalCompositeOperation){
    scope auto value = new AString(aGlobalCompositeOperation);
    nsresult __result = inner.SetGlobalCompositeOperation(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute nsIVariant strokeStyle; */
  nsIVariantD  StrokeStyle(){
    nsIVariant value;
    nsresult __result = inner.GetStrokeStyle(&value);
    CheckException(__result);
    return new nsIVariantD(value);
  }
  void StrokeStyle(nsIVariantD  aStrokeStyle){
    nsIVariant value;
    nsresult __result = inner.SetStrokeStyle(value);
    CheckException(__result);
  }

  /* attribute nsIVariant fillStyle; */
  nsIVariantD  FillStyle(){
    nsIVariant value;
    nsresult __result = inner.GetFillStyle(&value);
    CheckException(__result);
    return new nsIVariantD(value);
  }
  void FillStyle(nsIVariantD  aFillStyle){
    nsIVariant value;
    nsresult __result = inner.SetFillStyle(value);
    CheckException(__result);
  }

  /* nsIDOMCanvasGradient createLinearGradient (in float x0, in float y0, in float x1, in float y1); */
  nsIDOMCanvasGradientD  CreateLinearGradient(float x0, float y0, float x1, float y1){
    nsIDOMCanvasGradient _retval;
    nsresult __result = inner.CreateLinearGradient(x0, y0, x1, y1, &_retval);
    CheckException(__result);
    return new nsIDOMCanvasGradientD(_retval);
  }

  /* nsIDOMCanvasGradient createRadialGradient (in float x0, in float y0, in float r0, in float x1, in float y1, in float r1); */
  nsIDOMCanvasGradientD  CreateRadialGradient(float x0, float y0, float r0, float x1, float y1, float r1){
    nsIDOMCanvasGradient _retval;
    nsresult __result = inner.CreateRadialGradient(x0, y0, r0, x1, y1, r1, &_retval);
    CheckException(__result);
    return new nsIDOMCanvasGradientD(_retval);
  }

  /* nsIDOMCanvasPattern createPattern (in nsIDOMHTMLElement image, in DOMString repetition); */
  nsIDOMCanvasPatternD  CreatePattern(nsIDOMHTMLElementD image, wchar[] repetition){
    scope auto _repetition = new AString(repetition);
    nsIDOMCanvasPattern _retval;
    nsresult __result = inner.CreatePattern(image ? cast(nsIDOMHTMLElement)image : null, cast(nsAString*)_repetition, &_retval);
    CheckException(__result);
    return new nsIDOMCanvasPatternD(_retval);
  }

  /* attribute float lineWidth; */
  float LineWidth(){
    float value;
    nsresult __result = inner.GetLineWidth(&value);
    CheckException(__result);
    return value;
  }
  void LineWidth(float aLineWidth){
    nsresult __result = inner.SetLineWidth(aLineWidth);
    CheckException(__result);
  }

  /* attribute DOMString lineCap; */
  wchar[] LineCap(){
    scope auto value = new AString();
    nsresult __result = inner.GetLineCap(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void LineCap(wchar[] aLineCap){
    scope auto value = new AString(aLineCap);
    nsresult __result = inner.SetLineCap(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString lineJoin; */
  wchar[] LineJoin(){
    scope auto value = new AString();
    nsresult __result = inner.GetLineJoin(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void LineJoin(wchar[] aLineJoin){
    scope auto value = new AString(aLineJoin);
    nsresult __result = inner.SetLineJoin(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute float miterLimit; */
  float MiterLimit(){
    float value;
    nsresult __result = inner.GetMiterLimit(&value);
    CheckException(__result);
    return value;
  }
  void MiterLimit(float aMiterLimit){
    nsresult __result = inner.SetMiterLimit(aMiterLimit);
    CheckException(__result);
  }

  /* attribute float shadowOffsetX; */
  float ShadowOffsetX(){
    float value;
    nsresult __result = inner.GetShadowOffsetX(&value);
    CheckException(__result);
    return value;
  }
  void ShadowOffsetX(float aShadowOffsetX){
    nsresult __result = inner.SetShadowOffsetX(aShadowOffsetX);
    CheckException(__result);
  }

  /* attribute float shadowOffsetY; */
  float ShadowOffsetY(){
    float value;
    nsresult __result = inner.GetShadowOffsetY(&value);
    CheckException(__result);
    return value;
  }
  void ShadowOffsetY(float aShadowOffsetY){
    nsresult __result = inner.SetShadowOffsetY(aShadowOffsetY);
    CheckException(__result);
  }

  /* attribute float shadowBlur; */
  float ShadowBlur(){
    float value;
    nsresult __result = inner.GetShadowBlur(&value);
    CheckException(__result);
    return value;
  }
  void ShadowBlur(float aShadowBlur){
    nsresult __result = inner.SetShadowBlur(aShadowBlur);
    CheckException(__result);
  }

  /* attribute DOMString shadowColor; */
  wchar[] ShadowColor(){
    scope auto value = new AString();
    nsresult __result = inner.GetShadowColor(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void ShadowColor(wchar[] aShadowColor){
    scope auto value = new AString(aShadowColor);
    nsresult __result = inner.SetShadowColor(cast(nsAString*)value);
    CheckException(__result);
  }

  /* void clearRect (in float x, in float y, in float w, in float h); */
  void ClearRect(float x, float y, float w, float h){
    nsresult __result = inner.ClearRect(x, y, w, h);
    CheckException(__result);
  }

  /* void fillRect (in float x, in float y, in float w, in float h); */
  void FillRect(float x, float y, float w, float h){
    nsresult __result = inner.FillRect(x, y, w, h);
    CheckException(__result);
  }

  /* void strokeRect (in float x, in float y, in float w, in float h); */
  void StrokeRect(float x, float y, float w, float h){
    nsresult __result = inner.StrokeRect(x, y, w, h);
    CheckException(__result);
  }

  /* void beginPath (); */
  void BeginPath(){
    nsresult __result = inner.BeginPath();
    CheckException(__result);
  }

  /* void closePath (); */
  void ClosePath(){
    nsresult __result = inner.ClosePath();
    CheckException(__result);
  }

  /* void moveTo (in float x, in float y); */
  void MoveTo(float x, float y){
    nsresult __result = inner.MoveTo(x, y);
    CheckException(__result);
  }

  /* void lineTo (in float x, in float y); */
  void LineTo(float x, float y){
    nsresult __result = inner.LineTo(x, y);
    CheckException(__result);
  }

  /* void quadraticCurveTo (in float cpx, in float cpy, in float x, in float y); */
  void QuadraticCurveTo(float cpx, float cpy, float x, float y){
    nsresult __result = inner.QuadraticCurveTo(cpx, cpy, x, y);
    CheckException(__result);
  }

  /* void bezierCurveTo (in float cp1x, in float cp1y, in float cp2x, in float cp2y, in float x, in float y); */
  void BezierCurveTo(float cp1x, float cp1y, float cp2x, float cp2y, float x, float y){
    nsresult __result = inner.BezierCurveTo(cp1x, cp1y, cp2x, cp2y, x, y);
    CheckException(__result);
  }

  /* void arcTo (in float x1, in float y1, in float x2, in float y2, in float radius); */
  void ArcTo(float x1, float y1, float x2, float y2, float radius){
    nsresult __result = inner.ArcTo(x1, y1, x2, y2, radius);
    CheckException(__result);
  }

  /* void arc (in float x, in float y, in float r, in float startAngle, in float endAngle, in boolean clockwise); */
  void Arc(float x, float y, float r, float startAngle, float endAngle, PRBool clockwise){
    nsresult __result = inner.Arc(x, y, r, startAngle, endAngle, clockwise);
    CheckException(__result);
  }

  /* void rect (in float x, in float y, in float w, in float h); */
  void Rect(float x, float y, float w, float h){
    nsresult __result = inner.Rect(x, y, w, h);
    CheckException(__result);
  }

  /* void fill (); */
  void Fill(){
    nsresult __result = inner.Fill();
    CheckException(__result);
  }

  /* void stroke (); */
  void Stroke(){
    nsresult __result = inner.Stroke();
    CheckException(__result);
  }

  /* void clip (); */
  void Clip(){
    nsresult __result = inner.Clip();
    CheckException(__result);
  }

  /* void drawImage (); */
  void DrawImage(){
    nsresult __result = inner.DrawImage();
    CheckException(__result);
  }

  /* boolean isPointInPath (in float x, in float y); */
  PRBool IsPointInPath(float x, float y){
    PRBool _retval;
    nsresult __result = inner.IsPointInPath(x, y, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void getImageData (); */
  void GetImageData(){
    nsresult __result = inner.GetImageData();
    CheckException(__result);
  }

  /* void putImageData (); */
  void PutImageData(){
    nsresult __result = inner.PutImageData();
    CheckException(__result);
  }

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
  void DrawWindow(nsIDOMWindowD window, PRInt32 x, PRInt32 y, PRInt32 w, PRInt32 h, wchar[] bgColor){
    scope auto _bgColor = new AString(bgColor);
    nsresult __result = inner.DrawWindow(window ? cast(nsIDOMWindow)window : null, x, y, w, h, cast(nsAString*)_bgColor);
    CheckException(__result);
  }

private:
  nsIDOMCanvasRenderingContext2D inner;

}

