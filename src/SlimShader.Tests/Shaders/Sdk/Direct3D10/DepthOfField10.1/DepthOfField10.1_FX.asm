//
// FX Version: fx_4_1
// Child effect (requires effect pool): false
//
// 2 local buffer(s)
//
cbuffer cb0
{
    float4x4 g_mWorldViewProj;          // Offset:    0, size:   64
}

cbuffer cb1
{
    float4  g_vDepth;                   // Offset:    0, size:   16
    float4x4 g_mInvProj;                // Offset:   16, size:   64
}

//
// 11 local object(s)
//
Texture2D g_txDiffuse;
Texture2D g_txDepth;
Texture2DMS g_txDepthMSAA;
SamplerState g_samLinear
{
    Filter   = uint(MIN_MAG_MIP_LINEAR /* 21 */);
    AddressU = uint(CLAMP /* 3 */);
    AddressV = uint(CLAMP /* 3 */);
};
BlendState AlphaBlendState
{
    AlphaToCoverageEnable = bool(FALSE /* 0 */);
    BlendEnable[0] = bool(TRUE /* 1 */);
    SrcBlend[0] = uint(SRC_ALPHA /* 5 */);
    SrcBlend[1] = uint(SRC_ALPHA /* 5 */);
    SrcBlend[2] = uint(SRC_ALPHA /* 5 */);
    SrcBlend[3] = uint(SRC_ALPHA /* 5 */);
    SrcBlend[4] = uint(SRC_ALPHA /* 5 */);
    SrcBlend[5] = uint(SRC_ALPHA /* 5 */);
    SrcBlend[6] = uint(SRC_ALPHA /* 5 */);
    SrcBlend[7] = uint(SRC_ALPHA /* 5 */);
    DestBlend[0] = uint(ONE /* 2 */);
    DestBlend[1] = uint(ONE /* 2 */);
    DestBlend[2] = uint(ONE /* 2 */);
    DestBlend[3] = uint(ONE /* 2 */);
    DestBlend[4] = uint(ONE /* 2 */);
    DestBlend[5] = uint(ONE /* 2 */);
    DestBlend[6] = uint(ONE /* 2 */);
    DestBlend[7] = uint(ONE /* 2 */);
    BlendOp[0] = uint(ADD /* 1 */);
    BlendOp[1] = uint(ADD /* 1 */);
    BlendOp[2] = uint(ADD /* 1 */);
    BlendOp[3] = uint(ADD /* 1 */);
    BlendOp[4] = uint(ADD /* 1 */);
    BlendOp[5] = uint(ADD /* 1 */);
    BlendOp[6] = uint(ADD /* 1 */);
    BlendOp[7] = uint(ADD /* 1 */);
    SrcBlendAlpha[0] = uint(ZERO /* 1 */);
    SrcBlendAlpha[1] = uint(ZERO /* 1 */);
    SrcBlendAlpha[2] = uint(ZERO /* 1 */);
    SrcBlendAlpha[3] = uint(ZERO /* 1 */);
    SrcBlendAlpha[4] = uint(ZERO /* 1 */);
    SrcBlendAlpha[5] = uint(ZERO /* 1 */);
    SrcBlendAlpha[6] = uint(ZERO /* 1 */);
    SrcBlendAlpha[7] = uint(ZERO /* 1 */);
    DestBlendAlpha[0] = uint(ZERO /* 1 */);
    DestBlendAlpha[1] = uint(ZERO /* 1 */);
    DestBlendAlpha[2] = uint(ZERO /* 1 */);
    DestBlendAlpha[3] = uint(ZERO /* 1 */);
    DestBlendAlpha[4] = uint(ZERO /* 1 */);
    DestBlendAlpha[5] = uint(ZERO /* 1 */);
    DestBlendAlpha[6] = uint(ZERO /* 1 */);
    DestBlendAlpha[7] = uint(ZERO /* 1 */);
    BlendOpAlpha[0] = uint(ADD /* 1 */);
    BlendOpAlpha[1] = uint(ADD /* 1 */);
    BlendOpAlpha[2] = uint(ADD /* 1 */);
    BlendOpAlpha[3] = uint(ADD /* 1 */);
    BlendOpAlpha[4] = uint(ADD /* 1 */);
    BlendOpAlpha[5] = uint(ADD /* 1 */);
    BlendOpAlpha[6] = uint(ADD /* 1 */);
    BlendOpAlpha[7] = uint(ADD /* 1 */);
    RenderTargetWriteMask[0] = byte(0x0f);
};
RasterizerState DisableCullingNoMSAA
{
    CullMode = uint(NONE /* 1 */);
    MultisampleEnable = bool(FALSE /* 0 */);
};
RasterizerState EnableCulling
{
    CullMode = uint(BACK /* 3 */);
    MultisampleEnable = bool(TRUE /* 1 */);
};
DepthStencilState DisableDepthTestWrite
{
    DepthEnable = bool(FALSE /* 0 */);
    DepthWriteMask = uint(ZERO /* 0 */);
};
DepthStencilState DisableDepthWrite
{
    DepthEnable = bool(TRUE /* 1 */);
    DepthWriteMask = uint(ZERO /* 0 */);
};
DepthStencilState EnableDepthTestWrite
{
    DepthEnable = bool(TRUE /* 1 */);
    DepthWriteMask = uint(ALL /* 1 */);
};
BlendState NoBlending
{
    AlphaToCoverageEnable = bool(FALSE /* 0 */);
    BlendEnable[0] = bool(FALSE /* 0 */);
};

