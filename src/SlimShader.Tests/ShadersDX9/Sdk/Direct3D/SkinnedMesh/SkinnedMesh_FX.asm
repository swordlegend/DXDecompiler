vertexshader vsArray[4] = 
{
//listing for: vsArray[0]
asm {
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
// Parameters:
//
//   float4 MaterialAmbient;
//   float4 MaterialDiffuse;
//   float4 lhtDir;
//   float4x4 mViewProj;
//   float4x3 mWorldMatrixArray[26];
//
//
// Registers:
//
//   Name              Reg   Size
//   ----------------- ----- ----
//   mWorldMatrixArray c0      78
//   mViewProj         c78      4
//   lhtDir            c82      1
//   MaterialAmbient   c83      1
//   MaterialDiffuse   c84      1
//

    vs_2_0
    def c85, 765.005859, 1, 0, 0
    dcl_position v0
    dcl_blendindices v1
    dcl_normal v2
    dcl_texcoord v3
    mov r0.w, c85.y
    mul r1.x, v1.z, c85.x
    mova a0.x, r1.x
    dp4 r0.x, v0, c0[a0.x]
    dp4 r0.y, v0, c1[a0.x]
    dp4 r0.z, v0, c2[a0.x]
    dp4 oPos.x, r0, c78
    dp4 oPos.y, r0, c79
    dp4 oPos.z, r0, c80
    dp4 oPos.w, r0, c81
    dp3 r0.x, v2, c0[a0.x]
    dp3 r0.y, v2, c1[a0.x]
    dp3 r0.z, v2, c2[a0.x]
    nrm r1.xyz, r0
    dp3 r0.x, r1, c82
    max r0.x, r0.x, c85.z
    mov r1.xyz, c84
    mad oD0.xyz, r0.x, r1, c83
    mov oD0.w, c85.y
    mov oT0.xy, v3

// approximately 22 instruction slots used
},

//listing for: vsArray[1]
asm {
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
// Parameters:
//
//   float4 MaterialAmbient;
//   float4 MaterialDiffuse;
//   float4 lhtDir;
//   float4x4 mViewProj;
//   float4x3 mWorldMatrixArray[26];
//
//
// Registers:
//
//   Name              Reg   Size
//   ----------------- ----- ----
//   mWorldMatrixArray c0      78
//   mViewProj         c78      4
//   lhtDir            c82      1
//   MaterialAmbient   c83      1
//   MaterialDiffuse   c84      1
//

    vs_2_0
    def c85, 765.005859, 1, 0, 0
    dcl_position v0
    dcl_blendweight v1
    dcl_blendindices v2
    dcl_normal v3
    dcl_texcoord v4
    mul r0.xy, v2.zyzw, c85.x
    mova a0.xy, r0
    dp4 r0.x, v0, c0[a0.x]
    dp4 r0.y, v0, c1[a0.x]
    dp4 r0.z, v0, c2[a0.x]
    dp4 r1.x, v0, c0[a0.y]
    dp4 r1.y, v0, c1[a0.y]
    dp4 r1.z, v0, c2[a0.y]
    lrp r2.xyz, v1.x, r0, r1
    mov r2.w, c85.y
    dp4 oPos.x, r2, c78
    dp4 oPos.y, r2, c79
    dp4 oPos.z, r2, c80
    dp4 oPos.w, r2, c81
    dp3 r0.x, v3, c0[a0.x]
    dp3 r0.y, v3, c1[a0.x]
    dp3 r0.z, v3, c2[a0.x]
    dp3 r1.x, v3, c0[a0.y]
    dp3 r1.y, v3, c1[a0.y]
    dp3 r1.z, v3, c2[a0.y]
    lrp r2.xyz, v1.x, r0, r1
    nrm r0.xyz, r2
    dp3 r0.x, r0, c82
    max r0.x, r0.x, c85.z
    mov r1.xyz, c84
    mad oD0.xyz, r0.x, r1, c83
    mov oD0.w, c85.y
    mov oT0.xy, v4

// approximately 30 instruction slots used
},

//listing for: vsArray[2]
asm {
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
// Parameters:
//
//   float4 MaterialAmbient;
//   float4 MaterialDiffuse;
//   float4 lhtDir;
//   float4x4 mViewProj;
//   float4x3 mWorldMatrixArray[26];
//
//
// Registers:
//
//   Name              Reg   Size
//   ----------------- ----- ----
//   mWorldMatrixArray c0      78
//   mViewProj         c78      4
//   lhtDir            c82      1
//   MaterialAmbient   c83      1
//   MaterialDiffuse   c84      1
//

    vs_2_0
    def c85, 765.005859, 1, 0, 0
    dcl_position v0
    dcl_blendweight v1
    dcl_blendindices v2
    dcl_normal v3
    dcl_texcoord v4
    mul r0.xyz, v2.zyxw, c85.x
    mova a0.xyz, r0.yxzw
    dp4 r1.x, v0, c0[a0.x]
    dp4 r1.y, v0, c1[a0.x]
    dp4 r1.z, v0, c2[a0.x]
    mul r1.xyz, r1, v1.y
    dp4 r0.x, v0, c0[a0.y]
    dp4 r0.y, v0, c1[a0.y]
    dp4 r0.z, v0, c2[a0.y]
    mad r0.xyz, r0, v1.x, r1
    add r0.w, v1.y, v1.x
    add r0.w, -r0.w, c85.y
    dp4 r1.x, v0, c0[a0.z]
    dp4 r1.y, v0, c1[a0.z]
    dp4 r1.z, v0, c2[a0.z]
    mad r1.xyz, r1, r0.w, r0
    mov r1.w, c85.y
    dp4 oPos.x, r1, c78
    dp4 oPos.y, r1, c79
    dp4 oPos.z, r1, c80
    dp4 oPos.w, r1, c81
    dp3 r0.x, v3, c0[a0.x]
    dp3 r0.y, v3, c1[a0.x]
    dp3 r0.z, v3, c2[a0.x]
    mul r0.xyz, r0, v1.y
    dp3 r1.x, v3, c0[a0.y]
    dp3 r1.y, v3, c1[a0.y]
    dp3 r1.z, v3, c2[a0.y]
    mad r0.xyz, r1, v1.x, r0
    dp3 r1.x, v3, c0[a0.z]
    dp3 r1.y, v3, c1[a0.z]
    dp3 r1.z, v3, c2[a0.z]
    mad r0.xyz, r1, r0.w, r0
    nrm r1.xyz, r0
    dp3 r0.x, r1, c82
    max r0.x, r0.x, c85.z
    mov r1.xyz, c84
    mad oD0.xyz, r0.x, r1, c83
    mov oD0.w, c85.y
    mov oT0.xy, v4

// approximately 42 instruction slots used
},

//listing for: vsArray[3]
asm {
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
// Parameters:
//
//   float4 MaterialAmbient;
//   float4 MaterialDiffuse;
//   float4 lhtDir;
//   float4x4 mViewProj;
//   float4x3 mWorldMatrixArray[26];
//
//
// Registers:
//
//   Name              Reg   Size
//   ----------------- ----- ----
//   mWorldMatrixArray c0      78
//   mViewProj         c78      4
//   lhtDir            c82      1
//   MaterialAmbient   c83      1
//   MaterialDiffuse   c84      1
//

    vs_2_0
    def c85, 765.005859, 1, 0, 0
    dcl_position v0
    dcl_blendweight v1
    dcl_blendindices v2
    dcl_normal v3
    dcl_texcoord v4
    add r0.x, v1.y, v1.x
    add r0.x, r0.x, v1.z
    add r0.x, -r0.x, c85.y
    mul r1, v2.zyxw, c85.x
    mova a0, r1.yxzw
    dp4 r2.x, v0, c0[a0.x]
    dp4 r2.y, v0, c1[a0.x]
    dp4 r2.z, v0, c2[a0.x]
    mul r0.yzw, r2.xxyz, v1.y
    dp4 r2.x, v0, c0[a0.y]
    dp4 r2.y, v0, c1[a0.y]
    dp4 r2.z, v0, c2[a0.y]
    mad r0.yzw, r2.xxyz, v1.x, r0
    dp4 r1.x, v0, c0[a0.z]
    dp4 r1.y, v0, c1[a0.z]
    dp4 r1.z, v0, c2[a0.z]
    mad r0.yzw, r1.xxyz, v1.z, r0
    dp4 r1.x, v0, c0[a0.w]
    dp4 r1.y, v0, c1[a0.w]
    dp4 r1.z, v0, c2[a0.w]
    mad r1.xyz, r1, r0.x, r0.yzww
    mov r1.w, c85.y
    dp4 oPos.x, r1, c78
    dp4 oPos.y, r1, c79
    dp4 oPos.z, r1, c80
    dp4 oPos.w, r1, c81
    dp3 r1.x, v3, c0[a0.x]
    dp3 r1.y, v3, c1[a0.x]
    dp3 r1.z, v3, c2[a0.x]
    mul r0.yzw, r1.xxyz, v1.y
    dp3 r1.x, v3, c0[a0.y]
    dp3 r1.y, v3, c1[a0.y]
    dp3 r1.z, v3, c2[a0.y]
    mad r0.yzw, r1.xxyz, v1.x, r0
    dp3 r1.x, v3, c0[a0.z]
    dp3 r1.y, v3, c1[a0.z]
    dp3 r1.z, v3, c2[a0.z]
    mad r0.yzw, r1.xxyz, v1.z, r0
    dp3 r1.x, v3, c0[a0.w]
    dp3 r1.y, v3, c1[a0.w]
    dp3 r1.z, v3, c2[a0.w]
    mad r0.xyz, r1, r0.x, r0.yzww
    nrm r1.xyz, r0
    dp3 r0.x, r1, c82
    max r0.x, r0.x, c85.z
    mov r1.xyz, c84
    mad oD0.xyz, r0.x, r1, c83
    mov oD0.w, c85.y
    mov oT0.xy, v4

// approximately 51 instruction slots used
}};

