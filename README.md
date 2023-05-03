# ruby_rust_ffi_faster_integer_sum_example

Nothing too exiting here just a PoC

Here is the output on a M1 MBP as executed by ruby 3.0.5 using ruby benchmark

> Rehearsal ------------------------------------
> The sum of all integers up to 2147483647 is 2305843008139952128 with a Rust C extension
>  1.401876   0.008323   1.410199 (  1.410466)
> --------------------------- total: 1.410199sec
>
>       user     system      total        real
> The sum of all integers up to 2147483647 is 2305843008139952128 with a Rust C extension
>  1.412070      0.000000    1.412070     (  1.412412)
> Rehearsal ------------------------------------
> The sum of all integers up to 2147483647 is 2305843008139952128 with pure ruby
> 59.333977   0.039941  59.373918 ( 59.411968)
> -------------------------- total: 59.373918sec
>
>       user     system      total        real
> The sum of all integers up to 2147483647 is 2305843008139952128 with pure ruby
> 56.039418   0.011994  56.051412 ( 56.077451)

The idea is real simple we can create a binary library using the cdylib cargo type and wrap it in a FFI gem then Bob's your uncle.

Obviously the more complicated the code the harder this is but funnily enough this is the same strategy that the Phalcon PHP framework used to use.
It would compile much of its heavy behavior to a C Extension mounted by the PHP runtime.

So there you go, Ruby is now PHP in terms of a reference, burn me later. In the meantime lets get that high performance magic and use Rust to deal with our
servers and heavy processes that need types and safety.

Lets leave Ruby and RoR for creating the MVCs and endpoints.
