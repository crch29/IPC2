CREATE DATABASE cooperachadb
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'Spanish_Guatemala.1252'
       LC_CTYPE = 'Spanish_Guatemala.1252'
       CONNECTION LIMIT = -1;


CREATE TABLE categoria
(
  cod_categoria serial NOT NULL,
  nombre character varying(30) NOT NULL,
  descripcion character varying(90),
  CONSTRAINT categoria_pkey PRIMARY KEY (cod_categoria)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE categoria
  OWNER TO postgres;


CREATE TABLE denuncia
(
  cod_denuncia serial NOT NULL,
  descripcion character varying(500) NOT NULL,
  cod_iniciativa integer,
  cod_usuario integer,
  CONSTRAINT denuncia_pkey PRIMARY KEY (cod_denuncia),
  CONSTRAINT denuncia_cod_iniciativa_fkey FOREIGN KEY (cod_iniciativa)
      REFERENCES iniciativa (cod_iniciativa) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT denuncia_cod_usuario_fkey FOREIGN KEY (cod_usuario)
      REFERENCES usuario (cod_usuario) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE denuncia
  OWNER TO postgres;



CREATE TABLE donacion
(
  cod_donacion serial NOT NULL,
  fecha date NOT NULL,
  cod_usuario integer,
  cod_iniciativa integer,
  cod_recompensa integer,
  monto numeric(9,2) NOT NULL DEFAULT 0.00,
  aprobacion boolean DEFAULT false,
  CONSTRAINT donacion_pkey PRIMARY KEY (cod_donacion),
  CONSTRAINT donacion_cod_iniciativa_fkey FOREIGN KEY (cod_iniciativa)
      REFERENCES iniciativa (cod_iniciativa) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT donacion_cod_recompensa_fkey FOREIGN KEY (cod_recompensa)
      REFERENCES recompensa (cod_recompensa) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT donacion_cod_usuario_fkey FOREIGN KEY (cod_usuario)
      REFERENCES usuario (cod_usuario) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE donacion
  OWNER TO postgres;

CREATE TABLE envio
(
  cod_envio serial NOT NULL,
  fecha date NOT NULL,
  precio numeric(6,2) NOT NULL DEFAULT 0.00,
  destino character varying(100) NOT NULL,
  fecha_entrega date,
  estado character varying(40) DEFAULT 'transito'::character varying,
  cod_ruta integer,
  cod_donacion integer,
  CONSTRAINT envio_pkey PRIMARY KEY (cod_envio),
  CONSTRAINT envio_cod_donacion_fkey FOREIGN KEY (cod_donacion)
      REFERENCES donacion (cod_donacion) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT envio_cod_ruta_fkey FOREIGN KEY (cod_ruta)
      REFERENCES ruta (cod_ruta) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE envio
  OWNER TO postgres;


CREATE TABLE formapago
(
  cod_formapago serial NOT NULL,
  nombre character varying(20),
  CONSTRAINT formapago_pkey PRIMARY KEY (cod_formapago)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE formapago
  OWNER TO postgres;


CREATE TABLE iniciativa
(
  cod_iniciativa serial NOT NULL,
  nombre character varying(50) NOT NULL,
  descripcion character varying(500) NOT NULL,
  tiempo timestamp without time zone NOT NULL,
  cod_categoria integer,
  cod_usuario integer,
  estado character varying(20) DEFAULT 'true'::character varying,
  meta numeric(9,2) NOT NULL,
  monto numeric(9,2) DEFAULT 0.00,
  CONSTRAINT iniciativa_pkey PRIMARY KEY (cod_iniciativa),
  CONSTRAINT iniciativa_cod_categoria_fkey FOREIGN KEY (cod_categoria)
      REFERENCES categoria (cod_categoria) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT iniciativa_cod_usuario_fkey FOREIGN KEY (cod_usuario)
      REFERENCES usuario (cod_usuario) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE iniciativa
  OWNER TO postgres;


CREATE TABLE moderador
(
  cod_moderador serial NOT NULL,
  cod_iniciativa integer NOT NULL,
  cod_usuario integer NOT NULL,
  estado character varying(20) NOT NULL DEFAULT true,
  fecha date DEFAULT '2016-06-27'::date,
  CONSTRAINT moderador_pkey PRIMARY KEY (cod_moderador, cod_iniciativa, cod_usuario),
  CONSTRAINT moderador_cod_iniciativa_fkey FOREIGN KEY (cod_iniciativa)
      REFERENCES iniciativa (cod_iniciativa) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT moderador_cod_usuario_fkey FOREIGN KEY (cod_usuario)
      REFERENCES usuario (cod_usuario) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE moderador
  OWNER TO postgres;


CREATE TABLE recompensa
(
  cod_recompensa serial NOT NULL,
  stock integer,
  descripcion character varying(300),
  estado character varying(20) DEFAULT true,
  tipo character varying(30),
  cod_iniciativa integer,
  precio_unidad numeric(9,2) NOT NULL,
  CONSTRAINT recompensa_pkey PRIMARY KEY (cod_recompensa),
  CONSTRAINT recompensa_cod_iniciativa_fkey FOREIGN KEY (cod_iniciativa)
      REFERENCES iniciativa (cod_iniciativa) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT verifica_stock CHECK (stock > 0)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE recompensa
  OWNER TO postgres;


CREATE TABLE rol
(
  cod_rol serial NOT NULL,
  nombre character varying(20),
  CONSTRAINT rol_pkey PRIMARY KEY (cod_rol)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE rol
  OWNER TO postgres;


CREATE TABLE ruta
(
  cod_ruta serial NOT NULL,
  nombre character varying(20),
  costo numeric(9,2) DEFAULT 0.00,
  CONSTRAINT ruta_pkey PRIMARY KEY (cod_ruta)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE ruta
  OWNER TO postgres;



CREATE TABLE subcategoria
(
  cod_subcategoria serial NOT NULL,
  nombre character varying(30) NOT NULL,
  descripcion character varying(90),
  cod_categoria integer,
  CONSTRAINT subcategoria_pkey PRIMARY KEY (cod_subcategoria),
  CONSTRAINT subcategoria_cod_categoria_fkey FOREIGN KEY (cod_categoria)
      REFERENCES categoria (cod_categoria) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE subcategoria
  OWNER TO postgres;


CREATE TABLE usuario
(
  cod_usuario serial NOT NULL,
  nickname character varying(30) NOT NULL,
  "contraseña" character varying(30) NOT NULL,
  nombre character varying(80) NOT NULL,
  fecha_nac date NOT NULL,
  direccion character varying(90) NOT NULL,
  telefono integer,
  estado boolean DEFAULT true,
  cod_rol integer DEFAULT 2,
  cod_formapago integer,
  CONSTRAINT usuario_pkey PRIMARY KEY (cod_usuario),
  CONSTRAINT usuario_cod_formapago_fkey FOREIGN KEY (cod_formapago)
      REFERENCES formapago (cod_formapago) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT usuario_cod_rol_fkey FOREIGN KEY (cod_rol)
      REFERENCES rol (cod_rol) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT usuario_nickname_key UNIQUE (nickname)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE usuario
  OWNER TO postgres;