//
// 4 technique(s)
//
technique10 RenderTextured
{
    pass p0
    {
        VertexShader = asm {
            //
            // Generated by Microsoft (R) HLSL Shader Compiler 10.1
            //
            //
            // Buffer Definitions: 
            //
            // cbuffer cb0
            // {
            //
            //   float4x4 g_mWorldViewProj;         // Offset:    0 Size:    64
            //
            // }
            //
            //
            // Resource Bindings:
            //
            // Name                                 Type  Format         Dim      HLSL Bind  Count
            // ------------------------------ ---------- ------- ----------- -------------- ------
            // cb0                               cbuffer      NA          NA            cb0      1 
            //
            //
            //
            // Input signature:
            //
            // Name                 Index   Mask Register SysValue  Format   Used
            // -------------------- ----- ------ -------- -------- ------- ------
            // POSITION                 0   xyz         0     NONE   float   xyz 
            // NORMAL                   0   xyz         1     NONE   float       
            // TEXTURE                  0   xy          2     NONE   float   xy  
            //
            //
            // Output signature:
            //
            // Name                 Index   Mask Register SysValue  Format   Used
            // -------------------- ----- ------ -------- -------- ------- ------
            // SV_Position              0   xyzw        0      POS   float   xyzw
            // TEXTURE                  0   xy          1     NONE   float   xy  
            //
            vs_4_0
            dcl_constantbuffer CB0[4], immediateIndexed
            dcl_input v0.xyz
            dcl_input v2.xy
            dcl_output_siv o0.xyzw, position
            dcl_output o1.xy
            dcl_temps 1
            mov r0.xyz, v0.xyzx
            mov r0.w, l(1.000000)
            dp4 o0.x, r0.xyzw, cb0[0].xyzw
            dp4 o0.y, r0.xyzw, cb0[1].xyzw
            dp4 o0.z, r0.xyzw, cb0[2].xyzw
            dp4 o0.w, r0.xyzw, cb0[3].xyzw
            mov o1.xy, v2.xyxx
            ret 
            // Approximately 8 instruction slots used
                    
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
            // g_samLinear                       sampler      NA          NA             s0      1 
            // g_txDiffuse                       texture  float4          2d             t0      1 
            //
            //
            //
            // Input signature:
            //
            // Name                 Index   Mask Register SysValue  Format   Used
            // -------------------- ----- ------ -------- -------- ------- ------
            // SV_Position              0   xyzw        0      POS   float       
            // TEXTURE                  0   xy          1     NONE   float   xy  
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
            dcl_input_ps linear v1.xy
            dcl_output o0.xyzw
            sample o0.xyzw, v1.xyxx, t0.xyzw, s0
            ret 
            // Approximately 2 instruction slots used
                    
        };
        AB_BlendFactor = float4(0, 0, 0, 0);
        AB_SampleMask = uint(0xffffffff);
        BlendState = NoBlending;
        DS_StencilRef = uint(0);
        DepthStencilState = EnableDepthTestWrite;
        RasterizerState = EnableCulling;
    }

}

