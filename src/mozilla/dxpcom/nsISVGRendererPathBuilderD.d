/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISVGRendererPathBuilder.idl
 */

module mozilla.dxpcom.nsISVGRendererPathBuilderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISVGRendererPathBuilder;


public import mozilla.dxpcom.nsISVGRendererPathBuilderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsISVGRendererPathBuilder */
/**
 * \addtogroup renderer_interfaces Rendering Engine Interfaces
 * @{
 */
/**
 * One of a number of interfaces (all starting with nsISVGRenderer*)
 * to be implemented by an SVG rendering engine. See nsISVGRenderer
 * for more details.
 *
 * This interface is used by an nsISVGRendererPathGeometry object in
 * a call to nsISVGPathGeometrySource::constructPath() to obtain a
 * native representation of the path described by
 * nsISVGPathGeometrySource.
 */
class nsISVGRendererPathBuilderD : public nsISupportsD {

  static const nsIID IID = NS_ISVGRENDERERPATHBUILDER_IID;


  alias nsISVGRendererPathBuilder InnerType;

  this(nsISVGRendererPathBuilder intr){
    super(intr);
    this.inner = intr;
  }

  nsISVGRendererPathBuilder opCast() {
    return inner;
  }

  void opAssign(nsISVGRendererPathBuilder value) {
    inner = value;
  }

  /**
   * Move current position and start new sub-path.
   *
   * @param x X-coordinate (untransformed).
   * @param y Y-coordinate (untransformed).
   */
  /* void moveto (in float x, in float y); */
  void Moveto(float x, float y){
    nsresult __result = inner.Moveto(x, y);
    CheckException(__result);
  }

  /**
   * Draw a straight line from the current position to (x,y). Advance
   * current position to (x,y).
   *
   * @param x X-coordinate of end point (untransformed).
   * @param y Y-coordinate of end point (untransformed).
   */
  /* void lineto (in float x, in float y); */
  void Lineto(float x, float y){
    nsresult __result = inner.Lineto(x, y);
    CheckException(__result);
  }

  /**
   * Draw cubic Bezier curve from the current position to (x,y) using
   * (x1,y1) as the control point at the beginning og the curve and
   * (x2,y2) as the control point at the end of the curve. Advance
   * current position to (x,y).
   *
   * @param x  X-coordinate of end point (untransformed).
   * @param y  Y-coordinate of end point (untransformed).
   * @param x1 X-coordinate of first control point (untransformed).
   * @param y1 Y-coordinate of first control point (untransformed).
   * @param x2 X-coordinate of second control point (untransformed).
   * @param y2 Y-coordinate of second control point (untransformed).
   */
  /* void curveto (in float x, in float y, in float x1, in float y1, in float x2, in float y2); */
  void Curveto(float x, float y, float x1, float y1, float x2, float y2){
    nsresult __result = inner.Curveto(x, y, x1, y1, x2, y2);
    CheckException(__result);
  }

  /**
   * Draw an elliptical arc from the current position to
   * (x,y). Advance current position to (x,y).
   *
   * @param x            X-coordinate of end point (untransformed).
   * @param y            Y-coordinate of end point (untransformed).
   * @param r1           Radius of ellipse in X direction (untransformed).
   * @param r2           Radius of ellipse in Y direction (untransformed).
   * @param angle        Rotation of ellipse as a whole (untransformed).
   * @param largeArcFlag PR_TRUE: choose the large arc (>=180 degrees),
   *                     PR_FALSE: choose the smaller arc (<=180 degrees)
   * @param sweepFlag    PR_TRUE: sweep in positive angle direction,
   *                     PR_FALSE: sweep in negative angle direction
   */
  /* void arcto (in float x, in float y, in float r1, in float r2, in float angle, in boolean largeArcFlag, in boolean sweepFlag); */
  void Arcto(float x, float y, float r1, float r2, float angle, PRBool largeArcFlag, PRBool sweepFlag){
    nsresult __result = inner.Arcto(x, y, r1, r2, angle, largeArcFlag, sweepFlag);
    CheckException(__result);
  }

  /**
   * Close the current subpath. Move current position back to
   * beginning of subpath.
   *
   * @param newX X-coordinate of new current position (untransformed).
   * @param newY Y-coordinate of new current position (untransformed).
   */
  /* void closePath (out float newX, out float newY); */
  void ClosePath(out float newX, out float newY){
    nsresult __result = inner.ClosePath(&newX, &newY);
    CheckException(__result);
  }

  /**
   * End the path description. Guaranteed to be the last function
   * called.
   */
  /* void endPath (); */
  void EndPath(){
    nsresult __result = inner.EndPath();
    CheckException(__result);
  }

private:
  nsISVGRendererPathBuilder inner;

}

