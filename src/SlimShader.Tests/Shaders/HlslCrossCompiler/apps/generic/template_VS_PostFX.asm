//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyz         0     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xyzw
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_input v0.xyz
dcl_output_siv o0.xyzw, position
dcl_output o1.xy
dcl_temps 1
mov o0.xyz, v0.xyzx
mov o0.w, l(1.000000)
add r0.xy, v0.xyxx, l(1.000000, 1.000000, 0.000000, 0.000000)
mul o1.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
ret 
// Approximately 5 instruction slots used