technique10 RenderDepth
{
    pass p0
    {
        VertexShader = asm {
            //
            // Generated by Microsoft (R) HLSL Shader Compiler 10.1
            //
            //
            // Buffer Definitions: 
            //
            // cbuffer cb0
            // {
            //
            //   float4x4 g_mWorldViewProj;         // Offset:    0 Size:    64
            //
            // }
            //
            //
            // Resource Bindings:
            //
            // Name                                 Type  Format         Dim      HLSL Bind  Count
            // ------------------------------ ---------- ------- ----------- -------------- ------
            // cb0                               cbuffer      NA          NA            cb0      1 
            //
            //
            //
            // Input signature:
            //
            // Name                 Index   Mask Register SysValue  Format   Used
            // -------------------- ----- ------ -------- -------- ------- ------
            // POSITION                 0   xyz         0     NONE   float   xyz 
            // NORMAL                   0   xyz         1     NONE   float       
            // TEXTURE                  0   xy          2     NONE   float       
            //
            //
            // Output signature:
            //
            // Name                 Index   Mask Register SysValue  Format   Used
            // -------------------- ----- ------ -------- -------- ------- ------
            // SV_Position              0   xyzw        0      POS   float   xyzw
            // TEXTURE                  0   xy          1     NONE   float   xy  
            //
            vs_4_0
            dcl_constantbuffer CB0[4], immediateIndexed
            dcl_input v0.xyz
            dcl_output_siv o0.xyzw, position
            dcl_output o1.xy
            dcl_temps 2
            mov r0.xyz, v0.xyzx
            mov r0.w, l(1.000000)
            dp4 r1.z, r0.xyzw, cb0[2].xyzw
            dp4 r1.w, r0.xyzw, cb0[3].xyzw
            mov o0.zw, r1.zzzw
            mov o1.xy, r1.zwzz
            dp4 o0.x, r0.xyzw, cb0[0].xyzw
            dp4 o0.y, r0.xyzw, cb0[1].xyzw
            ret 
            // Approximately 9 instruction slots used
                    
        };
        GeometryShader = NULL;
        PixelShader = asm {
            //
            // Generated by Microsoft (R) HLSL Shader Compiler 10.1
            //
            //
            //
            // Input signature:
            //
            // Name                 Index   Mask Register SysValue  Format   Used
            // -------------------- ----- ------ -------- -------- ------- ------
            // SV_Position              0   xyzw        0      POS   float       
            // TEXTURE                  0   xy          1     NONE   float   xy  
            //
            //
            // Output signature:
            //
            // Name                 Index   Mask Register SysValue  Format   Used
            // -------------------- ----- ------ -------- -------- ------- ------
            // SV_Target                0   xyzw        0   TARGET   float   xyzw
            //
            ps_4_0
            dcl_input_ps linear v1.xy
            dcl_output o0.xyzw
            div o0.xyzw, v1.xxxx, v1.yyyy
            ret 
            // Approximately 2 instruction slots used
                    
        };
        AB_BlendFactor = float4(0, 0, 0, 0);
        AB_SampleMask = uint(0xffffffff);
        BlendState = NoBlending;
        DS_StencilRef = uint(0);
        DepthStencilState = EnableDepthTestWrite;
        RasterizerState = EnableCulling;
    }

}

