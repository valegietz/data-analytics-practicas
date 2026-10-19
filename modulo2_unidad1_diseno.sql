
---NEGOCIOS DE VENTAS

-- Tabla: clientes
-- Guarda los datos básicos de cada cliente del sistema

CREATE TABLE Clientes (
IDCliente INT NOT NULL IDENTITY(1,1) PRIMARY KEY, --numero entero para identificar c/cliente de forma unica
NombreCliente varchar(100) NOT NULL,  --texto de hasta 100 caracteres
Perfil_bio text, --texto sin un limite apropiado para notas
fecha_registro DATE,
)

-- Tabla: productos
-- Guarda el catálogo de productos que se venden.

CREATE TABLE Productos (
IDProducto INT NOT NULL IDENTITY (1,1) PRIMARY KEY,  --numero entero para identificar c/producto de forma unica
Descripcion varchar(255), --texto de hasta 255 caracteres
Precio decimal(10,2), --numero con decimal, para precios de productos
esta_activo SMALLINT CHECK (esta_activo IN (0, 1)),  --usamos 1=activo (a la venta) y 0=inactivo
)

