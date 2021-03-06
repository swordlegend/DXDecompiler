//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// tex0                              sampler      NA          NA             s0      1 
// tex1                              sampler      NA          NA             s1      1 
// tex2                              sampler      NA          NA             s2      1 
// tex3                              sampler      NA          NA             s3      1 
// tex4                              sampler      NA          NA             s4      1 
// tex0                              texture  float4        cube             t0      1 
// tex1                              texture  float4          2d             t1      1 
// tex2                              texture  float4          2d             t2      1 
// tex3                              texture  float4          3d             t3      1 
// tex4                              texture  float4        cube             t4      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float   xyzw
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TARGET                0   xyzw        0   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed | skipOptimization
dcl_sampler s0, mode_default
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_sampler s4, mode_default
dcl_resource_texturecube (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture3d (float,float,float,float) t3
dcl_resource_texturecube (float,float,float,float) t4
dcl_input_ps_siv linear noperspective v0.xyzw, position
dcl_output o0.xyzw
dcl_temps 5
itof r0.xyzw, l(0, 0, 0, 0)
sample_indexable(texturecube)(float,float,float,float) r1.xyzw, v0.xyzx, t0.xyzw, s0
add r0.xyzw, r0.xyzw, r1.xyzw
mov r1.x, v0.z
mov r2.x, v0.w
mov r3.x, v0.x
mov r3.y, l(0.500000)
sample_indexable(texture2d)(float,float,float,float) r4.xyzw, r3.xyxx, t1.xyzw, s1
add r0.xyzw, r0.xyzw, r4.xyzw
mov r1.y, l(0)
mov r2.y, l(0)
sample_d_indexable(texture2d)(float,float,float,float) r4.xyzw, r3.xyxx, t1.xyzw, s1, r1.xyxx, r2.xyxx
add r0.xyzw, r0.xyzw, r4.xyzw
sample_b_indexable(texture2d)(float,float,float,float) r4.xyzw, r3.xyxx, t1.xyzw, s1, v0.w
add r0.xyzw, r0.xyzw, r4.xyzw
sample_d_indexable(texture2d)(float,float,float,float) r1.xyzw, r3.xyxx, t1.xyzw, s1, r1.xyxx, r2.xyxx
add r0.xyzw, r0.xyzw, r1.xyzw
sample_l_indexable(texture2d)(float,float,float,float) r1.xyzw, r3.xyxx, t1.xyzw, s1, v0.w
add r0.xyzw, r0.xyzw, r1.xyzw
mov r1.x, v0.w
mov r1.y, l(1.000000)
div r1.xy, r3.xyxx, r1.xyxx
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r1.xyxx, t1.xyzw, s1
add r0.xyzw, r0.xyzw, r1.xyzw
mov r1.xy, v0.zzzz
mov r1.zw, v0.wwww
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, v0.xyxx, t2.xyzw, s2
add r0.xyzw, r0.xyzw, r2.xyzw
sample_d_indexable(texture2d)(float,float,float,float) r2.xyzw, v0.xyxx, t2.xyzw, s2, r1.xyxx, r1.zwzz
add r0.xyzw, r0.xyzw, r2.xyzw
sample_b_indexable(texture2d)(float,float,float,float) r2.xyzw, v0.xyxx, t2.xyzw, s2, v0.w
add r0.xyzw, r0.xyzw, r2.xyzw
sample_d_indexable(texture2d)(float,float,float,float) r1.xyzw, v0.xyxx, t2.xyzw, s2, r1.xyxx, r1.zwzz
add r0.xyzw, r0.xyzw, r1.xyzw
sample_l_indexable(texture2d)(float,float,float,float) r1.xyzw, v0.xyxx, t2.xyzw, s2, v0.w
add r0.xyzw, r0.xyzw, r1.xyzw
div r1.xy, v0.xyxx, v0.wwww
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r1.xyxx, t2.xyzw, s2
add r0.xyzw, r0.xyzw, r1.xyzw
mov r1.xyz, v0.zzzz
mov r2.xyz, v0.wwww
sample_indexable(texture3d)(float,float,float,float) r3.xyzw, v0.xyzx, t3.xyzw, s3
add r0.xyzw, r0.xyzw, r3.xyzw
sample_d_indexable(texture3d)(float,float,float,float) r3.xyzw, v0.xyzx, t3.xyzw, s3, r1.xyzx, r2.xyzx
add r0.xyzw, r0.xyzw, r3.xyzw
sample_b_indexable(texture3d)(float,float,float,float) r3.xyzw, v0.xyzx, t3.xyzw, s3, v0.w
add r0.xyzw, r0.xyzw, r3.xyzw
sample_d_indexable(texture3d)(float,float,float,float) r3.xyzw, v0.xyzx, t3.xyzw, s3, r1.xyzx, r2.xyzx
add r0.xyzw, r0.xyzw, r3.xyzw
sample_l_indexable(texture3d)(float,float,float,float) r3.xyzw, v0.xyzx, t3.xyzw, s3, v0.w
add r0.xyzw, r0.xyzw, r3.xyzw
div r3.xyz, v0.xyzx, v0.wwww
sample_indexable(texture3d)(float,float,float,float) r3.xyzw, r3.xyzx, t3.xyzw, s3
add r0.xyzw, r0.xyzw, r3.xyzw
sample_indexable(texturecube)(float,float,float,float) r3.xyzw, v0.xyzx, t4.xyzw, s4
add r0.xyzw, r0.xyzw, r3.xyzw
sample_d_indexable(texturecube)(float,float,float,float) r3.xyzw, v0.xyzx, t4.xyzw, s4, r1.xyzx, r2.xyzx
add r0.xyzw, r0.xyzw, r3.xyzw
sample_b_indexable(texturecube)(float,float,float,float) r3.xyzw, v0.xyzx, t4.xyzw, s4, v0.w
add r0.xyzw, r0.xyzw, r3.xyzw
sample_d_indexable(texturecube)(float,float,float,float) r1.xyzw, v0.xyzx, t4.xyzw, s4, r1.xyzx, r2.xyzx
add r0.xyzw, r0.xyzw, r1.xyzw
sample_l_indexable(texturecube)(float,float,float,float) r1.xyzw, v0.xyzx, t4.xyzw, s4, v0.w
add r0.xyzw, r0.xyzw, r1.xyzw
div r1.xyz, v0.xyzx, v0.wwww
sample_indexable(texturecube)(float,float,float,float) r1.xyzw, r1.xyzx, t4.xyzw, s4
add r0.xyzw, r0.xyzw, r1.xyzw
mov o0.xyzw, r0.xyzw
ret 
// Approximately 69 instruction slots used