technique10 RenderQuad
{
    pass p0
    {
        VertexShader = asm {
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
            // NORMAL                   0   xyz         1     NONE   float       
            // TEXTURE                  0   xy          2     NONE   float   xy  
            //
            //
            // Output signature:
            //
            // Name                 Index   Mask Register SysValue  Format   Used
            // -------------------- ----- ------ -------- -------- ------- ------
            // SV_Position              0   xyzw        0      POS   float   xyzw
            // TEXTURE                  0   xy          1     NONE   float   xy  
            //
            vs_4_0
            dcl_input v0.xyz
            dcl_input v2.xy
            dcl_output_siv o0.xyzw, position
            dcl_output o1.xy
            mov o0.xyz, v0.xyzx
            mov o0.w, l(1.000000)
            mov o1.xy, v2.xyxx
            ret 
            // Approximately 4 instruction slots used
                    
        };
        GeometryShader = NULL;
        PixelShader = asm {
            //
            // Generated by Microsoft (R) HLSL Shader Compiler 10.1
            //
            //
            // Buffer Definitions: 
            //
            // cbuffer cb1
            // {
            //
            //   float4 g_vDepth;                   // Offset:    0 Size:    16
            //   float4x4 g_mInvProj;               // Offset:   16 Size:    64
            //
            // }
            //
            //
            // Resource Bindings:
            //
            // Name                                 Type  Format         Dim      HLSL Bind  Count
            // ------------------------------ ---------- ------- ----------- -------------- ------
            // g_samLinear                       sampler      NA          NA             s0      1 
            // g_txDiffuse                       texture  float4          2d             t0      1 
            // g_txDepth                         texture  float4          2d             t1      1 
            // cb1                               cbuffer      NA          NA            cb0      1 
            //
            //
            //
            // Input signature:
            //
            // Name                 Index   Mask Register SysValue  Format   Used
            // -------------------- ----- ------ -------- -------- ------- ------
            // SV_Position              0   xyzw        0      POS   float       
            // TEXTURE                  0   xy          1     NONE   float   xy  
            //
            //
            // Output signature:
            //
            // Name                 Index   Mask Register SysValue  Format   Used
            // -------------------- ----- ------ -------- -------- ------- ------
            // SV_Target                0   xyzw        0   TARGET   float   xyzw
            //
            ps_4_0
            dcl_constantbuffer CB0[5], immediateIndexed
            dcl_sampler s0, mode_default
            dcl_resource_texture2d (float,float,float,float) t0
            dcl_resource_texture2d (float,float,float,float) t1
            dcl_input_ps linear v1.xy
            dcl_output o0.xyzw
            dcl_temps 2
            mul r0.xy, v1.xyxx, cb0[0].yzyy
            ftoi r0.xy, r0.xyxx
            mov r0.zw, l(0,0,0,0)
            ld r0.xyzw, r0.xyzw, t1.xyzw
            mov r0.z, r0.x
            mov r0.xy, v1.xyxx
            mov r0.w, l(1.000000)
            dp4 r1.x, r0.xyzw, cb0[3].xyzw
            dp4 r0.x, r0.xyzw, cb0[4].xyzw
            div r0.x, r1.x, r0.x
            add r0.x, r0.x, -cb0[0].w
            mul r0.x, |r0.x|, l(0.500000)
            sample_l o0.xyzw, v1.xyxx, t0.xyzw, s0, r0.x
            ret 
            // Approximately 14 instruction slots used
                    
        };
        AB_BlendFactor = float4(0, 0, 0, 0);
        AB_SampleMask = uint(0xffffffff);
        BlendState = NoBlending;
        DS_StencilRef = uint(0);
        DepthStencilState = DisableDepthTestWrite;
        RasterizerState = DisableCullingNoMSAA;
    }

}

