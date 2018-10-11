import scuts.implicit.Implicit;
import scuts.syntax.ImplicitInstance;
import haxe.ds.Option;

interface Eq<A> {
  function eq (a1:A, a2:A):Bool;
}

class EqInt implements Eq<Int> {
  public function new () {}
  public function eq (a1:Int, a2:Int) return a1 == a2;
}

enum List<A> { Cons(a:A, tail:List<A>); Nil; }

class Test {
  static function main() {

    function filter <A>(a:List<A>, b:A, ?E:Implicit<Eq<A>>) {
      return switch [a, b] {
        case [Nil, _]: Nil;
        case [Cons(h, tail), b]:
          var t = filter(tail, b);
          if (!E.eq(h, b)) Cons(h, t) else t;
      }
    }
    var eqInt1:Implicit<EqInt> = new EqInt();
		var eqInt2:Implicit<EqInt> = new EqInt();
		filter(Cons(1, Nil), 1); // results in an
  }
}