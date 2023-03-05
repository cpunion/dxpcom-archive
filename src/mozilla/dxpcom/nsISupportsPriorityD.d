/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISupportsPriority.idl
 */

module mozilla.dxpcom.nsISupportsPriorityD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISupportsPriority;


public import mozilla.dxpcom.nsISupportsPriorityD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsISupportsPriority */
/**
 * This interface exposes the general notion of a scheduled object with a
 * integral priority value.  Following UNIX conventions, smaller (and possibly
 * negative) values have higher priority.
 *
 * This interface does not strictly define what happens when the priority of an
 * object is changed.  An implementation of this interface is free to define
 * the side-effects of changing the priority of an object.  In some cases,
 * changing the priority of an object may be disallowed (resulting in an
 * exception being thrown) or may simply be ignored.
 */
class nsISupportsPriorityD : public nsISupportsD {

  static const nsIID IID = NS_ISUPPORTSPRIORITY_IID;


  alias nsISupportsPriority InnerType;

  this(nsISupportsPriority intr){
    super(intr);
    this.inner = intr;
  }

  nsISupportsPriority opCast() {
    return inner;
  }

  void opAssign(nsISupportsPriority value) {
    inner = value;
  }

  /**
   * Typical priority values.
   */
  enum { PRIORITY_HIGHEST = -20 }

  enum { PRIORITY_HIGH = -10 }

  enum { PRIORITY_NORMAL = 0 }

  enum { PRIORITY_LOW = 10 }

  enum { PRIORITY_LOWEST = 20 }

  /**
   * This attribute may be modified to change the priority of this object.  The
   * implementation of this interface is free to truncate a given priority
   * value to whatever limits are appropriate.  Typically, this attribute is
   * initialized to PRIORITY_NORMAL, but implementations may choose to assign a
   * different initial value.
   */
  /* attribute long priority; */
  PRInt32 Priority(){
    PRInt32 value;
    nsresult __result = inner.GetPriority(&value);
    CheckException(__result);
    return value;
  }
  void Priority(PRInt32 aPriority){
    nsresult __result = inner.SetPriority(aPriority);
    CheckException(__result);
  }

  /**
   * This method adjusts the priority attribute by a given delta.  It helps
   * reduce the amount of coding required to increment or decrement the value
   * of the priority attribute.
   */
  /* void adjustPriority (in long delta); */
  void AdjustPriority(PRInt32 delta){
    nsresult __result = inner.AdjustPriority(delta);
    CheckException(__result);
  }

private:
  nsISupportsPriority inner;

}

