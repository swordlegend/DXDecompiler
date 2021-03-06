﻿namespace SlimShader.DX9Shader
{
	public class SineOperation : UnaryOperation
	{
		public SineOperation(HlslTreeNode value)
		{
			AddInput(value);
		}

		public override string Mnemonic => "sin";
	}
}
