﻿namespace SlimShader.Chunks.RTS0
{
	/// <summary>
	/// DescriptorRangeType
	/// Based on D3D12_DESCRIPTOR_RANGE_TYPE.
	/// </summary>
	public enum DescriptorRangeType
	{
		[Description("SRV")]
		Srv,
		[Description("UAV")]
		Uav,
		[Description("CBV")]
		Cbv,
		[Description("Sampler")]
		Sampler
	}
}