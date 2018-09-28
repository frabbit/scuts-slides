### Collecting Candidates

The first step for every implicit resolution is the collection
of all available candidates for all scopes. This step makes heavy use
of caching and lazyness to be as fast as possible.

For example when the algorithm looks for a candidate of type `Eq<Int>` in the global context. All static members
 having an `@:implicit` metadata inside of the module which defines the `Eq` interface are collected. 
