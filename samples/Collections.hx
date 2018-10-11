package samples;

interface Foldable {

}

interface Mappable {

}

interface MappableWithIndex<F, K> {
	public function mapi <A,B>(a:F<A>, f:A->K->B):F<B>;
}

class MappableWithIndexArrayInt implements MappableWithIndex<Array<_>, Int> {
	public function mapi <A,B>(a:Array<A>, f:A->K->B):Array<B> {
		var r = [];
		for (i in 0...a.length) {
			r[i] = f(a[i], i);
		}
		return r;
	}
}

interface MappableWithIndex {

}