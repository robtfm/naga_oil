enable wgpu_ray_query;

#import test_module

fn main() -> f32 {
    let ray = test_module::ray_func();
    return ray.t;
}
