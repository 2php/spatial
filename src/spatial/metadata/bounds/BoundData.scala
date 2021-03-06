package spatial.metadata.bounds

import argon._

// TODO[2]: Bound is in terms of Int right now?
abstract class Bound(x: Int) { 
  def toInt: Int = x 

  def meet(that: Bound): Bound = {
    if (this.isInstanceOf[Expect] && that.isInstanceOf[Expect])
      Expect(x max that.toInt)
    else if (this.isInstanceOf[Final] && that.isInstanceOf[Final])
      Final(x max that.toInt)
    else UpperBound(x max that.toInt)
  }
}
case class Final(x: Int) extends Bound(x) 
case class Expect(x: Int) extends Bound(x)
case class UpperBound(x: Int) extends Bound(x)

/** Defines the upper bound value of a symbol, if any.
  *
  * Option:  sym.getBound
  * Getter:  sym.bound
  * Setter:  sym.bound = (Bound)
  * Default: undefined
  *
  * Matchers: Final(value: Int)  - for exact values
  *           Expect(value: Int) - for, e.g. functions of unfinalized parameters
  *           Upper(value: Int)  - for upper bounds (usually set by user)
  */
case class SymbolBound(bound: Bound) extends Data[SymbolBound](SetBy.Analysis.Self)

/** Flags that a symbol is a "global".
  * In Spatial, a "global" is any value which is solely a function of input arguments
  * and constants. These are computed prior to starting the main computation, and
  * therefore appear constant to the majority of the program.
  *
  * Getter:  sym.isFixedBits
  * Setter:  sym.isFixedBits = (true|false)
  * Default: false
  */
case class Global(flag: Boolean) extends Data[Global](SetBy.Flow.Self)

/** Flags that a symbol is representable as a statically known list of bits.
  *
  * Getter:  sym.isFixedBits
  * Setter:  sym.isFixedBits = (true|false)
  * Default: false
  */
case class FixedBits(flag: Boolean) extends Data[FixedBits](SetBy.Flow.Self)


object Final {
  def unapply(x: Bound): Option[Int] = x match {
    case f: Final => Some(f.x)
    case _ => None
  }
  def unapply(x: Sym[_]): Option[Int] = x.getBound match {
    case Some(x: Final) => Some(x.toInt)
    case _ => None
  }
}

object Expect {
  def unapply(x: Bound): Option[Int] = Some(x.toInt)
  def unapply(x: Sym[_]): Option[Int] = x.getBound.map(_.toInt)
}

object Upper {
  def unapply(x: Sym[_]): Option[Int] = x.getBound.map(_.toInt)
}

object Bounded {
  def unapply(x: Sym[_]): Option[Bound] = x.getBound
}