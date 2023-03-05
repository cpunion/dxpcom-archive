/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbBooleanExpression.idl
 */

module mozilla.xpcom.nsIAbBooleanExpression;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISupportsArray;

alias PRInt32 nsAbBooleanConditionType;


/* starting interface:    nsIAbBooleanConditionTypes */
const char[] NS_IABBOOLEANCONDITIONTYPES_IID_STR = "f51387b1-5aef-4a1c-830e-7cd3b02366ce";

const nsIID NS_IABBOOLEANCONDITIONTYPES_IID= 
  {0xf51387b1, 0x5aef, 0x4a1c, 
    [ 0x83, 0x0e, 0x7c, 0xd3, 0xb0, 0x23, 0x66, 0xce ]};

/**
 * Condition types
 *
 * Constants defining the types of condition
 * to obtain a boolean result of TRUE or FALSE
 *
 */
extern(Windows)
interface nsIAbBooleanConditionTypes {
  static const char[] IID_STR = NS_IABBOOLEANCONDITIONTYPES_IID_STR;
  static const nsIID IID = NS_IABBOOLEANCONDITIONTYPES_IID;

  enum { Exists = 0 };

  enum { DoesNotExist = 1 };

  enum { Contains = 2 };

  enum { DoesNotContain = 3 };

  enum { Is = 4 };

  enum { IsNot = 5 };

  enum { BeginsWith = 6 };

  enum { EndsWith = 7 };

  enum { LessThan = 8 };

  enum { GreaterThan = 9 };

  enum { SoundsLike = 10 };

  enum { RegExp = 11 };

}

alias PRInt32 nsAbBooleanOperationType;


/* starting interface:    nsIAbBooleanOperationTypes */
const char[] NS_IABBOOLEANOPERATIONTYPES_IID_STR = "9bdd2e51-2be4-49a4-a558-36d1a812231a";

const nsIID NS_IABBOOLEANOPERATIONTYPES_IID= 
  {0x9bdd2e51, 0x2be4, 0x49a4, 
    [ 0xa5, 0x58, 0x36, 0xd1, 0xa8, 0x12, 0x23, 0x1a ]};

extern(Windows)
interface nsIAbBooleanOperationTypes {
  static const char[] IID_STR = NS_IABBOOLEANOPERATIONTYPES_IID_STR;
  static const nsIID IID = NS_IABBOOLEANOPERATIONTYPES_IID;

  enum { AND = 0 };

  enum { OR = 1 };

  enum { NOT = 2 };

}


/* starting interface:    nsIAbBooleanConditionString */
const char[] NS_IABBOOLEANCONDITIONSTRING_IID_STR = "c3869d72-cfd0-45f0-a0ec-3f67d83c7110";

const nsIID NS_IABBOOLEANCONDITIONSTRING_IID= 
  {0xc3869d72, 0xcfd0, 0x45f0, 
    [ 0xa0, 0xec, 0x3f, 0x67, 0xd8, 0x3c, 0x71, 0x10 ]};

/**
 * String condition
 *
 * A string condition represents a leaf node in a
 * boolean expression tree and represents
 * test which will return TRUE or FALSE
 *
 * Condition is an expression which is a
 * leaf node in a boolean expression tree
 *
 */
extern(Windows)
interface nsIAbBooleanConditionString : nsISupports {
  static const char[] IID_STR = NS_IABBOOLEANCONDITIONSTRING_IID_STR;
  static const nsIID IID = NS_IABBOOLEANCONDITIONSTRING_IID;

  /**
     * The condition for how the a value
     * should be compared
     *
     */
  /* attribute nsAbBooleanConditionType condition; */
  nsresult GetCondition(nsAbBooleanConditionType *aCondition);
  nsresult SetCondition(nsAbBooleanConditionType aCondition);

  /**
     * The lhs of the condition
     *
     * Represents a property name which
     * should be evaluated to obtain the
     * lhs.
     *
     */
  /* attribute string name; */
  nsresult GetName(char * *aName);
  nsresult SetName(char * aName);

  /**
     * The rhs of the condition
     *
     * <name> [condition] value
     *
     */
  /* attribute wstring value; */
  nsresult GetValue(PRUnichar * *aValue);
  nsresult SetValue(PRUnichar * aValue);

}


/* starting interface:    nsIAbBooleanExpression */
const char[] NS_IABBOOLEANEXPRESSION_IID_STR = "67f87c44-2c63-41a2-9545-aff1d9f09623";

const nsIID NS_IABBOOLEANEXPRESSION_IID= 
  {0x67f87c44, 0x2c63, 0x41a2, 
    [ 0x95, 0x45, 0xaf, 0xf1, 0xd9, 0xf0, 0x96, 0x23 ]};

/**
 * N Boolean expression type
 *
 * Supports Unary Binary and N boolean expressions
 *
 * An operation represents a node in a boolean
 * expression tree which may contain one or more
 * child conditions or expressions
 *
 */
extern(Windows)
interface nsIAbBooleanExpression : nsISupports {
  static const char[] IID_STR = NS_IABBOOLEANEXPRESSION_IID_STR;
  static const nsIID IID = NS_IABBOOLEANEXPRESSION_IID;

  /**
     * The boolean operation to be applied to
     * results of all evaluated expressions
     *
     */
  /* attribute nsAbBooleanOperationType operation; */
  nsresult GetOperation(nsAbBooleanOperationType *aOperation);
  nsresult SetOperation(nsAbBooleanOperationType aOperation);

  /**
     * List of peer expressions
     *
     * e1 [op] e2 [op] .... en
     *
     */
  /* attribute nsISupportsArray expressions; */
  nsresult GetExpressions(nsISupportsArray  *aExpressions);
  nsresult SetExpressions(nsISupportsArray  aExpressions);

  /**
     * expressions attribute defined explicitly as an
     * array of nsISupports
     *
     */
  /* void asetExpressions (in unsigned long aExpressionsSize, [array, size_is (aExpressionsSize)] in nsISupports aExpressionsArray); */
  nsresult AsetExpressions(PRUint32 aExpressionsSize, nsISupports *aExpressionsArray);

  /* void agetExpressions (out unsigned long aExpressionsSize, [array, size_is (aExpressionsSize), retval] out nsISupports aExpressionsArray); */
  nsresult AgetExpressions(PRUint32 *aExpressionsSize, nsISupports **aExpressionsArray);

}

