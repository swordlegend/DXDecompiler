//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
// Parameters:
//
//   float4x4 g_mProj;
//   float4x4 g_mWorldView;
//
//
// Registers:
//
//   Name         Reg   Size
//   ------------ ----- ----
//   g_mWorldView c0       4
//   g_mProj      c4       4
//

    vs_2_0
    dcl_position v0
    dcl_texcoord v1
    dp4 r0.x, v0, c0
    dp4 r0.y, v0, c1
    dp4 r0.z, v0, c2
    dp4 r0.w, v0, c3
    dp4 oPos.x, r0, c4
    dp4 oPos.y, r0, c5
    dp4 oPos.z, r0, c6
    dp4 oPos.w, r0, c7
    mov oT0.xy, v1

// approximately 9 instruction slots used