//listing of all techniques and passes with embedded asm listings 

technique t0
{
    pass p0
    {
        vertexshader = 
            asm {
            //
            // Generated by Microsoft (R) HLSL Shader Compiler 10.1
            //
            // Parameters:
            //
            //   float4 MaterialAmbient;
            //   float4 MaterialDiffuse;
            //   float4 lhtDir;
            //   float4x4 mViewProj;
            //   float4x3 mWorldMatrixArray[26];
            //
            //
            // Registers:
            //
            //   Name              Reg   Size
            //   ----------------- ----- ----
            //   mWorldMatrixArray c0      78
            //   mViewProj         c78      4
            //   lhtDir            c82      1
            //   MaterialAmbient   c83      1
            //   MaterialDiffuse   c84      1
            //
            
                vs_2_0
                def c85, 765.005859, 1, 0, 0
                dcl_position v0
                dcl_blendweight v1
                dcl_blendindices v2
                dcl_normal v3
                dcl_texcoord v4
                mul r0.xyz, v2.zyxw, c85.x
                mova a0.xyz, r0.yxzw
                dp4 r1.x, v0, c0[a0.x]
                dp4 r1.y, v0, c1[a0.x]
                dp4 r1.z, v0, c2[a0.x]
                mul r1.xyz, r1, v1.y
                dp4 r0.x, v0, c0[a0.y]
                dp4 r0.y, v0, c1[a0.y]
                dp4 r0.z, v0, c2[a0.y]
                mad r0.xyz, r0, v1.x, r1
                add r0.w, v1.y, v1.x
                add r0.w, -r0.w, c85.y
                dp4 r1.x, v0, c0[a0.z]
                dp4 r1.y, v0, c1[a0.z]
                dp4 r1.z, v0, c2[a0.z]
                mad r1.xyz, r1, r0.w, r0
                mov r1.w, c85.y
                dp4 oPos.x, r1, c78
                dp4 oPos.y, r1, c79
                dp4 oPos.z, r1, c80
                dp4 oPos.w, r1, c81
                dp3 r0.x, v3, c0[a0.x]
                dp3 r0.y, v3, c1[a0.x]
                dp3 r0.z, v3, c2[a0.x]
                mul r0.xyz, r0, v1.y
                dp3 r1.x, v3, c0[a0.y]
                dp3 r1.y, v3, c1[a0.y]
                dp3 r1.z, v3, c2[a0.y]
                mad r0.xyz, r1, v1.x, r0
                dp3 r1.x, v3, c0[a0.z]
                dp3 r1.y, v3, c1[a0.z]
                dp3 r1.z, v3, c2[a0.z]
                mad r0.xyz, r1, r0.w, r0
                nrm r1.xyz, r0
                dp3 r0.x, r1, c82
                max r0.x, r0.x, c85.z
                mov r1.xyz, c84
                mad oD0.xyz, r0.x, r1, c83
                mov oD0.w, c85.y
                mov oT0.xy, v4
            
            // approximately 42 instruction slots used
            };

        //No embedded pixel shader
    }
}

