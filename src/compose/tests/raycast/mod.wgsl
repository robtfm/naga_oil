#define_import_path test_module

enable wgpu_ray_query;

@group(0) @binding(0) var tlas: acceleration_structure;

const RAY_NO_CULL = 0xFFu;

fn ray_func() -> RayIntersection {
    let ray = RayDesc(0u, RAY_NO_CULL, 0.0001, 100000.0, vec3<f32>(0.0, 0.0, 0.0), vec3<f32>(1.0, 0.0, 0.0));
    var rq: ray_query;
    rayQueryInitialize(&rq, tlas, ray);
    rayQueryProceed(&rq);
    return rayQueryGetCommittedIntersection(&rq);
}
