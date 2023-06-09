CREATE DATABASE  [DB_Funcionarios];
USE [DB_Funcionarios]
GO
/****** Object:  Table [dbo].[EstadoCivil]    Script Date: 13/05/2023 5:38:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoCivil](
	[Id_EstadoCivil] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_EstadoCivil] PRIMARY KEY CLUSTERED 
(
	[Id_EstadoCivil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Funcionario]    Script Date: 13/05/2023 5:38:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcionario](
	[Id_Funcionario] [int] IDENTITY(1,1) NOT NULL,
	[Id_TipoIdentificacion] [int] NULL,
	[NumeroIdentificacion] [nvarchar](12) NULL,
	[Nombres] [nvarchar](50) NULL,
	[Apellidos] [nvarchar](50) NULL,
	[Id_EstadoCivil] [int] NULL,
	[Id_Sexo] [int] NULL,
	[Direccion] [nvarchar](150) NULL,
	[Telefono] [nvarchar](50) NULL,
	[FechaNacimiento] [date] NULL,
 CONSTRAINT [PK_Funcionario] PRIMARY KEY CLUSTERED 
(
	[Id_Funcionario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoFamiliar]    Script Date: 13/05/2023 5:38:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoFamiliar](
	[Id_GrupoFamiliar] [int] IDENTITY(1,1) NOT NULL,
	[Id_Funcionario] [int] NULL,
	[Nombres] [nvarchar](50) NULL,
	[Apellidos] [nvarchar](50) NULL,
	[Id_Parentesco] [int] NULL,
 CONSTRAINT [PK_GrupoFamiliar] PRIMARY KEY CLUSTERED 
(
	[Id_GrupoFamiliar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InformacionAcademica]    Script Date: 13/05/2023 5:38:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InformacionAcademica](
	[Id_InformacionAcademica] [int] IDENTITY(1,1) NOT NULL,
	[Id_Funcionario] [int] NULL,
	[Universidad] [nvarchar](150) NULL,
	[Id_NivelEstudio] [int] NULL,
	[TituloEstudio] [nvarchar](150) NULL,
 CONSTRAINT [PK_InformacionAcademica] PRIMARY KEY CLUSTERED 
(
	[Id_InformacionAcademica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NivelEstudio]    Script Date: 13/05/2023 5:38:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NivelEstudio](
	[Id_NivelEstudio] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_NivelEstudio] PRIMARY KEY CLUSTERED 
(
	[Id_NivelEstudio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parentesco]    Script Date: 13/05/2023 5:38:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parentesco](
	[Id_Parentesco] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Parentesco] PRIMARY KEY CLUSTERED 
(
	[Id_Parentesco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sexo]    Script Date: 13/05/2023 5:38:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sexo](
	[Id_Sexo] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sexo] PRIMARY KEY CLUSTERED 
(
	[Id_Sexo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoIdentificacion]    Script Date: 13/05/2023 5:38:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoIdentificacion](
	[Id_TipoIdentificacion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_TipoIdentificacion] PRIMARY KEY CLUSTERED 
(
	[Id_TipoIdentificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EstadoCivil] ON 

INSERT [dbo].[EstadoCivil] ([Id_EstadoCivil], [Descripcion]) VALUES (1, N'Soltero')
INSERT [dbo].[EstadoCivil] ([Id_EstadoCivil], [Descripcion]) VALUES (2, N'Casado')
INSERT [dbo].[EstadoCivil] ([Id_EstadoCivil], [Descripcion]) VALUES (3, N'Union Libre')
SET IDENTITY_INSERT [dbo].[EstadoCivil] OFF
GO
SET IDENTITY_INSERT [dbo].[Funcionario] ON 

INSERT [dbo].[Funcionario] ([Id_Funcionario], [Id_TipoIdentificacion], [NumeroIdentificacion], [Nombres], [Apellidos], [Id_EstadoCivil], [Id_Sexo], [Direccion], [Telefono], [FechaNacimiento]) VALUES (1, 2, N'1003456780', N'Juan alex', N'Perez diaz', 2, 2, N'Carrera 50 #123-00', N'123456', CAST(N'2023-05-13' AS Date))
SET IDENTITY_INSERT [dbo].[Funcionario] OFF
GO
SET IDENTITY_INSERT [dbo].[GrupoFamiliar] ON 

INSERT [dbo].[GrupoFamiliar] ([Id_GrupoFamiliar], [Id_Funcionario], [Nombres], [Apellidos], [Id_Parentesco]) VALUES (1, 1, N'Ana', N'Diaz', 1)
SET IDENTITY_INSERT [dbo].[GrupoFamiliar] OFF
GO
SET IDENTITY_INSERT [dbo].[InformacionAcademica] ON 

INSERT [dbo].[InformacionAcademica] ([Id_InformacionAcademica], [Id_Funcionario], [Universidad], [Id_NivelEstudio], [TituloEstudio]) VALUES (1, 1, N'Los Andes', 1, N'Ingeniero en Sistemas')
SET IDENTITY_INSERT [dbo].[InformacionAcademica] OFF
GO
SET IDENTITY_INSERT [dbo].[NivelEstudio] ON 

INSERT [dbo].[NivelEstudio] ([Id_NivelEstudio], [Descripcion]) VALUES (1, N'Primaria')
INSERT [dbo].[NivelEstudio] ([Id_NivelEstudio], [Descripcion]) VALUES (2, N'Secundaria')
INSERT [dbo].[NivelEstudio] ([Id_NivelEstudio], [Descripcion]) VALUES (3, N'Bachillerato')
INSERT [dbo].[NivelEstudio] ([Id_NivelEstudio], [Descripcion]) VALUES (4, N'Profesional')
SET IDENTITY_INSERT [dbo].[NivelEstudio] OFF
GO
SET IDENTITY_INSERT [dbo].[Parentesco] ON 

INSERT [dbo].[Parentesco] ([Id_Parentesco], [Descripcion]) VALUES (1, N'Madre/Padre')
INSERT [dbo].[Parentesco] ([Id_Parentesco], [Descripcion]) VALUES (2, N'Hijo/a')
INSERT [dbo].[Parentesco] ([Id_Parentesco], [Descripcion]) VALUES (3, N'Hermano/a')
SET IDENTITY_INSERT [dbo].[Parentesco] OFF
GO
SET IDENTITY_INSERT [dbo].[Sexo] ON 

INSERT [dbo].[Sexo] ([Id_Sexo], [Descripcion]) VALUES (1, N'Masculino')
INSERT [dbo].[Sexo] ([Id_Sexo], [Descripcion]) VALUES (2, N'Femenino')
SET IDENTITY_INSERT [dbo].[Sexo] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoIdentificacion] ON 

INSERT [dbo].[TipoIdentificacion] ([Id_TipoIdentificacion], [Descripcion]) VALUES (1, N'Cedula de ciudadania')
INSERT [dbo].[TipoIdentificacion] ([Id_TipoIdentificacion], [Descripcion]) VALUES (2, N'Tarjeta de Identidad')
SET IDENTITY_INSERT [dbo].[TipoIdentificacion] OFF
GO
ALTER TABLE [dbo].[Funcionario]  WITH CHECK ADD  CONSTRAINT [FK_Funcionario_EstadoCivil] FOREIGN KEY([Id_EstadoCivil])
REFERENCES [dbo].[EstadoCivil] ([Id_EstadoCivil])
GO
ALTER TABLE [dbo].[Funcionario] CHECK CONSTRAINT [FK_Funcionario_EstadoCivil]
GO
ALTER TABLE [dbo].[Funcionario]  WITH CHECK ADD  CONSTRAINT [FK_Funcionario_Sexo] FOREIGN KEY([Id_Sexo])
REFERENCES [dbo].[Sexo] ([Id_Sexo])
GO
ALTER TABLE [dbo].[Funcionario] CHECK CONSTRAINT [FK_Funcionario_Sexo]
GO
ALTER TABLE [dbo].[Funcionario]  WITH CHECK ADD  CONSTRAINT [FK_Funcionario_TipoIdentificacion] FOREIGN KEY([Id_TipoIdentificacion])
REFERENCES [dbo].[TipoIdentificacion] ([Id_TipoIdentificacion])
GO
ALTER TABLE [dbo].[Funcionario] CHECK CONSTRAINT [FK_Funcionario_TipoIdentificacion]
GO
ALTER TABLE [dbo].[GrupoFamiliar]  WITH CHECK ADD  CONSTRAINT [FK_GrupoFamiliar_Funcionario] FOREIGN KEY([Id_Funcionario])
REFERENCES [dbo].[Funcionario] ([Id_Funcionario])
GO
ALTER TABLE [dbo].[GrupoFamiliar] CHECK CONSTRAINT [FK_GrupoFamiliar_Funcionario]
GO
ALTER TABLE [dbo].[GrupoFamiliar]  WITH CHECK ADD  CONSTRAINT [FK_GrupoFamiliar_Parentesco] FOREIGN KEY([Id_Parentesco])
REFERENCES [dbo].[Parentesco] ([Id_Parentesco])
GO
ALTER TABLE [dbo].[GrupoFamiliar] CHECK CONSTRAINT [FK_GrupoFamiliar_Parentesco]
GO
ALTER TABLE [dbo].[InformacionAcademica]  WITH CHECK ADD  CONSTRAINT [FK_InformacionAcademica_Funcionario] FOREIGN KEY([Id_Funcionario])
REFERENCES [dbo].[Funcionario] ([Id_Funcionario])
GO
ALTER TABLE [dbo].[InformacionAcademica] CHECK CONSTRAINT [FK_InformacionAcademica_Funcionario]
GO
ALTER TABLE [dbo].[InformacionAcademica]  WITH CHECK ADD  CONSTRAINT [FK_InformacionAcademica_NivelEstudio] FOREIGN KEY([Id_NivelEstudio])
REFERENCES [dbo].[NivelEstudio] ([Id_NivelEstudio])
GO
ALTER TABLE [dbo].[InformacionAcademica] CHECK CONSTRAINT [FK_InformacionAcademica_NivelEstudio]
GO
/****** Object:  StoredProcedure [dbo].[EditarFuncionario]    Script Date: 13/05/2023 5:38:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------EDITAR

CREATE proc [dbo].[EditarFuncionario]
@idFuncionario int,
@TipoId int,
@NumId nvarchar (12),
@Nombres nvarchar (100),
@Apellidos nvarchar (100),
@EstadoCivil int,
@Sexo int,
@Direccion nvarchar (100),
@Telefono NVARCHAR(50),
@FechaNacimiento date
as
update Funcionario set Id_TipoIdentificacion = @TipoId,
NumeroIdentificacion = @NumId,Nombres = @Nombres,
Apellidos = @Apellidos,Id_EstadoCivil = @EstadoCivil, Id_Sexo = @Sexo, Direccion = @Direccion, 
Telefono = @Telefono, FechaNacimiento = @FechaNacimiento where Id_Funcionario=@idFuncionario
GO
/****** Object:  StoredProcedure [dbo].[EliminarFuncionario]    Script Date: 13/05/2023 5:38:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------ELIMINAR
create proc [dbo].[EliminarFuncionario]
@idFuncionario int
as
delete from Funcionario where Id_Funcionario=@idFuncionario
GO
/****** Object:  StoredProcedure [dbo].[InsetarFuncionario]    Script Date: 13/05/2023 5:38:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[InsetarFuncionario]
@TipoId int,
@NumId nvarchar (12),
@Nombres nvarchar (100),
@Apellidos nvarchar (100),
@EstadoCivil int,
@Sexo int,
@Direccion nvarchar (100),
@Telefono NVARCHAR(50),
@FechaNacimiento date
as
insert into Funcionario([Id_TipoIdentificacion], [NumeroIdentificacion], [Nombres], [Apellidos], [Id_EstadoCivil], [Id_Sexo], [Direccion], [Telefono], [FechaNacimiento]) 
values (@TipoId,@NumId,@Nombres,@Apellidos,@EstadoCivil, @Sexo, @Direccion, @Telefono, @FechaNacimiento)
GO
/****** Object:  StoredProcedure [dbo].[MostrarFuncionario]    Script Date: 13/05/2023 5:38:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---PROCEDIMIENTOS ALMACENADOS 
--------------------------MOSTRAR 
create proc [dbo].[MostrarFuncionario]
as
select * from Funcionario
GO