technique10 RenderQuadMSAA
{
    pass p0
    {
        VertexShader = asm {
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
            // NORMAL                   0   xyz         1     NONE   float       
            // TEXTURE                  0   xy          2     NONE   float   xy  
            //
            //
            // Output signature:
            //
            // Name                 Index   Mask Register SysValue  Format   Used
            // -------------------- ----- ------ -------- -------- ------- ------
            // SV_Position              0   xyzw        0      POS   float   xyzw
            // TEXTURE                  0   xy          1     NONE   float   xy  
            //
            vs_4_1
            dcl_globalFlags refactoringAllowed
            dcl_input v0.xyz
            dcl_input v2.xy
            dcl_output_siv o0.xyzw, position
            dcl_output o1.xy
            mov o0.xyz, v0.xyzx
            mov o0.w, l(1.000000)
            mov o1.xy, v2.xyxx
            ret 
            // Approximately 4 instruction slots used
                    
        };
        GeometryShader = NULL;
        PixelShader = asm {
            //
            // Generated by Microsoft (R) HLSL Shader Compiler 10.1
            //
            //
            // Buffer Definitions: 
            //
            // cbuffer cb1
            // {
            //
            //   float4 g_vDepth;                   // Offset:    0 Size:    16
            //   float4x4 g_mInvProj;               // Offset:   16 Size:    64
            //
            // }
            //
            //
            // Resource Bindings:
            //
            // Name                                 Type  Format         Dim      HLSL Bind  Count
            // ------------------------------ ---------- ------- ----------- -------------- ------
            // g_samLinear                       sampler      NA          NA             s0      1 
            // g_txDiffuse                       texture  float4          2d             t0      1 
            // g_txDepthMSAA                     texture   float        2dMS             t1      1 
            // cb1                               cbuffer      NA          NA            cb0      1 
            //
            //
            //
            // Input signature:
            //
            // Name                 Index   Mask Register SysValue  Format   Used
            // -------------------- ----- ------ -------- -------- ------- ------
            // SV_Position              0   xyzw        0      POS   float       
            // TEXTURE                  0   xy          1     NONE   float   xy  
            //
            //
            // Output signature:
            //
            // Name                 Index   Mask Register SysValue  Format   Used
            // -------------------- ----- ------ -------- -------- ------- ------
            // SV_Target                0   xyzw        0   TARGET   float   xyzw
            //
            ps_4_1
            dcl_globalFlags refactoringAllowed
            dcl_constantbuffer CB0[5], immediateIndexed
            dcl_sampler s0, mode_default
            dcl_resource_texture2d (float,float,float,float) t0
            dcl_resource_texture2dms(0) (float,float,float,float) t1
            dcl_input_ps linear v1.xy
            dcl_output o0.xyzw
            dcl_temps 2
            mul r0.xy, v1.xyxx, cb0[0].yzyy
            ftoi r0.xy, r0.xyxx
            mov r0.zw, l(0,0,0,0)
            ldms r0.z, r0.xyzw, t1.yzxw, l(0)
            mov r0.xy, v1.xyxx
            mov r0.w, l(1.000000)
            dp4 r1.x, r0.xyzw, cb0[3].xyzw
            dp4 r0.x, r0.xyzw, cb0[4].xyzw
            div r0.x, r1.x, r0.x
            add r0.x, r0.x, -cb0[0].w
            mul r0.x, |r0.x|, l(0.500000)
            sample_l o0.xyzw, v1.xyxx, t0.xyzw, s0, r0.x
            ret 
            // Approximately 13 instruction slots used
                    
        };
        AB_BlendFactor = float4(0, 0, 0, 0);
        AB_SampleMask = uint(0xffffffff);
        BlendState = NoBlending;
        DS_StencilRef = uint(0);
        DepthStencilState = DisableDepthTestWrite;
        RasterizerState = DisableCullingNoMSAA;
    }

}

