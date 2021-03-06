//
// FX Version: fx_4_0
// Child effect (requires effect pool): false
//
// 1 local buffer(s)
//
cbuffer $Globals
{
    float3  g_vLightDir = { 0, 0.707000017, -0.707000017 };// Offset:    0, size:   12
    float4x4 g_mWorld;                  // Offset:   16, size:   64
    float4x4 g_mWorldViewProjection;    // Offset:   80, size:   64
}

//
// 2 local object(s)
//
Texture2D g_txDiffuse;
SamplerState DiffuseSampler
{
    Texture  = g_txDiffuse;
    AddressU = uint(WRAP /* 1 */);
    AddressV = uint(WRAP /* 1 */);
};

//
// 1 technique(s)
//
technique10 RenderScene10
{
    pass P0
    {
        VertexShader = asm {
            //
            // Generated by Microsoft (R) HLSL Shader Compiler 10.1
            //
            //
            // Buffer Definitions: 
            //
            // cbuffer $Globals
            // {
            //
            //   float3 g_vLightDir;                // Offset:    0 Size:    12
            //      = 0x00000000 0x3f34fdf4 0xbf34fdf4 
            //   float4x4 g_mWorld;                 // Offset:   16 Size:    64
            //   float4x4 g_mWorldViewProjection;   // Offset:   80 Size:    64
            //
            // }
            //
            //
            // Resource Bindings:
            //
            // Name                                 Type  Format         Dim      HLSL Bind  Count
            // ------------------------------ ---------- ------- ----------- -------------- ------
            // $Globals                          cbuffer      NA          NA            cb0      1 
            //
            //
            //
            // Input signature:
            //
            // Name                 Index   Mask Register SysValue  Format   Used
            // -------------------- ----- ------ -------- -------- ------- ------
            // POSITION                 0   xyzw        0     NONE   float   xyzw
            // NORMAL                   0   xyz         1     NONE   float   xyz 
            // TEXCOORD                 0   xy          2     NONE   float   xy  
            //
            //
            // Output signature:
            //
            // Name                 Index   Mask Register SysValue  Format   Used
            // -------------------- ----- ------ -------- -------- ------- ------
            // SV_Position              0   xyzw        0      POS   float   xyzw
            // COLOR                    0   xyzw        1     NONE   float   xyzw
            // TEXCOORD                 0   xy          2     NONE   float   xy  
            //
            vs_4_0
            dcl_constantbuffer CB0[9], immediateIndexed
            dcl_input v0.xyzw
            dcl_input v1.xyz
            dcl_input v2.xy
            dcl_output_siv o0.xyzw, position
            dcl_output o1.xyzw
            dcl_output o2.xy
            dcl_temps 1
            dp4 o0.x, v0.xyzw, cb0[5].xyzw
            dp4 o0.y, v0.xyzw, cb0[6].xyzw
            dp4 o0.z, v0.xyzw, cb0[7].xyzw
            dp4 o0.w, v0.xyzw, cb0[8].xyzw
            dp3 r0.x, v1.xyzx, cb0[1].xyzx
            dp3 r0.y, v1.xyzx, cb0[2].xyzx
            dp3 r0.z, v1.xyzx, cb0[3].xyzx
            dp3 r0.w, r0.xyzx, r0.xyzx
            rsq r0.w, r0.w
            mul r0.xyz, r0.wwww, r0.xyzx
            dp3 r0.x, r0.xyzx, cb0[0].xyzx
            max o1.xyz, r0.xxxx, l(0.300000, 0.300000, 0.300000, 0.000000)
            mov o1.w, l(1.000000)
            mov o2.xy, v2.xyxx
            ret 
            // Approximately 15 instruction slots used
                    
        };
        GeometryShader = NULL;
        PixelShader = asm {
            //
            // Generated by Microsoft (R) HLSL Shader Compiler 10.1
            //
            //
            // Resource Bindings:
            //
            // Name                                 Type  Format         Dim      HLSL Bind  Count
            // ------------------------------ ---------- ------- ----------- -------------- ------
            // DiffuseSampler                    sampler      NA          NA             s0      1 
            // DiffuseSampler                    texture  float4          2d             t0      1 
            //
            //
            //
            // Input signature:
            //
            // Name                 Index   Mask Register SysValue  Format   Used
            // -------------------- ----- ------ -------- -------- ------- ------
            // SV_Position              0   xyzw        0      POS   float       
            // COLOR                    0   xyzw        1     NONE   float   xyzw
            // TEXCOORD                 0   xy          2     NONE   float   xy  
            //
            //
            // Output signature:
            //
            // Name                 Index   Mask Register SysValue  Format   Used
            // -------------------- ----- ------ -------- -------- ------- ------
            // SV_Target                0   xyzw        0   TARGET   float   xyzw
            //
            ps_4_0
            dcl_sampler s0, mode_default
            dcl_resource_texture2d (float,float,float,float) t0
            dcl_input_ps linear v1.xyzw
            dcl_input_ps linear v2.xy
            dcl_output o0.xyzw
            dcl_temps 1
            sample r0.xyzw, v2.xyxx, t0.xyzw, s0
            mul o0.xyzw, r0.xyzw, v1.xyzw
            ret 
            // Approximately 3 instruction slots used
                    
        };
    }

}

