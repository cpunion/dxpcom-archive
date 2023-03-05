/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISupportsPriority.idl
 */

module mozilla.xpcom.nsISupportsPriority;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsISupportsPriority */
const char[] NS_ISUPPORTSPRIORITY_IID_STR = "aa578b44-abd5-4c19-8b14-36d4de6fdc36";

const nsIID NS_ISUPPORTSPRIORITY_IID= 
  {0xaa578b44, 0xabd5, 0x4c19, 
    [ 0x8b, 0x14, 0x36, 0xd4, 0xde, 0x6f, 0xdc, 0x36 ]};

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
extern(Windows)
interface nsISupportsPriority : nsISupports {
  static const char[] IID_STR = NS_ISUPPORTSPRIORITY_IID_STR;
  static const nsIID IID = NS_ISUPPORTSPRIORITY_IID;

  /**
   * Typical priority values.
   */
  enum { PRIORITY_HIGHEST = -20 };

  enum { PRIORITY_HIGH = -10 };

  enum { PRIORITY_NORMAL = 0 };

  enum { PRIORITY_LOW = 10 };

  enum { PRIORITY_LOWEST = 20 };

  /**
   * This attribute may be modified to change the priority of this object.  The
   * implementation of this interface is free to truncate a given priority
   * value to whatever limits are appropriate.  Typically, this attribute is
   * initialized to PRIORITY_NORMAL, but implementations may choose to assign a
   * different initial value.
   */
  /* attribute long priority; */
  nsresult GetPriority(PRInt32 *aPriority);
  nsresult SetPriority(PRInt32 aPriority);

  /**
   * This method adjusts the priority attribute by a given delta.  It helps
   * reduce the amount of coding required to increment or decrement the value
   * of the priority attribute.
   */
  /* void adjustPriority (in long delta); */
  nsresult AdjustPriority(PRInt32 delta);

}

