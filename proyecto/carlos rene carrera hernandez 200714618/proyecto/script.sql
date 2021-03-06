USE [Quetzalexpress]
GO
/****** Object:  Schema [Quetzalexpress]    Script Date: 06/23/2015 06:55:03 ******/
CREATE SCHEMA [Quetzalexpress] AUTHORIZATION [db_accessadmin]
GO
/****** Object:  Default [dbo].[estatusactivado]    Script Date: 06/23/2015 06:55:03 ******/
create default [dbo].[estatusactivado]
as 'activado';
GO
/****** Object:  Table [dbo].[Sede]    Script Date: 06/23/2015 06:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sede](
	[cod_sede] [int] IDENTITY(1,1) NOT NULL,
	[pais] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_sede] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 06/23/2015 06:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sucursal](
	[cod_sucursal] [int] IDENTITY(10000,1) NOT NULL,
	[nombre] [varchar](20) NULL,
	[direccion] [varchar](100) NULL,
	[telefono] [varchar](15) NULL,
	[capacidadmaxemp] [int] NULL,
	[cod_sede] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_sucursal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [restriccionnombresucursal] UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lote]    Script Date: 06/23/2015 06:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lote](
	[cod_lote] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [datetime] NULL,
	[cod_sucursal] [int] NULL,
	[estatus_lote] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_lote] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Impuesto]    Script Date: 06/23/2015 06:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Impuesto](
	[categoria] [varchar](30) NOT NULL,
	[porcentaje] [decimal](3, 2) NOT NULL,
	[comision] [decimal](3, 2) NULL,
	[estatus] [varchar](10) NOT NULL,
	[precio_libra] [int] NOT NULL,
 CONSTRAINT [PK__Impuesto__04645A636D0D32F4] PRIMARY KEY CLUSTERED 
(
	[categoria] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [restriccioncategoriaimpuesto] UNIQUE NONCLUSTERED 
(
	[categoria] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Casilla]    Script Date: 06/23/2015 06:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casilla](
	[cod_cliente] [int] NULL,
	[cod_casilla] [int] IDENTITY(1000,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_casilla] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paquete]    Script Date: 06/23/2015 06:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Paquete](
	[cod_paquete] [int] IDENTITY(200000,1) NOT NULL,
	[estatus] [char](1) NULL,
	[cod_lote] [int] NULL,
	[categoria] [varchar](30) NULL,
	[peso] [int] NOT NULL,
	[precio] [money] NOT NULL,
	[cod_casilla] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_paquete] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[paquetes]    Script Date: 06/23/2015 06:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[paquetes]
AS
SELECT     categoria, cod_casilla, peso, precio
FROM         dbo.Paquete
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Paquete"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'paquetes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'paquetes'
GO
/****** Object:  View [dbo].[Infopaquetes]    Script Date: 06/23/2015 06:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Infopaquetes]
AS
SELECT     cod_casilla, cod_paquete, categoria, estatus
FROM         dbo.Paquete
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Paquete"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 3
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Infopaquetes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Infopaquetes'
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 06/23/2015 06:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[cod_cliente] [int] IDENTITY(1,1) NOT NULL,
	[dpi] [varchar](20) NULL,
	[nombres] [varchar](40) NULL,
	[apellidos] [varchar](40) NULL,
	[nit] [varchar](20) NULL,
	[telefono] [varchar](30) NULL,
	[direccion] [varchar](100) NULL,
	[numerotarjeta] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_cliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[Perfilcliente]    Script Date: 06/23/2015 06:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Perfilcliente]
AS
SELECT     cod_cliente, nombres, apellidos, telefono, numerotarjeta
FROM         dbo.Cliente
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Cliente"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 4
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Perfilcliente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Perfilcliente'
GO
/****** Object:  Table [dbo].[Registro]    Script Date: 06/23/2015 06:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registro](
	[cod_registro] [int] IDENTITY(1,1) NOT NULL,
	[cod_casilla] [int] NULL,
	[cod_paquete] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_registro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bodega]    Script Date: 06/23/2015 06:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bodega](
	[cod_bodega] [int] IDENTITY(1,1) NOT NULL,
	[categoria] [varchar](30) NULL,
	[casilla] [int] NULL,
	[peso] [int] NULL,
	[precio] [money] NULL,
	[cod_lote] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_bodega] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Director]    Script Date: 06/23/2015 06:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Director](
	[cod_director] [int] IDENTITY(1,1) NOT NULL,
	[nombres] [varchar](40) NULL,
	[apellidos] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_director] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 06/23/2015 06:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[usuario] [varchar](50) NOT NULL,
	[contrasena] [varchar](50) NULL,
	[tipo] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[usuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 06/23/2015 06:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[cod_factura] [int] IDENTITY(50000,1) NOT NULL,
	[fecha] [datetime] NULL,
	[cod_cliente] [int] NULL,
	[cod_sucursal] [int] NULL,
	[total] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_factura] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 06/23/2015 06:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departamento](
	[cod_depto] [int] IDENTITY(20000,1) NOT NULL,
	[nombre] [varchar](20) NULL,
	[cod_sucursal] [int] NULL,
	[cod_director] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_depto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[Registropaquete]    Script Date: 06/23/2015 06:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Registropaquete]
AS
SELECT     dbo.Impuesto.categoria, dbo.Casilla.cod_casilla, dbo.Paquete.peso, dbo.Paquete.precio
FROM         dbo.Impuesto INNER JOIN
                      dbo.Paquete ON dbo.Impuesto.categoria = dbo.Paquete.categoria CROSS JOIN
                      dbo.Casilla
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Casilla"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 96
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Paquete"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 126
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "Impuesto"
            Begin Extent = 
               Top = 6
               Left = 434
               Bottom = 126
               Right = 594
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Registropaquete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Registropaquete'
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 06/23/2015 06:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[cod_empleado] [int] IDENTITY(30000,1) NOT NULL,
	[nombres] [varchar](40) NULL,
	[apellidos] [varchar](40) NULL,
	[dpi] [varchar](18) NULL,
	[telefono] [varchar](15) NULL,
	[sueldo] [money] NULL,
	[domicilio] [varchar](100) NULL,
	[cod_depto] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_empleado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [restricciondpiempleado] UNIQUE NONCLUSTERED 
(
	[dpi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF__Lote__estatus_lo__5224328E]    Script Date: 06/23/2015 06:55:05 ******/
