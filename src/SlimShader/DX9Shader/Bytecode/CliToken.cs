﻿using System;
using System.Collections.Generic;
using System.Text;
using SlimShader.Util;

namespace SlimShader.DX9Shader.Bytecode
{
	public class CliToken
	{
		List<double> Numbers = new List<double>();
		public static CliToken Parse(BytecodeReader reader)
		{
			var result = new CliToken();
			var count = reader.ReadUInt32();
			for (int i = 0; i < count; i++)
			{
				result.Numbers.Add(reader.ReadDouble());
			}
			return result;
		}

		public string GetLiteral(uint index)
		{
			return Numbers[(int)index].ToString();
		}
	}
}
