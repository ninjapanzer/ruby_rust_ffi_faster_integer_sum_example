#[no_mangle]
pub extern "C" fn sum_integers(max: u32) -> u64 {
    let mut sum :u64 = 0;

    for i in 1..=max {
        sum += i as u64;
    }

    sum
}
