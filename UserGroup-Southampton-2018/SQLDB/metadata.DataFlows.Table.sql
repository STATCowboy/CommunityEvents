USE [sdbamsdapdev001]
GO
/****** Object:  Table [metadata].[DataFlows]    Script Date: 06/06/2018 14:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [metadata].[DataFlows](
	[DataFlowId] [int] IDENTITY(1,1) NOT NULL,
	[DataFlowName] [varchar](255) NOT NULL,
	[ScriptId] [int] NULL,
	[InUse] [bit] NOT NULL,
 CONSTRAINT [PK_DataFlows] PRIMARY KEY CLUSTERED 
(
	[DataFlowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [metadata].[DataFlows]  WITH CHECK ADD  CONSTRAINT [FK_DataFlows_ScriptParts] FOREIGN KEY([ScriptId])
REFERENCES [metadata].[ScriptParts] ([ScriptId])
GO
ALTER TABLE [metadata].[DataFlows] CHECK CONSTRAINT [FK_DataFlows_ScriptParts]
GO
