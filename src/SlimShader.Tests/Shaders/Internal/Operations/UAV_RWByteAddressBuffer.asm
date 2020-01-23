//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Note: shader requires additional functionality:
//       Tiled resources
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// uav                                   UAV    byte         r/w             u1      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   x           0     NONE     int   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed | skipOptimization
dcl_uav_raw u1
dcl_input_ps constant v0.x
dcl_output o0.xyzw
dcl_temps 6
itof r0.xyzw, l(0, 0, 0, 0)
mov r1.x, v0.x
mov r1.y, v0.x
mov r2.xyzw, v0.xxxx
mov r1.z, v0.x
mov r1.w, v0.x
mov r3.x, v0.x
bufinfo_indexable(raw_buffer)(mixed,mixed,mixed,mixed) r3.y, u1.yxzw
mov r3.y, r3.y
utof r4.xyzw, r3.yyyy
add r0.xyzw, r0.xyzw, r4.xyzw
atomic_iadd u1, r1.x, r1.y
imm_atomic_iadd r4.x, u1, r1.x, r1.y
mov r4.x, r4.x
utof r4.xyzw, r4.xxxx
add r0.xyzw, r0.xyzw, r4.xyzw
atomic_and u1, r1.x, r1.y
imm_atomic_and r4.x, u1, r1.x, r1.y
mov r4.x, r4.x
utof r4.xyzw, r4.xxxx
add r0.xyzw, r0.xyzw, r4.xyzw
atomic_cmp_store u1, r1.x, r1.z, r1.y
imm_atomic_cmp_exch r4.x, u1, r1.x, r1.z, r1.y
mov r4.x, r4.x
utof r4.xyzw, r4.xxxx
add r0.xyzw, r0.xyzw, r4.xyzw
atomic_cmp_store u1, r1.x, r1.z, r1.y
imm_atomic_exch r4.x, u1, r1.x, r1.y
imm_atomic_exch r4.x, u1, r1.x, r1.y
mov r4.x, r4.x
utof r4.xyzw, r4.xxxx
add r0.xyzw, r0.xyzw, r4.xyzw
atomic_umax u1, r1.x, r1.y
imm_atomic_umax r4.x, u1, r1.x, r1.y
mov r4.x, r4.x
utof r4.xyzw, r4.xxxx
add r0.xyzw, r0.xyzw, r4.xyzw
atomic_umin u1, r1.x, r1.y
imm_atomic_umin r4.x, u1, r1.x, r1.y
mov r4.x, r4.x
utof r4.xyzw, r4.xxxx
add r0.xyzw, r0.xyzw, r4.xyzw
atomic_or u1, r1.x, r1.y
imm_atomic_or r4.x, u1, r1.x, r1.y
mov r4.x, r4.x
utof r4.xyzw, r4.xxxx
add r0.xyzw, r0.xyzw, r4.xyzw
atomic_xor u1, r1.x, r1.y
imm_atomic_xor r4.x, u1, r1.x, r1.y
mov r4.x, r4.x
utof r4.xyzw, r4.xxxx
add r0.xyzw, r0.xyzw, r4.xyzw
ld_raw_indexable(raw_buffer)(mixed,mixed,mixed,mixed) r1.x, r1.w, u1.xxxx
utof r4.xyzw, r1.xxxx
add r0.xyzw, r0.xyzw, r4.xyzw
ld_raw_s_indexable(raw_buffer)(mixed,mixed,mixed,mixed) r1.x, r4.x, r1.w, u1.xxxx
check_access_fully_mapped r1.y, r4.x
utof r4.xyzw, r1.xxxx
add r0.xyzw, r0.xyzw, r4.xyzw
and r4.xyzw, r1.yyyy, l(0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000)
add r0.xyzw, r0.xyzw, r4.xyzw
ld_raw_indexable(raw_buffer)(mixed,mixed,mixed,mixed) r1.xy, r1.w, u1.xyxx
utof r1.xy, r1.xyxx
add r1.xy, r0.xyxx, r1.xyxx
ld_raw_s_indexable(raw_buffer)(mixed,mixed,mixed,mixed) r4.xy, r5.x, r1.w, u1.xyxx
check_access_fully_mapped r1.z, r5.x
utof r3.yz, r4.xxyx
add r0.xy, r1.xyxx, r3.yzyy
and r4.xyzw, r1.zzzz, l(0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000)
add r0.xyzw, r0.xyzw, r4.xyzw
ld_raw_indexable(raw_buffer)(mixed,mixed,mixed,mixed) r1.xyz, r1.w, u1.xyzx
utof r1.xyz, r1.xyzx
add r1.xyz, r0.xyzx, r1.xyzx
ld_raw_s_indexable(raw_buffer)(mixed,mixed,mixed,mixed) r4.xyz, r5.x, r1.w, u1.xyzx
check_access_fully_mapped r3.y, r5.x
utof r4.xyz, r4.xyzx
add r0.xyz, r1.xyzx, r4.xyzx
and r4.xyzw, r3.yyyy, l(0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000)
add r0.xyzw, r0.xyzw, r4.xyzw
ld_raw_indexable(raw_buffer)(mixed,mixed,mixed,mixed) r4.xyzw, r1.w, u1.xyzw
utof r4.xyzw, r4.xyzw
add r0.xyzw, r0.xyzw, r4.xyzw
ld_raw_s_indexable(raw_buffer)(mixed,mixed,mixed,mixed) r1.xyzw, r4.x, r1.w, u1.xyzw
check_access_fully_mapped r3.y, r4.x
utof r1.xyzw, r1.xyzw
add r0.xyzw, r0.xyzw, r1.xyzw
and r1.xyzw, r3.yyyy, l(0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000)
add r0.xyzw, r0.xyzw, r1.xyzw
store_raw u1.xyzw, r3.x, r2.xyzw
mov o0.xyzw, r0.xyzw
ret 
// Approximately 91 instruction slots used
