/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbBooleanExpression.idl
 */

module mozilla.dxpcom.nsIAbBooleanExpressionD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAbBooleanExpression;


public import mozilla.dxpcom.nsIAbBooleanExpressionD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.dxpcom.nsISupportsArrayD;


/* starting wrapper class:    nsIAbBooleanConditionTypes */
/**
 * Condition types
 *
 * Constants defining the types of condition
 * to obtain a boolean result of TRUE or FALSE
 *
 */
class nsIAbBooleanConditionTypesD {

  static const nsIID IID = NS_IABBOOLEANCONDITIONTYPES_IID;


  alias nsIAbBooleanConditionTypes InnerType;

  this(nsIAbBooleanConditionTypes intr){
    this.inner = intr;
  }

  nsIAbBooleanConditionTypes opCast() {
    return inner;
  }

  void opAssign(nsIAbBooleanConditionTypes value) {
    inner = value;
  }

  enum { Exists = 0 }

  enum { DoesNotExist = 1 }

  enum { Contains = 2 }

  enum { DoesNotContain = 3 }

  enum { Is = 4 }

  enum { IsNot = 5 }

  enum { BeginsWith = 6 }

  enum { EndsWith = 7 }

  enum { LessThan = 8 }

  enum { GreaterThan = 9 }

  enum { SoundsLike = 10 }

  enum { RegExp = 11 }

private:
  nsIAbBooleanConditionTypes inner;

}


/* starting wrapper class:    nsIAbBooleanOperationTypes */
class nsIAbBooleanOperationTypesD {

  static const nsIID IID = NS_IABBOOLEANOPERATIONTYPES_IID;


  alias nsIAbBooleanOperationTypes InnerType;

  this(nsIAbBooleanOperationTypes intr){
    this.inner = intr;
  }

  nsIAbBooleanOperationTypes opCast() {
    return inner;
  }

  void opAssign(nsIAbBooleanOperationTypes value) {
    inner = value;
  }

  enum { AND = 0 }

  enum { OR = 1 }

  enum { NOT = 2 }

private:
  nsIAbBooleanOperationTypes inner;

}


/* starting wrapper class:    nsIAbBooleanConditionString */
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
class nsIAbBooleanConditionStringD : public nsISupportsD {

  static const nsIID IID = NS_IABBOOLEANCONDITIONSTRING_IID;


  alias nsIAbBooleanConditionString InnerType;

  this(nsIAbBooleanConditionString intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbBooleanConditionString opCast() {
    return inner;
  }

  void opAssign(nsIAbBooleanConditionString value) {
    inner = value;
  }

  /**
     * The condition for how the a value
     * should be compared
     *
     */
  /* attribute nsAbBooleanConditionType condition; */
  nsAbBooleanConditionType Condition(){
    nsAbBooleanConditionType value;
    nsresult __result = inner.GetCondition(&value);
    CheckException(__result);
    return value;
  }
  void Condition(nsAbBooleanConditionType aCondition){
    nsAbBooleanConditionType value;
    nsresult __result = inner.SetCondition(value);
    CheckException(__result);
  }

  /**
     * The lhs of the condition
     *
     * Represents a property name which
     * should be evaluated to obtain the
     * lhs.
     *
     */
  /* attribute string name; */
  char* Name(){
    char* value;
    nsresult __result = inner.GetName(&value);
    CheckException(__result);
    return value;
  }
  void Name(char* aName){
    nsresult __result = inner.SetName(aName);
    CheckException(__result);
  }

  /**
     * The rhs of the condition
     *
     * <name> [condition] value
     *
     */
  /* attribute wstring value; */
  PRUnichar* Value(){
    PRUnichar* value;
    nsresult __result = inner.GetValue(&value);
    CheckException(__result);
    return value;
  }
  void Value(PRUnichar* aValue){
    nsresult __result = inner.SetValue(aValue);
    CheckException(__result);
  }

private:
  nsIAbBooleanConditionString inner;

}


/* starting wrapper class:    nsIAbBooleanExpression */
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
class nsIAbBooleanExpressionD : public nsISupportsD {

  static const nsIID IID = NS_IABBOOLEANEXPRESSION_IID;


  alias nsIAbBooleanExpression InnerType;

  this(nsIAbBooleanExpression intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbBooleanExpression opCast() {
    return inner;
  }

  void opAssign(nsIAbBooleanExpression value) {
    inner = value;
  }

  /**
     * The boolean operation to be applied to
     * results of all evaluated expressions
     *
     */
  /* attribute nsAbBooleanOperationType operation; */
  nsAbBooleanOperationType Operation(){
    nsAbBooleanOperationType value;
    nsresult __result = inner.GetOperation(&value);
    CheckException(__result);
    return value;
  }
  void Operation(nsAbBooleanOperationType aOperation){
    nsAbBooleanOperationType value;
    nsresult __result = inner.SetOperation(value);
    CheckException(__result);
  }

  /**
     * List of peer expressions
     *
     * e1 [op] e2 [op] .... en
     *
     */
  /* attribute nsISupportsArray expressions; */
  nsISupportsArrayD  Expressions(){
    nsISupportsArray value;
    nsresult __result = inner.GetExpressions(&value);
    CheckException(__result);
    return new nsISupportsArrayD(value);
  }
  void Expressions(nsISupportsArrayD  aExpressions){
    nsISupportsArray value;
    nsresult __result = inner.SetExpressions(value);
    CheckException(__result);
  }

  /**
     * expressions attribute defined explicitly as an
     * array of nsISupports
     *
     */
  /* void asetExpressions (in unsigned long aExpressionsSize, [array, size_is (aExpressionsSize)] in nsISupports aExpressionsArray); */
  void AsetExpressions(PRUint32 aExpressionsSize, nsISupportsD *aExpressionsArray){
    nsresult __result = inner.AsetExpressions(aExpressionsSize, aExpressionsArray ? cast(nsISupports)aExpressionsArray : null);
    CheckException(__result);
  }

  /* void agetExpressions (out unsigned long aExpressionsSize, [array, size_is (aExpressionsSize), retval] out nsISupports aExpressionsArray); */
  void AgetExpressions(out PRUint32 aExpressionsSize, out nsISupportsD *aExpressionsArray){
    nsISupports _aExpressionsArray;
    nsresult __result = inner.AgetExpressions(&aExpressionsSize, &_aExpressionsArray);
    CheckException(__result);
    aExpressionsArray = _aExpressionsArray ? new nsISupportsD(_aExpressionsArray) : null;
  }

private:
  nsIAbBooleanExpression inner;

}