ALTER TABLE [dbo].[Lote] ADD  DEFAULT ('activado') FOR [estatus_lote]
GO
/****** Object:  Default [DF__Impuesto__estatu__18EBB532]    Script Date: 06/23/2015 06:55:05 ******/
ALTER TABLE [dbo].[Impuesto] ADD  DEFAULT ('activado') FOR [estatus]
GO
/****** Object:  Default [DF__Impuesto__precio__540C7B00]    Script Date: 06/23/2015 06:55:05 ******/
ALTER TABLE [dbo].[Impuesto] ADD  DEFAULT ((5)) FOR [precio_libra]
GO
/****** Object:  Default [DF_Paquete_estatus]    Script Date: 06/23/2015 06:55:05 ******/
ALTER TABLE [dbo].[Paquete] ADD  CONSTRAINT [DF_Paquete_estatus]  DEFAULT ('A') FOR [estatus]
GO
/****** Object:  Default [DF_Paquete_cod_lote]    Script Date: 06/23/2015 06:55:05 ******/
ALTER TABLE [dbo].[Paquete] ADD  CONSTRAINT [DF_Paquete_cod_lote]  DEFAULT ((1)) FOR [cod_lote]
GO
/****** Object:  Default [DF_Paquete_peso]    Script Date: 06/23/2015 06:55:05 ******/
ALTER TABLE [dbo].[Paquete] ADD  CONSTRAINT [DF_Paquete_peso]  DEFAULT ((1)) FOR [peso]
GO
/****** Object:  Default [DF_Paquete_precio]    Script Date: 06/23/2015 06:55:05 ******/
ALTER TABLE [dbo].[Paquete] ADD  CONSTRAINT [DF_Paquete_precio]  DEFAULT ((1)) FOR [precio]
GO
/****** Object:  ForeignKey [fkssede]    Script Date: 06/23/2015 06:55:05 ******/
ALTER TABLE [dbo].[Sucursal]  WITH CHECK ADD  CONSTRAINT [fkssede] FOREIGN KEY([cod_sede])
REFERENCES [dbo].[Sede] ([cod_sede])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sucursal] CHECK CONSTRAINT [fkssede]
GO
/****** Object:  ForeignKey [fklsucursal]    Script Date: 06/23/2015 06:55:05 ******/
ALTER TABLE [dbo].[Lote]  WITH CHECK ADD  CONSTRAINT [fklsucursal] FOREIGN KEY([cod_sucursal])
REFERENCES [dbo].[Sucursal] ([cod_sucursal])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Lote] CHECK CONSTRAINT [fklsucursal]
GO
/****** Object:  ForeignKey [fkccliente]    Script Date: 06/23/2015 06:55:05 ******/
ALTER TABLE [dbo].[Casilla]  WITH CHECK ADD  CONSTRAINT [fkccliente] FOREIGN KEY([cod_cliente])
REFERENCES [dbo].[Cliente] ([cod_cliente])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Casilla] CHECK CONSTRAINT [fkccliente]
GO
/****** Object:  ForeignKey [fkpcasilla]    Script Date: 06/23/2015 06:55:05 ******/
ALTER TABLE [dbo].[Paquete]  WITH NOCHECK ADD  CONSTRAINT [fkpcasilla] FOREIGN KEY([cod_casilla])
REFERENCES [dbo].[Casilla] ([cod_casilla])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Paquete] CHECK CONSTRAINT [fkpcasilla]
GO
/****** Object:  ForeignKey [fkpimpuesto]    Script Date: 06/23/2015 06:55:05 ******/
ALTER TABLE [dbo].[Paquete]  WITH NOCHECK ADD  CONSTRAINT [fkpimpuesto] FOREIGN KEY([categoria])
REFERENCES [dbo].[Impuesto] ([categoria])
GO
ALTER TABLE [dbo].[Paquete] CHECK CONSTRAINT [fkpimpuesto]
GO
/****** Object:  ForeignKey [fkplote]    Script Date: 06/23/2015 06:55:05 ******/
ALTER TABLE [dbo].[Paquete]  WITH NOCHECK ADD  CONSTRAINT [fkplote] FOREIGN KEY([cod_lote])
REFERENCES [dbo].[Lote] ([cod_lote])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Paquete] CHECK CONSTRAINT [fkplote]
GO
/****** Object:  ForeignKey [fkrcasilla]    Script Date: 06/23/2015 06:55:06 ******/
ALTER TABLE [dbo].[Registro]  WITH CHECK ADD  CONSTRAINT [fkrcasilla] FOREIGN KEY([cod_casilla])
REFERENCES [dbo].[Casilla] ([cod_casilla])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Registro] CHECK CONSTRAINT [fkrcasilla]
GO
/****** Object:  ForeignKey [fkrpaquete]    Script Date: 06/23/2015 06:55:06 ******/
ALTER TABLE [dbo].[Registro]  WITH CHECK ADD  CONSTRAINT [fkrpaquete] FOREIGN KEY([cod_paquete])
REFERENCES [dbo].[Paquete] ([cod_paquete])
GO
ALTER TABLE [dbo].[Registro] CHECK CONSTRAINT [fkrpaquete]
GO
/****** Object:  ForeignKey [fkfcliente]    Script Date: 06/23/2015 06:55:06 ******/
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [fkfcliente] FOREIGN KEY([cod_cliente])
REFERENCES [dbo].[Cliente] ([cod_cliente])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [fkfcliente]
GO
/****** Object:  ForeignKey [fkfsucursal]    Script Date: 06/23/2015 06:55:06 ******/
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [fkfsucursal] FOREIGN KEY([cod_sucursal])
REFERENCES [dbo].[Sucursal] ([cod_sucursal])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [fkfsucursal]
GO
/****** Object:  ForeignKey [fkddirector]    Script Date: 06/23/2015 06:55:06 ******/
ALTER TABLE [dbo].[Departamento]  WITH CHECK ADD  CONSTRAINT [fkddirector] FOREIGN KEY([cod_director])
REFERENCES [dbo].[Director] ([cod_director])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Departamento] CHECK CONSTRAINT [fkddirector]
GO
/****** Object:  ForeignKey [fkdsucursal]    Script Date: 06/23/2015 06:55:06 ******/
ALTER TABLE [dbo].[Departamento]  WITH CHECK ADD  CONSTRAINT [fkdsucursal] FOREIGN KEY([cod_sucursal])
REFERENCES [dbo].[Sucursal] ([cod_sucursal])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Departamento] CHECK CONSTRAINT [fkdsucursal]
GO
/****** Object:  ForeignKey [fkedepartamento]    Script Date: 06/23/2015 06:55:06 ******/
ALTER TABLE [dbo].[Empleado]  WITH NOCHECK ADD  CONSTRAINT [fkedepartamento] FOREIGN KEY([cod_depto])
REFERENCES [dbo].[Departamento] ([cod_depto])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [fkedepartamento]
GO
