--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: civsas; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA civsas;


ALTER SCHEMA civsas OWNER TO postgres;

--
-- Name: clb; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA clb;


ALTER SCHEMA clb OWNER TO postgres;

--
-- Name: cotizaciones; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA cotizaciones;


ALTER SCHEMA cotizaciones OWNER TO postgres;

--
-- Name: css; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA css;


ALTER SCHEMA css OWNER TO postgres;

--
-- Name: cxpproveedores; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA cxpproveedores;


ALTER SCHEMA cxpproveedores OWNER TO postgres;

--
-- Name: empresas; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA empresas;


ALTER SCHEMA empresas OWNER TO postgres;

--
-- Name: fideicomiso; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA fideicomiso;


ALTER SCHEMA fideicomiso OWNER TO postgres;

--
-- Name: listadopedidos; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA listadopedidos;


ALTER SCHEMA listadopedidos OWNER TO postgres;

--
-- Name: SCHEMA listadopedidos; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA listadopedidos IS 'Listado de pedidos para compra';


--
-- Name: mvvcc; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA mvvcc;


ALTER SCHEMA mvvcc OWNER TO postgres;

--
-- Name: ordenescompra; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ordenescompra;


ALTER SCHEMA ordenescompra OWNER TO postgres;

--
-- Name: proveedores; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA proveedores;


ALTER SCHEMA proveedores OWNER TO postgres;

--
-- Name: requisicion; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA requisicion;


ALTER SCHEMA requisicion OWNER TO postgres;

--
-- Name: requisicionlb; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA requisicionlb;


ALTER SCHEMA requisicionlb OWNER TO postgres;

--
-- Name: usuariosistema; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA usuariosistema;


ALTER SCHEMA usuariosistema OWNER TO postgres;

--
-- Name: utdvvcc; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA utdvvcc;


ALTER SCHEMA utdvvcc OWNER TO postgres;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = civsas, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: centro_costos; Type: TABLE; Schema: civsas; Owner: postgres; Tablespace: 
--

CREATE TABLE centro_costos (
    id_ccostos integer NOT NULL,
    nombre_ccostos character varying,
    sigla_ccostos character varying,
    estado boolean DEFAULT true
);


ALTER TABLE civsas.centro_costos OWNER TO postgres;

--
-- Name: centro_costos_id_ccostos_seq; Type: SEQUENCE; Schema: civsas; Owner: postgres
--

CREATE SEQUENCE centro_costos_id_ccostos_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE civsas.centro_costos_id_ccostos_seq OWNER TO postgres;

--
-- Name: centro_costos_id_ccostos_seq; Type: SEQUENCE OWNED BY; Schema: civsas; Owner: postgres
--

ALTER SEQUENCE centro_costos_id_ccostos_seq OWNED BY centro_costos.id_ccostos;


--
-- Name: consecutivos; Type: TABLE; Schema: civsas; Owner: postgres; Tablespace: 
--

CREATE TABLE consecutivos (
    id_consecutivo integer NOT NULL,
    consecutivo integer,
    id_ccostos_consecutivo integer
);


ALTER TABLE civsas.consecutivos OWNER TO postgres;

--
-- Name: consecutivos_id_consecutivo_seq; Type: SEQUENCE; Schema: civsas; Owner: postgres
--

CREATE SEQUENCE consecutivos_id_consecutivo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE civsas.consecutivos_id_consecutivo_seq OWNER TO postgres;

--
-- Name: consecutivos_id_consecutivo_seq; Type: SEQUENCE OWNED BY; Schema: civsas; Owner: postgres
--

ALTER SEQUENCE consecutivos_id_consecutivo_seq OWNED BY consecutivos.id_consecutivo;


--
-- Name: item_ccostos; Type: TABLE; Schema: civsas; Owner: postgres; Tablespace: 
--

CREATE TABLE item_ccostos (
    id_item_ccostos_civsas integer NOT NULL,
    nombre_item_civsas character varying,
    id_ccostos_civsas integer
);


ALTER TABLE civsas.item_ccostos OWNER TO postgres;

--
-- Name: item_ccostos_id_item_ccostos_civsas_seq; Type: SEQUENCE; Schema: civsas; Owner: postgres
--

CREATE SEQUENCE item_ccostos_id_item_ccostos_civsas_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE civsas.item_ccostos_id_item_ccostos_civsas_seq OWNER TO postgres;

--
-- Name: item_ccostos_id_item_ccostos_civsas_seq; Type: SEQUENCE OWNED BY; Schema: civsas; Owner: postgres
--

ALTER SEQUENCE item_ccostos_id_item_ccostos_civsas_seq OWNED BY item_ccostos.id_item_ccostos_civsas;


SET search_path = clb, pg_catalog;

--
-- Name: consecutivos; Type: TABLE; Schema: clb; Owner: postgres; Tablespace: 
--

CREATE TABLE consecutivos (
    id_consecutivo integer NOT NULL,
    consecutivo integer,
    id_centrocostos_consecutivo integer
);


ALTER TABLE clb.consecutivos OWNER TO postgres;

--
-- Name: consecutivos_id_consecutivo_seq; Type: SEQUENCE; Schema: clb; Owner: postgres
--

CREATE SEQUENCE consecutivos_id_consecutivo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE clb.consecutivos_id_consecutivo_seq OWNER TO postgres;

--
-- Name: consecutivos_id_consecutivo_seq; Type: SEQUENCE OWNED BY; Schema: clb; Owner: postgres
--

ALTER SEQUENCE consecutivos_id_consecutivo_seq OWNED BY consecutivos.id_consecutivo;


SET search_path = cotizaciones, pg_catalog;

--
-- Name: cotizacion; Type: TABLE; Schema: cotizaciones; Owner: postgres; Tablespace: 
--

CREATE TABLE cotizacion (
    consecutivo_cotizacion integer NOT NULL,
    fecha_cotizacion date NOT NULL,
    centro_costos integer NOT NULL,
    item_ccostos integer NOT NULL,
    cargo_a character varying,
    fecha_trans_cotizacion timestamp without time zone NOT NULL,
    id_usuario integer NOT NULL,
    observacion character varying,
    estado boolean DEFAULT true
);


ALTER TABLE cotizaciones.cotizacion OWNER TO postgres;

--
-- Name: cotizacion_cas; Type: TABLE; Schema: cotizaciones; Owner: postgres; Tablespace: 
--

CREATE TABLE cotizacion_cas (
    fecha_cotizacion date NOT NULL,
    centro_costos integer NOT NULL,
    item_ccostos integer NOT NULL,
    cargo_a character varying,
    fecha_trans_cotizacion timestamp without time zone NOT NULL,
    id_usuario integer NOT NULL,
    observacion character varying,
    estado boolean DEFAULT true,
    consecutivo_cotizacion integer NOT NULL
);


ALTER TABLE cotizaciones.cotizacion_cas OWNER TO postgres;

--
-- Name: cotizacion_cas_consecutivo_cotizacion_seq; Type: SEQUENCE; Schema: cotizaciones; Owner: postgres
--

CREATE SEQUENCE cotizacion_cas_consecutivo_cotizacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cotizaciones.cotizacion_cas_consecutivo_cotizacion_seq OWNER TO postgres;

--
-- Name: cotizacion_cas_consecutivo_cotizacion_seq; Type: SEQUENCE OWNED BY; Schema: cotizaciones; Owner: postgres
--

ALTER SEQUENCE cotizacion_cas_consecutivo_cotizacion_seq OWNED BY cotizacion_cas.consecutivo_cotizacion;


--
-- Name: cotizacion_consecutivo_cotizacion_seq; Type: SEQUENCE; Schema: cotizaciones; Owner: postgres
--

CREATE SEQUENCE cotizacion_consecutivo_cotizacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cotizaciones.cotizacion_consecutivo_cotizacion_seq OWNER TO postgres;

--
-- Name: cotizacion_consecutivo_cotizacion_seq; Type: SEQUENCE OWNED BY; Schema: cotizaciones; Owner: postgres
--

ALTER SEQUENCE cotizacion_consecutivo_cotizacion_seq OWNED BY cotizacion.consecutivo_cotizacion;


--
-- Name: cotizacion_mvvcc; Type: TABLE; Schema: cotizaciones; Owner: postgres; Tablespace: 
--

CREATE TABLE cotizacion_mvvcc (
    fecha_cotizacion date NOT NULL,
    centro_costos integer NOT NULL,
    item_ccostos integer NOT NULL,
    cargo_a character varying,
    fecha_trans_cotizacion timestamp without time zone NOT NULL,
    id_usuario integer NOT NULL,
    observacion character varying,
    estado boolean DEFAULT true,
    consecutivo_cotizacion integer NOT NULL
);


ALTER TABLE cotizaciones.cotizacion_mvvcc OWNER TO postgres;

--
-- Name: cotizacion_mvvcc_consecutivo_cotizacion_seq; Type: SEQUENCE; Schema: cotizaciones; Owner: postgres
--

CREATE SEQUENCE cotizacion_mvvcc_consecutivo_cotizacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cotizaciones.cotizacion_mvvcc_consecutivo_cotizacion_seq OWNER TO postgres;

--
-- Name: cotizacion_mvvcc_consecutivo_cotizacion_seq; Type: SEQUENCE OWNED BY; Schema: cotizaciones; Owner: postgres
--

ALTER SEQUENCE cotizacion_mvvcc_consecutivo_cotizacion_seq OWNED BY cotizacion_mvvcc.consecutivo_cotizacion;


--
-- Name: detalle_cotizacion; Type: TABLE; Schema: cotizaciones; Owner: postgres; Tablespace: 
--

CREATE TABLE detalle_cotizacion (
    id_detalle_cotizacion integer NOT NULL,
    nit_proveedor bigint NOT NULL,
    item integer NOT NULL,
    detalle_prod_servicio character varying NOT NULL,
    cantidad_prod_servicio double precision NOT NULL,
    vlor_unitario bigint NOT NULL,
    cotizacion character varying,
    estado boolean DEFAULT false,
    consecutivo_cotizacion bigint NOT NULL,
    id_unidad integer NOT NULL,
    subtotal bigint,
    requisicion bigint,
    descuento double precision,
    observacion character varying,
    referencia character varying
);


ALTER TABLE cotizaciones.detalle_cotizacion OWNER TO postgres;

--
-- Name: detalle_cotizacion_id_detalle_cotizacion_seq; Type: SEQUENCE; Schema: cotizaciones; Owner: postgres
--

CREATE SEQUENCE detalle_cotizacion_id_detalle_cotizacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cotizaciones.detalle_cotizacion_id_detalle_cotizacion_seq OWNER TO postgres;

--
-- Name: detalle_cotizacion_id_detalle_cotizacion_seq; Type: SEQUENCE OWNED BY; Schema: cotizaciones; Owner: postgres
--

ALTER SEQUENCE detalle_cotizacion_id_detalle_cotizacion_seq OWNED BY detalle_cotizacion.id_detalle_cotizacion;


--
-- Name: detalle_cotizacion_cas; Type: TABLE; Schema: cotizaciones; Owner: postgres; Tablespace: 
--

CREATE TABLE detalle_cotizacion_cas (
    id_detalle_cotizacion integer DEFAULT nextval('detalle_cotizacion_id_detalle_cotizacion_seq'::regclass) NOT NULL,
    nit_proveedor bigint NOT NULL,
    item integer NOT NULL,
    detalle_prod_servicio character varying NOT NULL,
    cantidad_prod_servicio double precision NOT NULL,
    vlor_unitario bigint NOT NULL,
    cotizacion character varying,
    estado boolean DEFAULT false,
    consecutivo_cotizacion bigint NOT NULL,
    id_unidad integer NOT NULL,
    subtotal bigint,
    requisicion bigint,
    descuento double precision,
    observacion character varying,
    referencia character varying
);


ALTER TABLE cotizaciones.detalle_cotizacion_cas OWNER TO postgres;

--
-- Name: detalle_cotizacion_cas_referencia_seq; Type: SEQUENCE; Schema: cotizaciones; Owner: postgres
--

CREATE SEQUENCE detalle_cotizacion_cas_referencia_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cotizaciones.detalle_cotizacion_cas_referencia_seq OWNER TO postgres;

--
-- Name: detalle_cotizacion_cas_referencia_seq; Type: SEQUENCE OWNED BY; Schema: cotizaciones; Owner: postgres
--

ALTER SEQUENCE detalle_cotizacion_cas_referencia_seq OWNED BY detalle_cotizacion_cas.referencia;


--
-- Name: detalle_cotizacion_mvvcc; Type: TABLE; Schema: cotizaciones; Owner: postgres; Tablespace: 
--

CREATE TABLE detalle_cotizacion_mvvcc (
    id_detalle_cotizacion integer DEFAULT nextval('detalle_cotizacion_id_detalle_cotizacion_seq'::regclass) NOT NULL,
    nit_proveedor bigint NOT NULL,
    item integer NOT NULL,
    detalle_prod_servicio character varying NOT NULL,
    cantidad_prod_servicio double precision NOT NULL,
    vlor_unitario bigint NOT NULL,
    cotizacion character varying,
    estado boolean DEFAULT false,
    consecutivo_cotizacion bigint NOT NULL,
    id_unidad integer NOT NULL,
    subtotal bigint,
    requisicion bigint,
    descuento double precision,
    observacion character varying,
    referencia character varying
);


ALTER TABLE cotizaciones.detalle_cotizacion_mvvcc OWNER TO postgres;

--
-- Name: img_cotizacion_utd; Type: TABLE; Schema: cotizaciones; Owner: postgres; Tablespace: 
--

CREATE TABLE img_cotizacion_utd (
    id integer NOT NULL,
    nom_archivo character varying,
    archivo bytea,
    id_cot_utd integer
);


ALTER TABLE cotizaciones.img_cotizacion_utd OWNER TO postgres;

--
-- Name: img_cotizacion_utd_id_seq; Type: SEQUENCE; Schema: cotizaciones; Owner: postgres
--

CREATE SEQUENCE img_cotizacion_utd_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cotizaciones.img_cotizacion_utd_id_seq OWNER TO postgres;

--
-- Name: img_cotizacion_utd_id_seq; Type: SEQUENCE OWNED BY; Schema: cotizaciones; Owner: postgres
--

ALTER SEQUENCE img_cotizacion_utd_id_seq OWNED BY img_cotizacion_utd.id;


SET search_path = css, pg_catalog;

--
-- Name: centro_costos; Type: TABLE; Schema: css; Owner: postgres; Tablespace: 
--

CREATE TABLE centro_costos (
    idccostoscc integer NOT NULL,
    nombre_ccostos character varying
);


ALTER TABLE css.centro_costos OWNER TO postgres;

--
-- Name: centro_costos_id_ccostos _seq; Type: SEQUENCE; Schema: css; Owner: postgres
--

CREATE SEQUENCE "centro_costos_id_ccostos _seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE css."centro_costos_id_ccostos _seq" OWNER TO postgres;

--
-- Name: centro_costos_id_ccostos _seq; Type: SEQUENCE OWNED BY; Schema: css; Owner: postgres
--

ALTER SEQUENCE "centro_costos_id_ccostos _seq" OWNED BY centro_costos.idccostoscc;


--
-- Name: item_ccostos_cc; Type: TABLE; Schema: css; Owner: postgres; Tablespace: 
--

CREATE TABLE item_ccostos_cc (
    id_item_ccostos_cc integer NOT NULL,
    nombre_ccostos_cc character varying,
    id_ccostos_cc integer
);


ALTER TABLE css.item_ccostos_cc OWNER TO postgres;

SET search_path = cxpproveedores, pg_catalog;

--
-- Name: adjuntos; Type: TABLE; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

CREATE TABLE adjuntos (
    id_adjuntos integer NOT NULL,
    id_infacturascxp_adjuntos integer,
    nombre_adjuntos character varying(20),
    archivo_adjunto bytea
);


ALTER TABLE cxpproveedores.adjuntos OWNER TO postgres;

--
-- Name: adjuntos_id_adjuntos_seq; Type: SEQUENCE; Schema: cxpproveedores; Owner: postgres
--

CREATE SEQUENCE adjuntos_id_adjuntos_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cxpproveedores.adjuntos_id_adjuntos_seq OWNER TO postgres;

--
-- Name: adjuntos_id_adjuntos_seq1; Type: SEQUENCE; Schema: cxpproveedores; Owner: postgres
--

CREATE SEQUENCE adjuntos_id_adjuntos_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cxpproveedores.adjuntos_id_adjuntos_seq1 OWNER TO postgres;

--
-- Name: adjuntos_id_adjuntos_seq1; Type: SEQUENCE OWNED BY; Schema: cxpproveedores; Owner: postgres
--

ALTER SEQUENCE adjuntos_id_adjuntos_seq1 OWNED BY adjuntos.id_adjuntos;


--
-- Name: detalle_facturascxp; Type: TABLE; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

CREATE TABLE detalle_facturascxp (
    id_detalle_infacturascxp integer NOT NULL,
    id_infacturascxp_detalle integer,
    fecha_fact_detalle date,
    cheque_detalle character varying(10),
    compro_egreso_detalle character varying(10),
    id_proveedor_detalle bigint,
    valor_fact_detalle integer,
    subtotal_detalle integer,
    baseiva_detalle integer,
    porcen_iva_detalle integer,
    valor_iva_detalle integer,
    porcen_retefuente_detalle integer,
    valor_retefuente_detalle integer,
    porcen_reteiva_detalle integer,
    valor_reteiva_detalle integer,
    porcen_retcree_detalle integer,
    valor_retcree_detalle integer,
    porcen_reteica_detalle integer,
    valor_reteica_detalle integer,
    concepto_detalle character varying(500),
    total_detalle integer,
    id_centro_costos integer,
    numero_factura_detalle integer,
    numero_solicitud_detalle character varying(15),
    municipio integer DEFAULT 0,
    desc_detalle integer DEFAULT 0
);


ALTER TABLE cxpproveedores.detalle_facturascxp OWNER TO postgres;

--
-- Name: detalle_facturascxp_civ; Type: TABLE; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

CREATE TABLE detalle_facturascxp_civ (
    id_detalle_infacturascxp integer NOT NULL,
    id_infacturascxp_detalle integer,
    fecha_fact_detalle date,
    cheque_detalle character varying(10),
    compro_egreso_detalle character varying(10),
    id_proveedor_detalle bigint,
    valor_fact_detalle integer,
    subtotal_detalle integer,
    baseiva_detalle integer,
    porcen_iva_detalle integer,
    valor_iva_detalle integer,
    porcen_retefuente_detalle integer,
    valor_retefuente_detalle integer,
    porcen_reteiva_detalle integer,
    valor_reteiva_detalle integer,
    porcen_retcree_detalle integer,
    valor_retcree_detalle integer,
    porcen_reteica_detalle integer,
    valor_reteica_detalle integer,
    concepto_detalle character varying(500),
    total_detalle integer,
    id_centro_costos integer,
    numero_factura_detalle integer,
    numero_solicitud_detalle character varying(15),
    municipio integer DEFAULT 0,
    desc_detalle integer DEFAULT 0
);


ALTER TABLE cxpproveedores.detalle_facturascxp_civ OWNER TO postgres;

--
-- Name: detalle_facturascxp_civ_id_detalle_infacturascxp_seq; Type: SEQUENCE; Schema: cxpproveedores; Owner: postgres
--

CREATE SEQUENCE detalle_facturascxp_civ_id_detalle_infacturascxp_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cxpproveedores.detalle_facturascxp_civ_id_detalle_infacturascxp_seq OWNER TO postgres;

--
-- Name: detalle_facturascxp_civ_id_detalle_infacturascxp_seq; Type: SEQUENCE OWNED BY; Schema: cxpproveedores; Owner: postgres
--

ALTER SEQUENCE detalle_facturascxp_civ_id_detalle_infacturascxp_seq OWNED BY detalle_facturascxp_civ.id_detalle_infacturascxp;


--
-- Name: detalle_facturascxp_clb; Type: TABLE; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

CREATE TABLE detalle_facturascxp_clb (
    id_detalle_infacturascxp integer NOT NULL,
    id_infacturascxp_detalle integer,
    fecha_fact_detalle date,
    cheque_detalle character varying(10),
    compro_egreso_detalle character varying(10),
    id_proveedor_detalle bigint,
    valor_fact_detalle integer,
    subtotal_detalle integer,
    baseiva_detalle integer,
    porcen_iva_detalle integer,
    valor_iva_detalle integer,
    porcen_retefuente_detalle integer,
    valor_retefuente_detalle integer,
    porcen_reteiva_detalle integer,
    valor_reteiva_detalle integer,
    porcen_retcree_detalle integer,
    valor_retcree_detalle integer,
    porcen_reteica_detalle integer,
    valor_reteica_detalle integer,
    concepto_detalle character varying(500),
    total_detalle integer,
    id_centro_costos integer,
    numero_factura_detalle integer,
    numero_solicitud_detalle character varying(20),
    municipio integer DEFAULT 0,
    desc_detalle integer DEFAULT 0
);


ALTER TABLE cxpproveedores.detalle_facturascxp_clb OWNER TO postgres;

--
-- Name: detalle_facturascxp_clb_id_detalle_infacturascxp_seq; Type: SEQUENCE; Schema: cxpproveedores; Owner: postgres
--

CREATE SEQUENCE detalle_facturascxp_clb_id_detalle_infacturascxp_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cxpproveedores.detalle_facturascxp_clb_id_detalle_infacturascxp_seq OWNER TO postgres;

--
-- Name: detalle_facturascxp_clb_id_detalle_infacturascxp_seq; Type: SEQUENCE OWNED BY; Schema: cxpproveedores; Owner: postgres
--

ALTER SEQUENCE detalle_facturascxp_clb_id_detalle_infacturascxp_seq OWNED BY detalle_facturascxp_clb.id_detalle_infacturascxp;


--
-- Name: detalle_facturascxp_fid; Type: TABLE; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

CREATE TABLE detalle_facturascxp_fid (
    id_detalle_infacturascxp integer NOT NULL,
    id_infacturascxp_detalle integer,
    fecha_fact_detalle date,
    cheque_detalle character varying(10),
    compro_egreso_detalle character varying(10),
    id_proveedor_detalle bigint,
    valor_fact_detalle integer,
    subtotal_detalle integer,
    baseiva_detalle integer,
    porcen_iva_detalle integer,
    valor_iva_detalle integer,
    porcen_retefuente_detalle integer,
    valor_retefuente_detalle integer,
    porcen_reteiva_detalle integer,
    valor_reteiva_detalle integer,
    porcen_retcree_detalle integer,
    valor_retcree_detalle integer,
    porcen_reteica_detalle integer,
    valor_reteica_detalle integer,
    concepto_detalle character varying(500),
    total_detalle integer,
    id_centro_costos integer,
    numero_factura_detalle integer,
    numero_solicitud_detalle character varying(15),
    municipio integer DEFAULT 0,
    desc_detalle integer DEFAULT 0
);


ALTER TABLE cxpproveedores.detalle_facturascxp_fid OWNER TO postgres;

--
-- Name: detalle_facturascxp_fid_id_detalle_infacturascxp_seq; Type: SEQUENCE; Schema: cxpproveedores; Owner: postgres
--

CREATE SEQUENCE detalle_facturascxp_fid_id_detalle_infacturascxp_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cxpproveedores.detalle_facturascxp_fid_id_detalle_infacturascxp_seq OWNER TO postgres;

--
-- Name: detalle_facturascxp_fid_id_detalle_infacturascxp_seq; Type: SEQUENCE OWNED BY; Schema: cxpproveedores; Owner: postgres
--

ALTER SEQUENCE detalle_facturascxp_fid_id_detalle_infacturascxp_seq OWNED BY detalle_facturascxp_fid.id_detalle_infacturascxp;


--
-- Name: detalle_facturascxp_id_detalle_infacturascxp_seq; Type: SEQUENCE; Schema: cxpproveedores; Owner: postgres
--

CREATE SEQUENCE detalle_facturascxp_id_detalle_infacturascxp_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cxpproveedores.detalle_facturascxp_id_detalle_infacturascxp_seq OWNER TO postgres;

--
-- Name: detalle_facturascxp_id_detalle_infacturascxp_seq; Type: SEQUENCE OWNED BY; Schema: cxpproveedores; Owner: postgres
--

ALTER SEQUENCE detalle_facturascxp_id_detalle_infacturascxp_seq OWNED BY detalle_facturascxp.id_detalle_infacturascxp;


--
-- Name: estado; Type: TABLE; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

CREATE TABLE estado (
    id_estado integer NOT NULL,
    nombre_estado character varying(20)
);


ALTER TABLE cxpproveedores.estado OWNER TO postgres;

--
-- Name: estado_id_estado_seq; Type: SEQUENCE; Schema: cxpproveedores; Owner: postgres
--

CREATE SEQUENCE estado_id_estado_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cxpproveedores.estado_id_estado_seq OWNER TO postgres;

--
-- Name: estado_id_estado_seq; Type: SEQUENCE OWNED BY; Schema: cxpproveedores; Owner: postgres
--

ALTER SEQUENCE estado_id_estado_seq OWNED BY estado.id_estado;


--
-- Name: facturas; Type: TABLE; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

CREATE TABLE facturas (
    id_factura integer NOT NULL,
    numero_factura character varying(25)
);


ALTER TABLE cxpproveedores.facturas OWNER TO postgres;

--
-- Name: facturas_id_factura_seq; Type: SEQUENCE; Schema: cxpproveedores; Owner: postgres
--

CREATE SEQUENCE facturas_id_factura_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cxpproveedores.facturas_id_factura_seq OWNER TO postgres;

--
-- Name: facturas_id_factura_seq; Type: SEQUENCE OWNED BY; Schema: cxpproveedores; Owner: postgres
--

ALTER SEQUENCE facturas_id_factura_seq OWNED BY facturas.id_factura;


--
-- Name: infacturascxp; Type: TABLE; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

CREATE TABLE infacturascxp (
    id_infacturascxp integer NOT NULL,
    id_centro_costos integer,
    periodo_infacturascxp integer,
    year_infacturascxp integer,
    fecha_elabo_infacturascxp date,
    proyec_pago_infacturascxp date,
    total_fact_infacturascxp integer,
    descu_infacturascxp character varying(5),
    subtotal_infacturascxp integer,
    base_iva_infacturascxp integer,
    sumatoria_iva_infacturascxp integer,
    sumatoria_retefuente_infacturascxp integer,
    sumatoria_reteiva_infacturascxp integer,
    sumatoria_retcree_infacturascxp integer,
    sumatoria_reteica_infacturascxp integer,
    total_infacturascxp integer,
    obs_infacturascxp character varying(500),
    estado_infacturascxp integer,
    consecutivo_cc_infacturascxp integer,
    id_usuarios bigint
);


ALTER TABLE cxpproveedores.infacturascxp OWNER TO postgres;

--
-- Name: infacturascxp_civ; Type: TABLE; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

CREATE TABLE infacturascxp_civ (
    id_infacturascxp integer NOT NULL,
    id_usuarios integer,
    id_centro_costos integer,
    periodo_infacturascxp integer,
    year_infacturascxp integer,
    fecha_elabo_infacturascxp date,
    proyec_pago_infacturascxp date,
    total_fact_infacturascxp integer,
    descu_infacturascxp character varying(5),
    subtotal_infacturascxp integer,
    base_iva_infacturascxp integer,
    sumatoria_iva_infacturascxp integer,
    sumatoria_retefuente_infacturascxp integer,
    sumatoria_reteiva_infacturascxp integer,
    sumatoria_retcree_infacturascxp integer,
    sumatoria_reteica_infacturascxp integer,
    total_infacturascxp integer,
    obs_infacturascxp character varying(500),
    estado_infacturascxp integer,
    consecutivo_cc_infacturascxp integer
);


ALTER TABLE cxpproveedores.infacturascxp_civ OWNER TO postgres;

--
-- Name: infacturascxp_civ_id_infacturascxp_seq; Type: SEQUENCE; Schema: cxpproveedores; Owner: postgres
--

CREATE SEQUENCE infacturascxp_civ_id_infacturascxp_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cxpproveedores.infacturascxp_civ_id_infacturascxp_seq OWNER TO postgres;

--
-- Name: infacturascxp_civ_id_infacturascxp_seq; Type: SEQUENCE OWNED BY; Schema: cxpproveedores; Owner: postgres
--

ALTER SEQUENCE infacturascxp_civ_id_infacturascxp_seq OWNED BY infacturascxp_civ.id_infacturascxp;


--
-- Name: infacturascxp_clb; Type: TABLE; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

CREATE TABLE infacturascxp_clb (
    id_infacturascxp integer NOT NULL,
    id_usuarios integer,
    id_centro_costos integer,
    periodo_infacturascxp integer,
    year_infacturascxp integer,
    fecha_elabo_infacturascxp date,
    proyec_pago_infacturascxp date,
    total_fact_infacturascxp integer,
    descu_infacturascxp character varying(5),
    subtotal_infacturascxp integer,
    base_iva_infacturascxp integer,
    sumatoria_iva_infacturascxp integer,
    sumatoria_retefuente_infacturascxp integer,
    sumatoria_reteiva_infacturascxp integer,
    sumatoria_retcree_infacturascxp integer,
    sumatoria_reteica_infacturascxp integer,
    total_infacturascxp integer,
    obs_infacturascxp character varying(500),
    estado_infacturascxp integer,
    consecutivo_cc_infacturascxp integer
);


ALTER TABLE cxpproveedores.infacturascxp_clb OWNER TO postgres;

--
-- Name: infacturascxp_clb_id_infacturascxp_seq; Type: SEQUENCE; Schema: cxpproveedores; Owner: postgres
--

CREATE SEQUENCE infacturascxp_clb_id_infacturascxp_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cxpproveedores.infacturascxp_clb_id_infacturascxp_seq OWNER TO postgres;

--
-- Name: infacturascxp_clb_id_infacturascxp_seq; Type: SEQUENCE OWNED BY; Schema: cxpproveedores; Owner: postgres
--

ALTER SEQUENCE infacturascxp_clb_id_infacturascxp_seq OWNED BY infacturascxp_clb.id_infacturascxp;


--
-- Name: infacturascxp_fid; Type: TABLE; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

CREATE TABLE infacturascxp_fid (
    id_infacturascxp integer NOT NULL,
    id_usuarios integer,
    id_centro_costos integer,
    periodo_infacturascxp integer,
    year_infacturascxp integer,
    fecha_elabo_infacturascxp date,
    proyec_pago_infacturascxp date,
    total_fact_infacturascxp integer,
    descu_infacturascxp character varying(5),
    subtotal_infacturascxp integer,
    base_iva_infacturascxp integer,
    sumatoria_iva_infacturascxp integer,
    sumatoria_retefuente_infacturascxp integer,
    sumatoria_reteiva_infacturascxp integer,
    sumatoria_retcree_infacturascxp integer,
    sumatoria_reteica_infacturascxp integer,
    total_infacturascxp integer,
    obs_infacturascxp character varying(500),
    estado_infacturascxp integer,
    consecutivo_cc_infacturascxp integer
);


ALTER TABLE cxpproveedores.infacturascxp_fid OWNER TO postgres;

--
-- Name: infacturascxp_fid_id_infacturascxp_seq; Type: SEQUENCE; Schema: cxpproveedores; Owner: postgres
--

CREATE SEQUENCE infacturascxp_fid_id_infacturascxp_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cxpproveedores.infacturascxp_fid_id_infacturascxp_seq OWNER TO postgres;

--
-- Name: infacturascxp_fid_id_infacturascxp_seq; Type: SEQUENCE OWNED BY; Schema: cxpproveedores; Owner: postgres
--

ALTER SEQUENCE infacturascxp_fid_id_infacturascxp_seq OWNED BY infacturascxp_fid.id_infacturascxp;


--
-- Name: infacturascxp_id_infacturascxp_seq; Type: SEQUENCE; Schema: cxpproveedores; Owner: postgres
--

CREATE SEQUENCE infacturascxp_id_infacturascxp_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cxpproveedores.infacturascxp_id_infacturascxp_seq OWNER TO postgres;

--
-- Name: infacturascxp_id_infacturascxp_seq; Type: SEQUENCE OWNED BY; Schema: cxpproveedores; Owner: postgres
--

ALTER SEQUENCE infacturascxp_id_infacturascxp_seq OWNED BY infacturascxp.id_infacturascxp;


--
-- Name: iva; Type: TABLE; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

CREATE TABLE iva (
    id_iva integer NOT NULL,
    valor_iva real,
    periodo_vigen_anual_iva character varying(5)
);


ALTER TABLE cxpproveedores.iva OWNER TO postgres;

--
-- Name: iva_id_iva_seq; Type: SEQUENCE; Schema: cxpproveedores; Owner: postgres
--

CREATE SEQUENCE iva_id_iva_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cxpproveedores.iva_id_iva_seq OWNER TO postgres;

--
-- Name: iva_id_iva_seq; Type: SEQUENCE OWNED BY; Schema: cxpproveedores; Owner: postgres
--

ALTER SEQUENCE iva_id_iva_seq OWNED BY iva.id_iva;


--
-- Name: mes; Type: TABLE; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

CREATE TABLE mes (
    id_mes integer NOT NULL,
    nombre_mes character varying(15)
);


ALTER TABLE cxpproveedores.mes OWNER TO postgres;

--
-- Name: mes_id_mes_seq; Type: SEQUENCE; Schema: cxpproveedores; Owner: postgres
--

CREATE SEQUENCE mes_id_mes_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cxpproveedores.mes_id_mes_seq OWNER TO postgres;

--
-- Name: mes_id_mes_seq; Type: SEQUENCE OWNED BY; Schema: cxpproveedores; Owner: postgres
--

ALTER SEQUENCE mes_id_mes_seq OWNED BY mes.id_mes;


--
-- Name: retcree; Type: TABLE; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

CREATE TABLE retcree (
    id_retcree integer NOT NULL,
    valor_retcree real,
    periodo_vigen_anual_retcree character varying(5)
);


ALTER TABLE cxpproveedores.retcree OWNER TO postgres;

--
-- Name: retcree_id_retcree_seq; Type: SEQUENCE; Schema: cxpproveedores; Owner: postgres
--

CREATE SEQUENCE retcree_id_retcree_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cxpproveedores.retcree_id_retcree_seq OWNER TO postgres;

--
-- Name: retcree_id_retcree_seq; Type: SEQUENCE OWNED BY; Schema: cxpproveedores; Owner: postgres
--

ALTER SEQUENCE retcree_id_retcree_seq OWNED BY retcree.id_retcree;


--
-- Name: retefuente; Type: TABLE; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

CREATE TABLE retefuente (
    id_retefuente integer NOT NULL,
    valor_retefuente real,
    periodo_vigen_anual_retefuente character varying(5),
    concepto_retefuente character varying(500)
);


ALTER TABLE cxpproveedores.retefuente OWNER TO postgres;

--
-- Name: retefuente_id_retefuente_seq; Type: SEQUENCE; Schema: cxpproveedores; Owner: postgres
--

CREATE SEQUENCE retefuente_id_retefuente_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cxpproveedores.retefuente_id_retefuente_seq OWNER TO postgres;

--
-- Name: retefuente_id_retefuente_seq; Type: SEQUENCE OWNED BY; Schema: cxpproveedores; Owner: postgres
--

ALTER SEQUENCE retefuente_id_retefuente_seq OWNED BY retefuente.id_retefuente;


--
-- Name: reteica; Type: TABLE; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

CREATE TABLE reteica (
    id_reteica integer NOT NULL,
    valor_reteica real,
    periodo_vigen_anual_reteica character varying(5),
    tarifaxmil_reteica real
);


ALTER TABLE cxpproveedores.reteica OWNER TO postgres;

--
-- Name: reteica_id_reteica_seq; Type: SEQUENCE; Schema: cxpproveedores; Owner: postgres
--

CREATE SEQUENCE reteica_id_reteica_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cxpproveedores.reteica_id_reteica_seq OWNER TO postgres;

--
-- Name: reteica_id_reteica_seq; Type: SEQUENCE OWNED BY; Schema: cxpproveedores; Owner: postgres
--

ALTER SEQUENCE reteica_id_reteica_seq OWNED BY reteica.id_reteica;


--
-- Name: reteiva; Type: TABLE; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

CREATE TABLE reteiva (
    id_reteiva integer NOT NULL,
    valor_reteiva real,
    periodo_vigen_anual_reteiva character varying(5)
);


ALTER TABLE cxpproveedores.reteiva OWNER TO postgres;

--
-- Name: reteiva_id_reteiva_seq; Type: SEQUENCE; Schema: cxpproveedores; Owner: postgres
--

CREATE SEQUENCE reteiva_id_reteiva_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cxpproveedores.reteiva_id_reteiva_seq OWNER TO postgres;

--
-- Name: reteiva_id_reteiva_seq; Type: SEQUENCE OWNED BY; Schema: cxpproveedores; Owner: postgres
--

ALTER SEQUENCE reteiva_id_reteiva_seq OWNED BY reteiva.id_reteiva;


--
-- Name: year; Type: TABLE; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

CREATE TABLE year (
    id_year integer NOT NULL,
    nombre_year character varying(5)
);


ALTER TABLE cxpproveedores.year OWNER TO postgres;

--
-- Name: year_id_year_seq; Type: SEQUENCE; Schema: cxpproveedores; Owner: postgres
--

CREATE SEQUENCE year_id_year_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cxpproveedores.year_id_year_seq OWNER TO postgres;

--
-- Name: year_id_year_seq; Type: SEQUENCE OWNED BY; Schema: cxpproveedores; Owner: postgres
--

ALTER SEQUENCE year_id_year_seq OWNED BY year.id_year;


SET search_path = empresas, pg_catalog;

--
-- Name: empresa; Type: TABLE; Schema: empresas; Owner: postgres; Tablespace: 
--

CREATE TABLE empresa (
    nit_empresa bigint NOT NULL,
    empresa_razon_social character varying,
    sigla_empresa character varying
);


ALTER TABLE empresas.empresa OWNER TO postgres;

SET search_path = fideicomiso, pg_catalog;

--
-- Name: consecutivos; Type: TABLE; Schema: fideicomiso; Owner: postgres; Tablespace: 
--

CREATE TABLE consecutivos (
    id_consecutivo integer NOT NULL,
    consecutivo integer,
    id_centrocostos_consecutivo integer
);


ALTER TABLE fideicomiso.consecutivos OWNER TO postgres;

--
-- Name: consecutivos_id_consecutivo_seq; Type: SEQUENCE; Schema: fideicomiso; Owner: postgres
--

CREATE SEQUENCE consecutivos_id_consecutivo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE fideicomiso.consecutivos_id_consecutivo_seq OWNER TO postgres;

--
-- Name: consecutivos_id_consecutivo_seq; Type: SEQUENCE OWNED BY; Schema: fideicomiso; Owner: postgres
--

ALTER SEQUENCE consecutivos_id_consecutivo_seq OWNED BY consecutivos.id_consecutivo;


SET search_path = listadopedidos, pg_catalog;

--
-- Name: detalle_pedido; Type: TABLE; Schema: listadopedidos; Owner: postgres; Tablespace: 
--

CREATE TABLE detalle_pedido (
    id_dt integer NOT NULL,
    id_pedido integer NOT NULL,
    item real NOT NULL,
    descripcion character varying NOT NULL,
    cantidad real NOT NULL,
    observacion character varying,
    referencia character varying,
    um character varying,
    cantidad_parcial real,
    id_estado integer DEFAULT 2
);


ALTER TABLE listadopedidos.detalle_pedido OWNER TO postgres;

--
-- Name: detalle_pedido_id_dt_seq; Type: SEQUENCE; Schema: listadopedidos; Owner: postgres
--

CREATE SEQUENCE detalle_pedido_id_dt_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE listadopedidos.detalle_pedido_id_dt_seq OWNER TO postgres;

--
-- Name: detalle_pedido_id_dt_seq; Type: SEQUENCE OWNED BY; Schema: listadopedidos; Owner: postgres
--

ALTER SEQUENCE detalle_pedido_id_dt_seq OWNED BY detalle_pedido.id_dt;


--
-- Name: estado_pedido; Type: TABLE; Schema: listadopedidos; Owner: postgres; Tablespace: 
--

CREATE TABLE estado_pedido (
    id_estado integer NOT NULL,
    nom_estado character varying
);


ALTER TABLE listadopedidos.estado_pedido OWNER TO postgres;

--
-- Name: estado_pedido_id_estado_seq; Type: SEQUENCE; Schema: listadopedidos; Owner: postgres
--

CREATE SEQUENCE estado_pedido_id_estado_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE listadopedidos.estado_pedido_id_estado_seq OWNER TO postgres;

--
-- Name: estado_pedido_id_estado_seq; Type: SEQUENCE OWNED BY; Schema: listadopedidos; Owner: postgres
--

ALTER SEQUENCE estado_pedido_id_estado_seq OWNED BY estado_pedido.id_estado;


--
-- Name: pedido; Type: TABLE; Schema: listadopedidos; Owner: postgres; Tablespace: 
--

CREATE TABLE pedido (
    id_pedido integer NOT NULL,
    id_item_ccostos integer,
    id_dir integer,
    id_us integer,
    observaciones character varying,
    fecha timestamp without time zone,
    fecha_mod timestamp without time zone
);


ALTER TABLE listadopedidos.pedido OWNER TO postgres;

--
-- Name: pedido_id_pedido_seq; Type: SEQUENCE; Schema: listadopedidos; Owner: postgres
--

CREATE SEQUENCE pedido_id_pedido_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE listadopedidos.pedido_id_pedido_seq OWNER TO postgres;

--
-- Name: pedido_id_pedido_seq; Type: SEQUENCE OWNED BY; Schema: listadopedidos; Owner: postgres
--

ALTER SEQUENCE pedido_id_pedido_seq OWNED BY pedido.id_pedido;


SET search_path = mvvcc, pg_catalog;

--
-- Name: centro_costos; Type: TABLE; Schema: mvvcc; Owner: postgres; Tablespace: 
--

CREATE TABLE centro_costos (
    id_ccostos integer NOT NULL,
    nombre_ccostos character varying
);


ALTER TABLE mvvcc.centro_costos OWNER TO postgres;

--
-- Name: centro_costos_id_ccostos_seq; Type: SEQUENCE; Schema: mvvcc; Owner: postgres
--

CREATE SEQUENCE centro_costos_id_ccostos_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mvvcc.centro_costos_id_ccostos_seq OWNER TO postgres;

--
-- Name: centro_costos_id_ccostos_seq; Type: SEQUENCE OWNED BY; Schema: mvvcc; Owner: postgres
--

ALTER SEQUENCE centro_costos_id_ccostos_seq OWNED BY centro_costos.id_ccostos;


--
-- Name: item_ccostos; Type: TABLE; Schema: mvvcc; Owner: postgres; Tablespace: 
--

CREATE TABLE item_ccostos (
    id_item_ccostos_mvvcc integer NOT NULL,
    nombre_item_mvvcc character varying,
    id_ccostos_mvvcc integer
);


ALTER TABLE mvvcc.item_ccostos OWNER TO postgres;

--
-- Name: id_item_ccostos_id_item_ccostos_mvvcc_seq; Type: SEQUENCE; Schema: mvvcc; Owner: postgres
--

CREATE SEQUENCE id_item_ccostos_id_item_ccostos_mvvcc_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mvvcc.id_item_ccostos_id_item_ccostos_mvvcc_seq OWNER TO postgres;

--
-- Name: id_item_ccostos_id_item_ccostos_mvvcc_seq; Type: SEQUENCE OWNED BY; Schema: mvvcc; Owner: postgres
--

ALTER SEQUENCE id_item_ccostos_id_item_ccostos_mvvcc_seq OWNED BY item_ccostos.id_item_ccostos_mvvcc;


SET search_path = ordenescompra, pg_catalog;

--
-- Name: causados_oc; Type: TABLE; Schema: ordenescompra; Owner: postgres; Tablespace: 
--

CREATE TABLE causados_oc (
    id_causado integer NOT NULL,
    fecha_causado timestamp without time zone,
    cantidad_causada real,
    factura_causada character varying,
    id_oc integer,
    id_det_oc integer,
    id_usuario integer
);


ALTER TABLE ordenescompra.causados_oc OWNER TO postgres;

--
-- Name: TABLE causados_oc; Type: COMMENT; Schema: ordenescompra; Owner: postgres
--

COMMENT ON TABLE causados_oc IS 'Causados OC UTD';


--
-- Name: causados_oc_id_causado_seq; Type: SEQUENCE; Schema: ordenescompra; Owner: postgres
--

CREATE SEQUENCE causados_oc_id_causado_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ordenescompra.causados_oc_id_causado_seq OWNER TO postgres;

--
-- Name: causados_oc_id_causado_seq; Type: SEQUENCE OWNED BY; Schema: ordenescompra; Owner: postgres
--

ALTER SEQUENCE causados_oc_id_causado_seq OWNED BY causados_oc.id_causado;


--
-- Name: det_oc_utd; Type: TABLE; Schema: ordenescompra; Owner: postgres; Tablespace: 
--

CREATE TABLE det_oc_utd (
    id_det_oc integer NOT NULL,
    id_det_req integer,
    cantidad real,
    vlor_unitario real,
    vlor_iva real,
    id_iva integer,
    total integer,
    id_oc integer,
    obse character varying,
    vlordescuento real,
    descuento character(10),
    cantidad_parcial real,
    entregado boolean DEFAULT false
);


ALTER TABLE ordenescompra.det_oc_utd OWNER TO postgres;

--
-- Name: TABLE det_oc_utd; Type: COMMENT; Schema: ordenescompra; Owner: postgres
--

COMMENT ON TABLE det_oc_utd IS 'Detalle de OC nueva tabla';


--
-- Name: COLUMN det_oc_utd.cantidad_parcial; Type: COMMENT; Schema: ordenescompra; Owner: postgres
--

COMMENT ON COLUMN det_oc_utd.cantidad_parcial IS 'Cantidad Que falta por entregar el proveedor';


--
-- Name: det_oc_id_det_oc_seq; Type: SEQUENCE; Schema: ordenescompra; Owner: postgres
--

CREATE SEQUENCE det_oc_id_det_oc_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ordenescompra.det_oc_id_det_oc_seq OWNER TO postgres;

--
-- Name: det_oc_id_det_oc_seq; Type: SEQUENCE OWNED BY; Schema: ordenescompra; Owner: postgres
--

ALTER SEQUENCE det_oc_id_det_oc_seq OWNED BY det_oc_utd.id_det_oc;


--
-- Name: detalle_orden_civsas; Type: TABLE; Schema: ordenescompra; Owner: postgres; Tablespace: 
--

CREATE TABLE detalle_orden_civsas (
    descripcion character varying NOT NULL,
    cantidad double precision NOT NULL,
    id_unidad integer NOT NULL,
    referencia character varying,
    consecutivo_ordencompra bigint NOT NULL,
    subtotal bigint,
    vlor_unitario double precision,
    item_det_orden integer,
    factura character varying,
    entregado boolean,
    iva bigint,
    dto_comercial bigint,
    id_iva integer,
    total bigint,
    id_detalle_orden_compra integer NOT NULL
);


ALTER TABLE ordenescompra.detalle_orden_civsas OWNER TO postgres;

--
-- Name: detalle_orden_civsas_id_detalle_orden_compra_seq; Type: SEQUENCE; Schema: ordenescompra; Owner: postgres
--

CREATE SEQUENCE detalle_orden_civsas_id_detalle_orden_compra_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ordenescompra.detalle_orden_civsas_id_detalle_orden_compra_seq OWNER TO postgres;

--
-- Name: detalle_orden_civsas_id_detalle_orden_compra_seq; Type: SEQUENCE OWNED BY; Schema: ordenescompra; Owner: postgres
--

ALTER SEQUENCE detalle_orden_civsas_id_detalle_orden_compra_seq OWNED BY detalle_orden_civsas.id_detalle_orden_compra;


--
-- Name: detalle_orden_compra; Type: TABLE; Schema: ordenescompra; Owner: postgres; Tablespace: 
--

CREATE TABLE detalle_orden_compra (
    id_detalle_orden_compra integer NOT NULL,
    descripcion character varying NOT NULL,
    cantidad double precision NOT NULL,
    id_unidad integer NOT NULL,
    referencia character varying,
    consecutivo_ordencompra bigint NOT NULL,
    subtotal bigint,
    vlor_unitario double precision,
    item_det_orden integer,
    factura character varying,
    entregado boolean,
    iva bigint,
    dto_comercial bigint DEFAULT 0,
    id_iva integer,
    total bigint
);


ALTER TABLE ordenescompra.detalle_orden_compra OWNER TO postgres;

--
-- Name: detalle_orden_compra_consecutivo_ordenCompra_seq; Type: SEQUENCE; Schema: ordenescompra; Owner: postgres
--

CREATE SEQUENCE "detalle_orden_compra_consecutivo_ordenCompra_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ordenescompra."detalle_orden_compra_consecutivo_ordenCompra_seq" OWNER TO postgres;

--
-- Name: detalle_orden_compra_consecutivo_ordenCompra_seq; Type: SEQUENCE OWNED BY; Schema: ordenescompra; Owner: postgres
--

ALTER SEQUENCE "detalle_orden_compra_consecutivo_ordenCompra_seq" OWNED BY detalle_orden_compra.consecutivo_ordencompra;


--
-- Name: detalle_orden_compra_id_detalle_orden_compra_seq; Type: SEQUENCE; Schema: ordenescompra; Owner: postgres
--

CREATE SEQUENCE detalle_orden_compra_id_detalle_orden_compra_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ordenescompra.detalle_orden_compra_id_detalle_orden_compra_seq OWNER TO postgres;

--
-- Name: detalle_orden_compra_id_detalle_orden_compra_seq; Type: SEQUENCE OWNED BY; Schema: ordenescompra; Owner: postgres
--

ALTER SEQUENCE detalle_orden_compra_id_detalle_orden_compra_seq OWNED BY detalle_orden_compra.id_detalle_orden_compra;


--
-- Name: detalle_orden_compra_css; Type: TABLE; Schema: ordenescompra; Owner: postgres; Tablespace: 
--

CREATE TABLE detalle_orden_compra_css (
    id_detalle_orden_compra integer DEFAULT nextval('detalle_orden_compra_id_detalle_orden_compra_seq'::regclass) NOT NULL,
    descripcion character varying NOT NULL,
    cantidad double precision NOT NULL,
    id_unidad integer NOT NULL,
    referencia character varying,
    consecutivo_ordencompra bigint NOT NULL,
    subtotal bigint,
    vlor_unitario double precision,
    item_det_orden double precision,
    factura character varying,
    entregado boolean,
    iva bigint,
    dto_comercial bigint DEFAULT 0,
    id_iva integer,
    total bigint,
    codigo_sinco bigint DEFAULT 0
);


ALTER TABLE ordenescompra.detalle_orden_compra_css OWNER TO postgres;

--
-- Name: detalle_orden_compra_mvvcc; Type: TABLE; Schema: ordenescompra; Owner: postgres; Tablespace: 
--

CREATE TABLE detalle_orden_compra_mvvcc (
    descripcion character varying NOT NULL,
    cantidad double precision NOT NULL,
    id_unidad integer NOT NULL,
    referencia character varying,
    consecutivo_ordencompra bigint NOT NULL,
    subtotal bigint,
    vlor_unitario double precision,
    item_det_orden integer,
    id_detalle_orden integer NOT NULL,
    factura character varying,
    entregado boolean,
    iva bigint,
    dto_comercial bigint,
    id_iva integer,
    total bigint,
    codigo_sinco double precision DEFAULT 0
);


ALTER TABLE ordenescompra.detalle_orden_compra_mvvcc OWNER TO postgres;

--
-- Name: detalle_orden_compra_mvvcc_id_detaller_orden_seq; Type: SEQUENCE; Schema: ordenescompra; Owner: postgres
--

CREATE SEQUENCE detalle_orden_compra_mvvcc_id_detaller_orden_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ordenescompra.detalle_orden_compra_mvvcc_id_detaller_orden_seq OWNER TO postgres;

--
-- Name: detalle_orden_compra_mvvcc_id_detaller_orden_seq; Type: SEQUENCE OWNED BY; Schema: ordenescompra; Owner: postgres
--

ALTER SEQUENCE detalle_orden_compra_mvvcc_id_detaller_orden_seq OWNED BY detalle_orden_compra_mvvcc.id_detalle_orden;


--
-- Name: dt_orden_clg; Type: TABLE; Schema: ordenescompra; Owner: postgres; Tablespace: 
--

CREATE TABLE dt_orden_clg (
    descripcion character varying NOT NULL,
    cantidad double precision NOT NULL,
    id_unidad integer NOT NULL,
    referencia character varying,
    consecutivo_ordencompra bigint NOT NULL,
    subtotal bigint,
    vlor_unitario double precision,
    item_det_orden integer,
    factura character varying,
    entregado boolean,
    iva bigint,
    dto_comercial bigint,
    id_iva integer,
    total bigint,
    id_detalle_orden_compra integer NOT NULL
);


ALTER TABLE ordenescompra.dt_orden_clg OWNER TO postgres;

--
-- Name: dt_orden_clg_id_detalle_orden_compra_seq; Type: SEQUENCE; Schema: ordenescompra; Owner: postgres
--

CREATE SEQUENCE dt_orden_clg_id_detalle_orden_compra_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ordenescompra.dt_orden_clg_id_detalle_orden_compra_seq OWNER TO postgres;

--
-- Name: dt_orden_clg_id_detalle_orden_compra_seq; Type: SEQUENCE OWNED BY; Schema: ordenescompra; Owner: postgres
--

ALTER SEQUENCE dt_orden_clg_id_detalle_orden_compra_seq OWNED BY dt_orden_clg.id_detalle_orden_compra;


--
-- Name: orden_compra; Type: TABLE; Schema: ordenescompra; Owner: postgres; Tablespace: 
--

CREATE TABLE orden_compra (
    fecha_orden date,
    nit_proveedor bigint NOT NULL,
    requisicion character varying,
    id_centrocostos integer,
    id_usuario integer NOT NULL,
    fecha_transaccion timestamp without time zone NOT NULL,
    condicion1 character varying,
    condicion2 character varying,
    condicion3 character varying,
    condicion4 character varying,
    consecutivo_orden_compra bigint NOT NULL,
    cotizacion character varying,
    dto_comercial integer,
    id_itemccostos integer,
    cargoa_orden character varying,
    dto_financiero integer DEFAULT 0,
    total_orden bigint,
    iva double precision,
    estado boolean DEFAULT true NOT NULL,
    observacion character varying,
    id_requisicion integer,
    condiciones character varying,
    id_director integer
);


ALTER TABLE ordenescompra.orden_compra OWNER TO postgres;

--
-- Name: orden_compra_civsas; Type: TABLE; Schema: ordenescompra; Owner: postgres; Tablespace: 
--

CREATE TABLE orden_compra_civsas (
    fecha_orden date,
    nit_proveedor bigint NOT NULL,
    requisicion character varying,
    id_centrocostos integer,
    id_usuario integer NOT NULL,
    fecha_transaccion timestamp without time zone NOT NULL,
    condicion1 character varying,
    condicion2 character varying,
    condicion3 character varying,
    condicion4 character varying,
    cotizacion character varying,
    dto_comercial integer,
    id_itemccostos integer,
    cargoa_orden character varying,
    dto_financiero integer,
    total_orden bigint,
    iva double precision,
    estado boolean DEFAULT true NOT NULL,
    observacion character varying,
    id_requisicion integer,
    condiciones character varying,
    consecutivo_orden_compra integer NOT NULL
);


ALTER TABLE ordenescompra.orden_compra_civsas OWNER TO postgres;

--
-- Name: orden_compra_civsas_consecutivo_orden_compra_seq; Type: SEQUENCE; Schema: ordenescompra; Owner: postgres
--

CREATE SEQUENCE orden_compra_civsas_consecutivo_orden_compra_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ordenescompra.orden_compra_civsas_consecutivo_orden_compra_seq OWNER TO postgres;

--
-- Name: orden_compra_civsas_consecutivo_orden_compra_seq; Type: SEQUENCE OWNED BY; Schema: ordenescompra; Owner: postgres
--

ALTER SEQUENCE orden_compra_civsas_consecutivo_orden_compra_seq OWNED BY orden_compra_civsas.consecutivo_orden_compra;


--
-- Name: orden_compra_clg; Type: TABLE; Schema: ordenescompra; Owner: postgres; Tablespace: 
--

CREATE TABLE orden_compra_clg (
    nit_proveedor bigint NOT NULL,
    id_usuario integer NOT NULL,
    fecha_transaccion timestamp without time zone NOT NULL,
    cotizacion character varying,
    id_itemccostos integer,
    cargoa_orden character varying,
    dto_financiero integer,
    estado boolean,
    observacion character varying,
    condiciones character varying,
    requisicion character varying,
    id_orden_compra bigint NOT NULL
);


ALTER TABLE ordenescompra.orden_compra_clg OWNER TO postgres;

--
-- Name: orden_compra_clg_id_orden_compra_seq; Type: SEQUENCE; Schema: ordenescompra; Owner: postgres
--

CREATE SEQUENCE orden_compra_clg_id_orden_compra_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ordenescompra.orden_compra_clg_id_orden_compra_seq OWNER TO postgres;

--
-- Name: orden_compra_clg_id_orden_compra_seq; Type: SEQUENCE OWNED BY; Schema: ordenescompra; Owner: postgres
--

ALTER SEQUENCE orden_compra_clg_id_orden_compra_seq OWNED BY orden_compra_clg.id_orden_compra;


--
-- Name: orden_compra_consecutivo_orden_compra_seq; Type: SEQUENCE; Schema: ordenescompra; Owner: postgres
--

CREATE SEQUENCE orden_compra_consecutivo_orden_compra_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ordenescompra.orden_compra_consecutivo_orden_compra_seq OWNER TO postgres;

--
-- Name: orden_compra_consecutivo_orden_compra_seq; Type: SEQUENCE OWNED BY; Schema: ordenescompra; Owner: postgres
--

ALTER SEQUENCE orden_compra_consecutivo_orden_compra_seq OWNED BY orden_compra.consecutivo_orden_compra;


--
-- Name: orden_compra_css; Type: TABLE; Schema: ordenescompra; Owner: postgres; Tablespace: 
--

CREATE TABLE orden_compra_css (
    fecha_orden date,
    nit_proveedor bigint NOT NULL,
    requisicion character varying,
    id_centrocostos integer,
    id_usuario integer NOT NULL,
    fecha_transaccion timestamp without time zone NOT NULL,
    condicion1 character varying,
    condicion2 character varying,
    condicion3 character varying,
    condicion4 character varying,
    cotizacion character varying,
    dto_comercial integer DEFAULT 0,
    id_itemccostos integer,
    cargoa_orden character varying,
    dto_financiero integer DEFAULT 0,
    total_orden bigint,
    iva double precision,
    estado boolean DEFAULT true NOT NULL,
    observacion character varying,
    consecutivo_orden_compra integer NOT NULL,
    condiciones character varying
);


ALTER TABLE ordenescompra.orden_compra_css OWNER TO postgres;

--
-- Name: orden_compra_css_consecutivo_orden_compra_seq; Type: SEQUENCE; Schema: ordenescompra; Owner: postgres
--

CREATE SEQUENCE orden_compra_css_consecutivo_orden_compra_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ordenescompra.orden_compra_css_consecutivo_orden_compra_seq OWNER TO postgres;

--
-- Name: orden_compra_css_consecutivo_orden_compra_seq; Type: SEQUENCE OWNED BY; Schema: ordenescompra; Owner: postgres
--

ALTER SEQUENCE orden_compra_css_consecutivo_orden_compra_seq OWNED BY orden_compra_css.consecutivo_orden_compra;


--
-- Name: orden_compra_id_centroCostos_seq; Type: SEQUENCE; Schema: ordenescompra; Owner: postgres
--

CREATE SEQUENCE "orden_compra_id_centroCostos_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ordenescompra."orden_compra_id_centroCostos_seq" OWNER TO postgres;

--
-- Name: orden_compra_id_centroCostos_seq; Type: SEQUENCE OWNED BY; Schema: ordenescompra; Owner: postgres
--

ALTER SEQUENCE "orden_compra_id_centroCostos_seq" OWNED BY orden_compra.id_centrocostos;


--
-- Name: orden_compra_mvvcc; Type: TABLE; Schema: ordenescompra; Owner: postgres; Tablespace: 
--

CREATE TABLE orden_compra_mvvcc (
    fecha_orden date,
    nit_proveedor bigint NOT NULL,
    requisicion character varying,
    id_centrocostos integer,
    id_usuario integer NOT NULL,
    fecha_transaccion timestamp without time zone NOT NULL,
    condicion1 character varying,
    condicion2 character varying,
    condicion3 character varying,
    condicion4 character varying,
    cotizacion character varying,
    dto_comercial integer DEFAULT 0,
    id_itemccostos integer,
    cargoa_orden character varying,
    dto_financiero integer DEFAULT 0,
    total_orden bigint,
    iva double precision,
    estado boolean DEFAULT true NOT NULL,
    observacion character varying,
    consecutivo_orden_compra integer NOT NULL,
    condiciones character varying
);


ALTER TABLE ordenescompra.orden_compra_mvvcc OWNER TO postgres;

--
-- Name: orden_compra_mvvcc_consecutivo_orden_compra_seq; Type: SEQUENCE; Schema: ordenescompra; Owner: postgres
--

CREATE SEQUENCE orden_compra_mvvcc_consecutivo_orden_compra_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ordenescompra.orden_compra_mvvcc_consecutivo_orden_compra_seq OWNER TO postgres;

--
-- Name: orden_compra_mvvcc_consecutivo_orden_compra_seq; Type: SEQUENCE OWNED BY; Schema: ordenescompra; Owner: postgres
--

ALTER SEQUENCE orden_compra_mvvcc_consecutivo_orden_compra_seq OWNED BY orden_compra_mvvcc.consecutivo_orden_compra;


--
-- Name: ordencomprautd; Type: TABLE; Schema: ordenescompra; Owner: postgres; Tablespace: 
--

CREATE TABLE ordencomprautd (
    con_ccostos integer,
    id_proveedor bigint,
    id_usuario integer,
    id_director integer,
    id_itemccostos integer,
    condiciones character varying,
    cotizacion character varying,
    observaciones character varying,
    estado boolean DEFAULT true,
    anulado boolean DEFAULT false,
    fecha_oc timestamp without time zone,
    id_oc integer NOT NULL,
    fecha_mod timestamp without time zone
);


ALTER TABLE ordenescompra.ordencomprautd OWNER TO postgres;

--
-- Name: TABLE ordencomprautd; Type: COMMENT; Schema: ordenescompra; Owner: postgres
--

COMMENT ON TABLE ordencomprautd IS 'Nueva Tabla Para Ordenes de Compra';


--
-- Name: COLUMN ordencomprautd.con_ccostos; Type: COMMENT; Schema: ordenescompra; Owner: postgres
--

COMMENT ON COLUMN ordencomprautd.con_ccostos IS 'Consecutivo que se maneja para cada ccostos';


--
-- Name: COLUMN ordencomprautd.estado; Type: COMMENT; Schema: ordenescompra; Owner: postgres
--

COMMENT ON COLUMN ordencomprautd.estado IS 'True=Activo False=Cerrado';


--
-- Name: ordencomprautd_id_oc_seq; Type: SEQUENCE; Schema: ordenescompra; Owner: postgres
--

CREATE SEQUENCE ordencomprautd_id_oc_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ordenescompra.ordencomprautd_id_oc_seq OWNER TO postgres;

--
-- Name: ordencomprautd_id_oc_seq; Type: SEQUENCE OWNED BY; Schema: ordenescompra; Owner: postgres
--

ALTER SEQUENCE ordencomprautd_id_oc_seq OWNED BY ordencomprautd.id_oc;


SET search_path = proveedores, pg_catalog;

--
-- Name: proveedor; Type: TABLE; Schema: proveedores; Owner: postgres; Tablespace: 
--

CREATE TABLE proveedor (
    nit_proveedor bigint NOT NULL,
    prove_razon_social character varying NOT NULL,
    prove_direccion character varying,
    prove_telefono1 character varying,
    prove_telefono2 character varying,
    prove_celular1 character varying,
    prove_celular2 character varying,
    prove_fax character varying,
    prove_contacto1 character varying,
    prove_contacto2 character varying,
    id_ciudad integer NOT NULL,
    razon_comercial character varying
);


ALTER TABLE proveedores.proveedor OWNER TO postgres;

--
-- Name: proveedor_prove_celular1_seq; Type: SEQUENCE; Schema: proveedores; Owner: postgres
--

CREATE SEQUENCE proveedor_prove_celular1_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE proveedores.proveedor_prove_celular1_seq OWNER TO postgres;

--
-- Name: proveedor_prove_celular1_seq; Type: SEQUENCE OWNED BY; Schema: proveedores; Owner: postgres
--

ALTER SEQUENCE proveedor_prove_celular1_seq OWNED BY proveedor.prove_celular1;


--
-- Name: proveedor_prove_celular2_seq; Type: SEQUENCE; Schema: proveedores; Owner: postgres
--

CREATE SEQUENCE proveedor_prove_celular2_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE proveedores.proveedor_prove_celular2_seq OWNER TO postgres;

--
-- Name: proveedor_prove_celular2_seq; Type: SEQUENCE OWNED BY; Schema: proveedores; Owner: postgres
--

ALTER SEQUENCE proveedor_prove_celular2_seq OWNED BY proveedor.prove_celular2;


--
-- Name: proveedor_prove_telefono1_seq; Type: SEQUENCE; Schema: proveedores; Owner: postgres
--

CREATE SEQUENCE proveedor_prove_telefono1_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE proveedores.proveedor_prove_telefono1_seq OWNER TO postgres;

--
-- Name: proveedor_prove_telefono1_seq; Type: SEQUENCE OWNED BY; Schema: proveedores; Owner: postgres
--

ALTER SEQUENCE proveedor_prove_telefono1_seq OWNED BY proveedor.prove_telefono1;


--
-- Name: proveedor_prove_telefono2_seq; Type: SEQUENCE; Schema: proveedores; Owner: postgres
--

CREATE SEQUENCE proveedor_prove_telefono2_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE proveedores.proveedor_prove_telefono2_seq OWNER TO postgres;

--
-- Name: proveedor_prove_telefono2_seq; Type: SEQUENCE OWNED BY; Schema: proveedores; Owner: postgres
--

ALTER SEQUENCE proveedor_prove_telefono2_seq OWNED BY proveedor.prove_telefono2;


SET search_path = public, pg_catalog;

--
-- Name: adjuntos_id_adjuntos_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE adjuntos_id_adjuntos_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adjuntos_id_adjuntos_seq OWNER TO postgres;

--
-- Name: ciudad; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE ciudad (
    id_ciudad integer NOT NULL,
    nombre_ciudad character varying NOT NULL
);


ALTER TABLE public.ciudad OWNER TO postgres;

--
-- Name: ciudad_id_centroCostos_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "ciudad_id_centroCostos_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ciudad_id_centroCostos_seq" OWNER TO postgres;

--
-- Name: ciudad_id_centroCostos_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "ciudad_id_centroCostos_seq" OWNED BY ciudad.id_ciudad;


--
-- Name: detalle_facturascxp_id_detalle_infacturascxp_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE detalle_facturascxp_id_detalle_infacturascxp_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.detalle_facturascxp_id_detalle_infacturascxp_seq OWNER TO postgres;

--
-- Name: estado_id_estado_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE estado_id_estado_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estado_id_estado_seq OWNER TO postgres;

--
-- Name: facturas_id_factura_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE facturas_id_factura_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.facturas_id_factura_seq OWNER TO postgres;

--
-- Name: infacturascxp_id_infacturascxp_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE infacturascxp_id_infacturascxp_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.infacturascxp_id_infacturascxp_seq OWNER TO postgres;

--
-- Name: iva_id_iva_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE iva_id_iva_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.iva_id_iva_seq OWNER TO postgres;

--
-- Name: mes_id_mes_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE mes_id_mes_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mes_id_mes_seq OWNER TO postgres;

--
-- Name: retcree_id_retcree_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE retcree_id_retcree_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.retcree_id_retcree_seq OWNER TO postgres;

--
-- Name: retefuente_id_retefuente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE retefuente_id_retefuente_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.retefuente_id_retefuente_seq OWNER TO postgres;

--
-- Name: reteica_id_reteica_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE reteica_id_reteica_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reteica_id_reteica_seq OWNER TO postgres;

--
-- Name: tipos_iva; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tipos_iva (
    id_iva integer NOT NULL,
    iva_descripcion character varying NOT NULL
);


ALTER TABLE public.tipos_iva OWNER TO postgres;

--
-- Name: tipos_iva_id_iva_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tipos_iva_id_iva_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipos_iva_id_iva_seq OWNER TO postgres;

--
-- Name: tipos_iva_id_iva_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipos_iva_id_iva_seq OWNED BY tipos_iva.id_iva;


--
-- Name: unidad_medida; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE unidad_medida (
    id_unidad integer NOT NULL,
    unidad character varying NOT NULL
);


ALTER TABLE public.unidad_medida OWNER TO postgres;

--
-- Name: unidad_id_unidad_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE unidad_id_unidad_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.unidad_id_unidad_seq OWNER TO postgres;

--
-- Name: unidad_id_unidad_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE unidad_id_unidad_seq OWNED BY unidad_medida.id_unidad;


SET search_path = requisicion, pg_catalog;

--
-- Name: detallerequisicion; Type: TABLE; Schema: requisicion; Owner: postgres; Tablespace: 
--

CREATE TABLE detallerequisicion (
    requisicion_idreq integer NOT NULL,
    item_det_req integer NOT NULL,
    cant_det_req double precision NOT NULL,
    detalle_det_req character varying NOT NULL,
    obs_det_req character varying,
    alm_det_req character varying,
    caja_det_req character varying,
    fac_det_req character varying,
    prov_det_req character varying,
    uni_det_req integer NOT NULL,
    id_dr integer NOT NULL
);


ALTER TABLE requisicion.detallerequisicion OWNER TO postgres;

--
-- Name: detallerequisicion_id_dr_seq; Type: SEQUENCE; Schema: requisicion; Owner: postgres
--

CREATE SEQUENCE detallerequisicion_id_dr_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE requisicion.detallerequisicion_id_dr_seq OWNER TO postgres;

--
-- Name: detallerequisicion_id_dr_seq; Type: SEQUENCE OWNED BY; Schema: requisicion; Owner: postgres
--

ALTER SEQUENCE detallerequisicion_id_dr_seq OWNED BY detallerequisicion.id_dr;


--
-- Name: requisicion; Type: TABLE; Schema: requisicion; Owner: postgres; Tablespace: 
--

CREATE TABLE requisicion (
    idreq integer NOT NULL,
    fecha_req date,
    serial_req character varying,
    id_item_ccostos integer,
    direcmant_iddirecmant integer,
    cargoa_req character varying,
    usuarios_idusuario integer,
    obs_gen character varying
);


ALTER TABLE requisicion.requisicion OWNER TO postgres;

--
-- Name: requisicion_idreq_seq; Type: SEQUENCE; Schema: requisicion; Owner: postgres
--

CREATE SEQUENCE requisicion_idreq_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE requisicion.requisicion_idreq_seq OWNER TO postgres;

--
-- Name: requisicion_idreq_seq; Type: SEQUENCE OWNED BY; Schema: requisicion; Owner: postgres
--

ALTER SEQUENCE requisicion_idreq_seq OWNED BY requisicion.idreq;


SET search_path = requisicionlb, pg_catalog;

--
-- Name: detallereqlb; Type: TABLE; Schema: requisicionlb; Owner: postgres; Tablespace: 
--

CREATE TABLE detallereqlb (
    requisicion_idreq integer NOT NULL,
    item_det_req integer NOT NULL,
    cant_det_req double precision NOT NULL,
    detalle_det_req character varying NOT NULL,
    obs_det_req character varying,
    alm_det_req character varying,
    caja_det_req character varying,
    fac_det_req character varying,
    prov_det_req character varying,
    uni_det_req integer NOT NULL,
    id_dr integer DEFAULT nextval('requisicion.detallerequisicion_id_dr_seq'::regclass) NOT NULL
);


ALTER TABLE requisicionlb.detallereqlb OWNER TO postgres;

--
-- Name: requisicionlb; Type: TABLE; Schema: requisicionlb; Owner: postgres; Tablespace: 
--

CREATE TABLE requisicionlb (
    idreq integer NOT NULL,
    fecha_req date,
    serial_req character varying,
    id_item_ccostos integer,
    direcmant_iddirecmant integer,
    cargoa_req character varying,
    usuarios_idusuario integer,
    obs_gen character varying
);


ALTER TABLE requisicionlb.requisicionlb OWNER TO postgres;

--
-- Name: requisicionlb_idreq_seq; Type: SEQUENCE; Schema: requisicionlb; Owner: postgres
--

CREATE SEQUENCE requisicionlb_idreq_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE requisicionlb.requisicionlb_idreq_seq OWNER TO postgres;

--
-- Name: requisicionlb_idreq_seq; Type: SEQUENCE OWNED BY; Schema: requisicionlb; Owner: postgres
--

ALTER SEQUENCE requisicionlb_idreq_seq OWNED BY requisicionlb.idreq;


SET search_path = usuariosistema, pg_catalog;

--
-- Name: nivelacceso; Type: TABLE; Schema: usuariosistema; Owner: postgres; Tablespace: 
--

CREATE TABLE nivelacceso (
    idnivelacceso integer NOT NULL,
    nombre_nivel character varying
);


ALTER TABLE usuariosistema.nivelacceso OWNER TO postgres;

--
-- Name: nivel_acceso_id_nivel_acceso_seq; Type: SEQUENCE; Schema: usuariosistema; Owner: postgres
--

CREATE SEQUENCE nivel_acceso_id_nivel_acceso_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE usuariosistema.nivel_acceso_id_nivel_acceso_seq OWNER TO postgres;

--
-- Name: nivel_acceso_id_nivel_acceso_seq; Type: SEQUENCE OWNED BY; Schema: usuariosistema; Owner: postgres
--

ALTER SEQUENCE nivel_acceso_id_nivel_acceso_seq OWNED BY nivelacceso.idnivelacceso;


--
-- Name: usuario; Type: TABLE; Schema: usuariosistema; Owner: postgres; Tablespace: 
--

CREATE TABLE usuario (
    cedula integer NOT NULL,
    nombre_usuario character varying NOT NULL,
    apellido_usuario character varying NOT NULL,
    usuario character varying NOT NULL,
    claveusuario character varying NOT NULL,
    id integer NOT NULL,
    id_level integer DEFAULT 5,
    activo boolean DEFAULT true
);


ALTER TABLE usuariosistema.usuario OWNER TO postgres;

--
-- Name: usuario_id_seq; Type: SEQUENCE; Schema: usuariosistema; Owner: postgres
--

CREATE SEQUENCE usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE usuariosistema.usuario_id_seq OWNER TO postgres;

--
-- Name: usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: usuariosistema; Owner: postgres
--

ALTER SEQUENCE usuario_id_seq OWNED BY usuario.id;


--
-- Name: usuariosreq; Type: TABLE; Schema: usuariosistema; Owner: postgres; Tablespace: 
--

CREATE TABLE usuariosreq (
    idusuario bigint NOT NULL,
    nombre_usu character varying,
    apellido_usu character varying,
    usuarioreq character varying NOT NULL,
    clave_usu character varying NOT NULL,
    nivelacceso_idnivelacceso integer
);


ALTER TABLE usuariosistema.usuariosreq OWNER TO postgres;

--
-- Name: usuariosreq_idusuario_seq; Type: SEQUENCE; Schema: usuariosistema; Owner: postgres
--

CREATE SEQUENCE usuariosreq_idusuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE usuariosistema.usuariosreq_idusuario_seq OWNER TO postgres;

--
-- Name: usuariosreq_idusuario_seq; Type: SEQUENCE OWNED BY; Schema: usuariosistema; Owner: postgres
--

ALTER SEQUENCE usuariosreq_idusuario_seq OWNED BY usuariosreq.idusuario;


SET search_path = utdvvcc, pg_catalog;

--
-- Name: cargo; Type: TABLE; Schema: utdvvcc; Owner: postgres; Tablespace: 
--

CREATE TABLE cargo (
    id_cargo integer NOT NULL,
    descripcion character varying
);


ALTER TABLE utdvvcc.cargo OWNER TO postgres;

--
-- Name: TABLE cargo; Type: COMMENT; Schema: utdvvcc; Owner: postgres
--

COMMENT ON TABLE cargo IS 'Cargo de Cada jefe de la dependencia';


--
-- Name: cargo_id_cargo_seq; Type: SEQUENCE; Schema: utdvvcc; Owner: postgres
--

CREATE SEQUENCE cargo_id_cargo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE utdvvcc.cargo_id_cargo_seq OWNER TO postgres;

--
-- Name: cargo_id_cargo_seq; Type: SEQUENCE OWNED BY; Schema: utdvvcc; Owner: postgres
--

ALTER SEQUENCE cargo_id_cargo_seq OWNED BY cargo.id_cargo;


--
-- Name: centrocostos; Type: TABLE; Schema: utdvvcc; Owner: postgres; Tablespace: 
--

CREATE TABLE centrocostos (
    nombre_centro_costos character varying NOT NULL,
    sigla_ccostos character varying,
    id_centrocostos integer NOT NULL,
    estado boolean DEFAULT true,
    consecutivo integer DEFAULT 0
);


ALTER TABLE utdvvcc.centrocostos OWNER TO postgres;

--
-- Name: COLUMN centrocostos.consecutivo; Type: COMMENT; Schema: utdvvcc; Owner: postgres
--

COMMENT ON COLUMN centrocostos.consecutivo IS 'Consecutivo Asignado por orden de Compra UTD';


--
-- Name: centroCostos_nombre_centro_costos_seq; Type: SEQUENCE; Schema: utdvvcc; Owner: postgres
--

CREATE SEQUENCE "centroCostos_nombre_centro_costos_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE utdvvcc."centroCostos_nombre_centro_costos_seq" OWNER TO postgres;

--
-- Name: centroCostos_nombre_centro_costos_seq; Type: SEQUENCE OWNED BY; Schema: utdvvcc; Owner: postgres
--

ALTER SEQUENCE "centroCostos_nombre_centro_costos_seq" OWNED BY centrocostos.nombre_centro_costos;


--
-- Name: centrocostos_id_centrocostos_seq; Type: SEQUENCE; Schema: utdvvcc; Owner: postgres
--

CREATE SEQUENCE centrocostos_id_centrocostos_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE utdvvcc.centrocostos_id_centrocostos_seq OWNER TO postgres;

--
-- Name: centrocostos_id_centrocostos_seq; Type: SEQUENCE OWNED BY; Schema: utdvvcc; Owner: postgres
--

ALTER SEQUENCE centrocostos_id_centrocostos_seq OWNED BY centrocostos.id_centrocostos;


--
-- Name: consecutivos; Type: TABLE; Schema: utdvvcc; Owner: postgres; Tablespace: 
--

CREATE TABLE consecutivos (
    id_consecutivo integer NOT NULL,
    consecutivo integer,
    id_centrocostos_consecutivo integer
);


ALTER TABLE utdvvcc.consecutivos OWNER TO postgres;

--
-- Name: consecutivos_id_consecutivo_seq; Type: SEQUENCE; Schema: utdvvcc; Owner: postgres
--

CREATE SEQUENCE consecutivos_id_consecutivo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE utdvvcc.consecutivos_id_consecutivo_seq OWNER TO postgres;

--
-- Name: consecutivos_id_consecutivo_seq; Type: SEQUENCE OWNED BY; Schema: utdvvcc; Owner: postgres
--

ALTER SEQUENCE consecutivos_id_consecutivo_seq OWNED BY consecutivos.id_consecutivo;


--
-- Name: direcmant; Type: TABLE; Schema: utdvvcc; Owner: postgres; Tablespace: 
--

CREATE TABLE direcmant (
    iddirecmant integer NOT NULL,
    nombre_dirmant character varying NOT NULL,
    id_cargo integer
);


ALTER TABLE utdvvcc.direcmant OWNER TO postgres;

--
-- Name: direcmant_iddirecmant_seq; Type: SEQUENCE; Schema: utdvvcc; Owner: postgres
--

CREATE SEQUENCE direcmant_iddirecmant_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE utdvvcc.direcmant_iddirecmant_seq OWNER TO postgres;

--
-- Name: direcmant_iddirecmant_seq; Type: SEQUENCE OWNED BY; Schema: utdvvcc; Owner: postgres
--

ALTER SEQUENCE direcmant_iddirecmant_seq OWNED BY direcmant.iddirecmant;


--
-- Name: itemccostos; Type: TABLE; Schema: utdvvcc; Owner: postgres; Tablespace: 
--

CREATE TABLE itemccostos (
    id_item_ccostos integer NOT NULL,
    nombre_item_ccostos character varying,
    id_centrocostos integer
);


ALTER TABLE utdvvcc.itemccostos OWNER TO postgres;

--
-- Name: item_ccostos_id_item_ccostos_seq; Type: SEQUENCE; Schema: utdvvcc; Owner: postgres
--

CREATE SEQUENCE item_ccostos_id_item_ccostos_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE utdvvcc.item_ccostos_id_item_ccostos_seq OWNER TO postgres;

--
-- Name: item_ccostos_id_item_ccostos_seq; Type: SEQUENCE OWNED BY; Schema: utdvvcc; Owner: postgres
--

ALTER SEQUENCE item_ccostos_id_item_ccostos_seq OWNED BY itemccostos.id_item_ccostos;


SET search_path = civsas, pg_catalog;

--
-- Name: id_ccostos; Type: DEFAULT; Schema: civsas; Owner: postgres
--

ALTER TABLE ONLY centro_costos ALTER COLUMN id_ccostos SET DEFAULT nextval('centro_costos_id_ccostos_seq'::regclass);


--
-- Name: id_consecutivo; Type: DEFAULT; Schema: civsas; Owner: postgres
--

ALTER TABLE ONLY consecutivos ALTER COLUMN id_consecutivo SET DEFAULT nextval('consecutivos_id_consecutivo_seq'::regclass);


--
-- Name: id_item_ccostos_civsas; Type: DEFAULT; Schema: civsas; Owner: postgres
--

ALTER TABLE ONLY item_ccostos ALTER COLUMN id_item_ccostos_civsas SET DEFAULT nextval('item_ccostos_id_item_ccostos_civsas_seq'::regclass);


SET search_path = clb, pg_catalog;

--
-- Name: id_consecutivo; Type: DEFAULT; Schema: clb; Owner: postgres
--

ALTER TABLE ONLY consecutivos ALTER COLUMN id_consecutivo SET DEFAULT nextval('consecutivos_id_consecutivo_seq'::regclass);


SET search_path = cotizaciones, pg_catalog;

--
-- Name: consecutivo_cotizacion; Type: DEFAULT; Schema: cotizaciones; Owner: postgres
--

ALTER TABLE ONLY cotizacion ALTER COLUMN consecutivo_cotizacion SET DEFAULT nextval('cotizacion_consecutivo_cotizacion_seq'::regclass);


--
-- Name: consecutivo_cotizacion; Type: DEFAULT; Schema: cotizaciones; Owner: postgres
--

ALTER TABLE ONLY cotizacion_cas ALTER COLUMN consecutivo_cotizacion SET DEFAULT nextval('cotizacion_cas_consecutivo_cotizacion_seq'::regclass);


--
-- Name: consecutivo_cotizacion; Type: DEFAULT; Schema: cotizaciones; Owner: postgres
--

ALTER TABLE ONLY cotizacion_mvvcc ALTER COLUMN consecutivo_cotizacion SET DEFAULT nextval('cotizacion_mvvcc_consecutivo_cotizacion_seq'::regclass);


--
-- Name: id_detalle_cotizacion; Type: DEFAULT; Schema: cotizaciones; Owner: postgres
--

ALTER TABLE ONLY detalle_cotizacion ALTER COLUMN id_detalle_cotizacion SET DEFAULT nextval('detalle_cotizacion_id_detalle_cotizacion_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: cotizaciones; Owner: postgres
--

ALTER TABLE ONLY img_cotizacion_utd ALTER COLUMN id SET DEFAULT nextval('img_cotizacion_utd_id_seq'::regclass);


SET search_path = cxpproveedores, pg_catalog;

--
-- Name: id_adjuntos; Type: DEFAULT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY adjuntos ALTER COLUMN id_adjuntos SET DEFAULT nextval('adjuntos_id_adjuntos_seq1'::regclass);


--
-- Name: id_detalle_infacturascxp; Type: DEFAULT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp ALTER COLUMN id_detalle_infacturascxp SET DEFAULT nextval('detalle_facturascxp_id_detalle_infacturascxp_seq'::regclass);


--
-- Name: id_detalle_infacturascxp; Type: DEFAULT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_civ ALTER COLUMN id_detalle_infacturascxp SET DEFAULT nextval('detalle_facturascxp_civ_id_detalle_infacturascxp_seq'::regclass);


--
-- Name: id_detalle_infacturascxp; Type: DEFAULT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_clb ALTER COLUMN id_detalle_infacturascxp SET DEFAULT nextval('detalle_facturascxp_clb_id_detalle_infacturascxp_seq'::regclass);


--
-- Name: id_detalle_infacturascxp; Type: DEFAULT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_fid ALTER COLUMN id_detalle_infacturascxp SET DEFAULT nextval('detalle_facturascxp_fid_id_detalle_infacturascxp_seq'::regclass);


--
-- Name: id_estado; Type: DEFAULT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY estado ALTER COLUMN id_estado SET DEFAULT nextval('estado_id_estado_seq'::regclass);


--
-- Name: id_factura; Type: DEFAULT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY facturas ALTER COLUMN id_factura SET DEFAULT nextval('facturas_id_factura_seq'::regclass);


--
-- Name: id_infacturascxp; Type: DEFAULT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY infacturascxp ALTER COLUMN id_infacturascxp SET DEFAULT nextval('infacturascxp_id_infacturascxp_seq'::regclass);


--
-- Name: id_infacturascxp; Type: DEFAULT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY infacturascxp_civ ALTER COLUMN id_infacturascxp SET DEFAULT nextval('infacturascxp_civ_id_infacturascxp_seq'::regclass);


--
-- Name: id_infacturascxp; Type: DEFAULT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY infacturascxp_clb ALTER COLUMN id_infacturascxp SET DEFAULT nextval('infacturascxp_clb_id_infacturascxp_seq'::regclass);


--
-- Name: id_infacturascxp; Type: DEFAULT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY infacturascxp_fid ALTER COLUMN id_infacturascxp SET DEFAULT nextval('infacturascxp_fid_id_infacturascxp_seq'::regclass);


--
-- Name: id_iva; Type: DEFAULT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY iva ALTER COLUMN id_iva SET DEFAULT nextval('iva_id_iva_seq'::regclass);


--
-- Name: id_mes; Type: DEFAULT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY mes ALTER COLUMN id_mes SET DEFAULT nextval('mes_id_mes_seq'::regclass);


--
-- Name: id_retcree; Type: DEFAULT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY retcree ALTER COLUMN id_retcree SET DEFAULT nextval('retcree_id_retcree_seq'::regclass);


--
-- Name: id_retefuente; Type: DEFAULT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY retefuente ALTER COLUMN id_retefuente SET DEFAULT nextval('retefuente_id_retefuente_seq'::regclass);


--
-- Name: id_reteica; Type: DEFAULT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY reteica ALTER COLUMN id_reteica SET DEFAULT nextval('reteica_id_reteica_seq'::regclass);


--
-- Name: id_reteiva; Type: DEFAULT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY reteiva ALTER COLUMN id_reteiva SET DEFAULT nextval('reteiva_id_reteiva_seq'::regclass);


--
-- Name: id_year; Type: DEFAULT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY year ALTER COLUMN id_year SET DEFAULT nextval('year_id_year_seq'::regclass);


SET search_path = fideicomiso, pg_catalog;

--
-- Name: id_consecutivo; Type: DEFAULT; Schema: fideicomiso; Owner: postgres
--

ALTER TABLE ONLY consecutivos ALTER COLUMN id_consecutivo SET DEFAULT nextval('consecutivos_id_consecutivo_seq'::regclass);


SET search_path = listadopedidos, pg_catalog;

--
-- Name: id_dt; Type: DEFAULT; Schema: listadopedidos; Owner: postgres
--

ALTER TABLE ONLY detalle_pedido ALTER COLUMN id_dt SET DEFAULT nextval('detalle_pedido_id_dt_seq'::regclass);


--
-- Name: id_estado; Type: DEFAULT; Schema: listadopedidos; Owner: postgres
--

ALTER TABLE ONLY estado_pedido ALTER COLUMN id_estado SET DEFAULT nextval('estado_pedido_id_estado_seq'::regclass);


--
-- Name: id_pedido; Type: DEFAULT; Schema: listadopedidos; Owner: postgres
--

ALTER TABLE ONLY pedido ALTER COLUMN id_pedido SET DEFAULT nextval('pedido_id_pedido_seq'::regclass);


SET search_path = mvvcc, pg_catalog;

--
-- Name: id_ccostos; Type: DEFAULT; Schema: mvvcc; Owner: postgres
--

ALTER TABLE ONLY centro_costos ALTER COLUMN id_ccostos SET DEFAULT nextval('centro_costos_id_ccostos_seq'::regclass);


--
-- Name: id_item_ccostos_mvvcc; Type: DEFAULT; Schema: mvvcc; Owner: postgres
--

ALTER TABLE ONLY item_ccostos ALTER COLUMN id_item_ccostos_mvvcc SET DEFAULT nextval('id_item_ccostos_id_item_ccostos_mvvcc_seq'::regclass);


SET search_path = ordenescompra, pg_catalog;

--
-- Name: id_causado; Type: DEFAULT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY causados_oc ALTER COLUMN id_causado SET DEFAULT nextval('causados_oc_id_causado_seq'::regclass);


--
-- Name: id_det_oc; Type: DEFAULT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY det_oc_utd ALTER COLUMN id_det_oc SET DEFAULT nextval('det_oc_id_det_oc_seq'::regclass);


--
-- Name: id_detalle_orden_compra; Type: DEFAULT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY detalle_orden_civsas ALTER COLUMN id_detalle_orden_compra SET DEFAULT nextval('detalle_orden_civsas_id_detalle_orden_compra_seq'::regclass);


--
-- Name: id_detalle_orden_compra; Type: DEFAULT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY detalle_orden_compra ALTER COLUMN id_detalle_orden_compra SET DEFAULT nextval('detalle_orden_compra_id_detalle_orden_compra_seq'::regclass);


--
-- Name: id_detalle_orden; Type: DEFAULT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY detalle_orden_compra_mvvcc ALTER COLUMN id_detalle_orden SET DEFAULT nextval('detalle_orden_compra_mvvcc_id_detaller_orden_seq'::regclass);


--
-- Name: id_detalle_orden_compra; Type: DEFAULT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY dt_orden_clg ALTER COLUMN id_detalle_orden_compra SET DEFAULT nextval('dt_orden_clg_id_detalle_orden_compra_seq'::regclass);


--
-- Name: consecutivo_orden_compra; Type: DEFAULT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY orden_compra ALTER COLUMN consecutivo_orden_compra SET DEFAULT nextval('orden_compra_consecutivo_orden_compra_seq'::regclass);


--
-- Name: consecutivo_orden_compra; Type: DEFAULT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY orden_compra_civsas ALTER COLUMN consecutivo_orden_compra SET DEFAULT nextval('orden_compra_civsas_consecutivo_orden_compra_seq'::regclass);


--
-- Name: id_orden_compra; Type: DEFAULT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY orden_compra_clg ALTER COLUMN id_orden_compra SET DEFAULT nextval('orden_compra_clg_id_orden_compra_seq'::regclass);


--
-- Name: consecutivo_orden_compra; Type: DEFAULT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY orden_compra_css ALTER COLUMN consecutivo_orden_compra SET DEFAULT nextval('orden_compra_css_consecutivo_orden_compra_seq'::regclass);


--
-- Name: consecutivo_orden_compra; Type: DEFAULT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY orden_compra_mvvcc ALTER COLUMN consecutivo_orden_compra SET DEFAULT nextval('orden_compra_mvvcc_consecutivo_orden_compra_seq'::regclass);


--
-- Name: id_oc; Type: DEFAULT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY ordencomprautd ALTER COLUMN id_oc SET DEFAULT nextval('ordencomprautd_id_oc_seq'::regclass);


SET search_path = public, pg_catalog;

--
-- Name: id_ciudad; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ciudad ALTER COLUMN id_ciudad SET DEFAULT nextval('"ciudad_id_centroCostos_seq"'::regclass);


--
-- Name: id_iva; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipos_iva ALTER COLUMN id_iva SET DEFAULT nextval('tipos_iva_id_iva_seq'::regclass);


--
-- Name: id_unidad; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY unidad_medida ALTER COLUMN id_unidad SET DEFAULT nextval('unidad_id_unidad_seq'::regclass);


SET search_path = requisicion, pg_catalog;

--
-- Name: id_dr; Type: DEFAULT; Schema: requisicion; Owner: postgres
--

ALTER TABLE ONLY detallerequisicion ALTER COLUMN id_dr SET DEFAULT nextval('detallerequisicion_id_dr_seq'::regclass);


--
-- Name: idreq; Type: DEFAULT; Schema: requisicion; Owner: postgres
--

ALTER TABLE ONLY requisicion ALTER COLUMN idreq SET DEFAULT nextval('requisicion_idreq_seq'::regclass);


SET search_path = requisicionlb, pg_catalog;

--
-- Name: idreq; Type: DEFAULT; Schema: requisicionlb; Owner: postgres
--

ALTER TABLE ONLY requisicionlb ALTER COLUMN idreq SET DEFAULT nextval('requisicionlb_idreq_seq'::regclass);


SET search_path = usuariosistema, pg_catalog;

--
-- Name: id; Type: DEFAULT; Schema: usuariosistema; Owner: postgres
--

ALTER TABLE ONLY usuario ALTER COLUMN id SET DEFAULT nextval('usuario_id_seq'::regclass);


--
-- Name: idusuario; Type: DEFAULT; Schema: usuariosistema; Owner: postgres
--

ALTER TABLE ONLY usuariosreq ALTER COLUMN idusuario SET DEFAULT nextval('usuariosreq_idusuario_seq'::regclass);


SET search_path = utdvvcc, pg_catalog;

--
-- Name: id_cargo; Type: DEFAULT; Schema: utdvvcc; Owner: postgres
--

ALTER TABLE ONLY cargo ALTER COLUMN id_cargo SET DEFAULT nextval('cargo_id_cargo_seq'::regclass);


--
-- Name: id_centrocostos; Type: DEFAULT; Schema: utdvvcc; Owner: postgres
--

ALTER TABLE ONLY centrocostos ALTER COLUMN id_centrocostos SET DEFAULT nextval('centrocostos_id_centrocostos_seq'::regclass);


--
-- Name: id_consecutivo; Type: DEFAULT; Schema: utdvvcc; Owner: postgres
--

ALTER TABLE ONLY consecutivos ALTER COLUMN id_consecutivo SET DEFAULT nextval('consecutivos_id_consecutivo_seq'::regclass);


--
-- Name: iddirecmant; Type: DEFAULT; Schema: utdvvcc; Owner: postgres
--

ALTER TABLE ONLY direcmant ALTER COLUMN iddirecmant SET DEFAULT nextval('direcmant_iddirecmant_seq'::regclass);


--
-- Name: id_item_ccostos; Type: DEFAULT; Schema: utdvvcc; Owner: postgres
--

ALTER TABLE ONLY itemccostos ALTER COLUMN id_item_ccostos SET DEFAULT nextval('item_ccostos_id_item_ccostos_seq'::regclass);


SET search_path = civsas, pg_catalog;

--
-- Name: centro_costos_pkey; Type: CONSTRAINT; Schema: civsas; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY centro_costos
    ADD CONSTRAINT centro_costos_pkey PRIMARY KEY (id_ccostos);


--
-- Name: consecutivos_pkey; Type: CONSTRAINT; Schema: civsas; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY consecutivos
    ADD CONSTRAINT consecutivos_pkey PRIMARY KEY (id_consecutivo);


--
-- Name: item_ccostos_pkey; Type: CONSTRAINT; Schema: civsas; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY item_ccostos
    ADD CONSTRAINT item_ccostos_pkey PRIMARY KEY (id_item_ccostos_civsas);


SET search_path = clb, pg_catalog;

--
-- Name: consecutivos_pkey; Type: CONSTRAINT; Schema: clb; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY consecutivos
    ADD CONSTRAINT consecutivos_pkey PRIMARY KEY (id_consecutivo);


SET search_path = cotizaciones, pg_catalog;

--
-- Name: cotizacion_pkey; Type: CONSTRAINT; Schema: cotizaciones; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cotizacion
    ADD CONSTRAINT cotizacion_pkey PRIMARY KEY (consecutivo_cotizacion);


--
-- Name: detalle_cotizacion_cas_pkey; Type: CONSTRAINT; Schema: cotizaciones; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY detalle_cotizacion_cas
    ADD CONSTRAINT detalle_cotizacion_cas_pkey PRIMARY KEY (id_detalle_cotizacion);


--
-- Name: detalle_cotizacion_mvvcc_pkey; Type: CONSTRAINT; Schema: cotizaciones; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY detalle_cotizacion_mvvcc
    ADD CONSTRAINT detalle_cotizacion_mvvcc_pkey PRIMARY KEY (id_detalle_cotizacion);


--
-- Name: detalle_cotizacion_pkey; Type: CONSTRAINT; Schema: cotizaciones; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY detalle_cotizacion
    ADD CONSTRAINT detalle_cotizacion_pkey PRIMARY KEY (id_detalle_cotizacion);


--
-- Name: img_cotizacion_utd_pkey; Type: CONSTRAINT; Schema: cotizaciones; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY img_cotizacion_utd
    ADD CONSTRAINT img_cotizacion_utd_pkey PRIMARY KEY (id);


--
-- Name: pk_cotizacion; Type: CONSTRAINT; Schema: cotizaciones; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cotizacion_mvvcc
    ADD CONSTRAINT pk_cotizacion PRIMARY KEY (consecutivo_cotizacion);


--
-- Name: pk_idcotizacion; Type: CONSTRAINT; Schema: cotizaciones; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cotizacion_cas
    ADD CONSTRAINT pk_idcotizacion PRIMARY KEY (consecutivo_cotizacion);


SET search_path = css, pg_catalog;

--
-- Name: centro_costos_pkey; Type: CONSTRAINT; Schema: css; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY centro_costos
    ADD CONSTRAINT centro_costos_pkey PRIMARY KEY (idccostoscc);


--
-- Name: item_ccostos_cc_pkey; Type: CONSTRAINT; Schema: css; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY item_ccostos_cc
    ADD CONSTRAINT item_ccostos_cc_pkey PRIMARY KEY (id_item_ccostos_cc);


SET search_path = cxpproveedores, pg_catalog;

--
-- Name: adjuntos_pkey; Type: CONSTRAINT; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY adjuntos
    ADD CONSTRAINT adjuntos_pkey PRIMARY KEY (id_adjuntos);


--
-- Name: detalle_facturascxp_civ_pkey; Type: CONSTRAINT; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY detalle_facturascxp_civ
    ADD CONSTRAINT detalle_facturascxp_civ_pkey PRIMARY KEY (id_detalle_infacturascxp);


--
-- Name: detalle_facturascxp_clb_pkey; Type: CONSTRAINT; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY detalle_facturascxp_clb
    ADD CONSTRAINT detalle_facturascxp_clb_pkey PRIMARY KEY (id_detalle_infacturascxp);


--
-- Name: detalle_facturascxp_fid_pkey; Type: CONSTRAINT; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY detalle_facturascxp_fid
    ADD CONSTRAINT detalle_facturascxp_fid_pkey PRIMARY KEY (id_detalle_infacturascxp);


--
-- Name: detalle_facturascxp_pkey; Type: CONSTRAINT; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY detalle_facturascxp
    ADD CONSTRAINT detalle_facturascxp_pkey PRIMARY KEY (id_detalle_infacturascxp);


--
-- Name: estado_pkey; Type: CONSTRAINT; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY estado
    ADD CONSTRAINT estado_pkey PRIMARY KEY (id_estado);


--
-- Name: facturas_pkey; Type: CONSTRAINT; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY facturas
    ADD CONSTRAINT facturas_pkey PRIMARY KEY (id_factura);


--
-- Name: infacturascxp_civ_pkey; Type: CONSTRAINT; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY infacturascxp_civ
    ADD CONSTRAINT infacturascxp_civ_pkey PRIMARY KEY (id_infacturascxp);


--
-- Name: infacturascxp_clb_pkey; Type: CONSTRAINT; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY infacturascxp_clb
    ADD CONSTRAINT infacturascxp_clb_pkey PRIMARY KEY (id_infacturascxp);


--
-- Name: infacturascxp_fid_pkey; Type: CONSTRAINT; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY infacturascxp_fid
    ADD CONSTRAINT infacturascxp_fid_pkey PRIMARY KEY (id_infacturascxp);


--
-- Name: infacturascxp_pkey; Type: CONSTRAINT; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY infacturascxp
    ADD CONSTRAINT infacturascxp_pkey PRIMARY KEY (id_infacturascxp);


--
-- Name: iva_pkey; Type: CONSTRAINT; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY iva
    ADD CONSTRAINT iva_pkey PRIMARY KEY (id_iva);


--
-- Name: mes_pkey; Type: CONSTRAINT; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY mes
    ADD CONSTRAINT mes_pkey PRIMARY KEY (id_mes);


--
-- Name: retcree_pkey; Type: CONSTRAINT; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY retcree
    ADD CONSTRAINT retcree_pkey PRIMARY KEY (id_retcree);


--
-- Name: retefuente_pkey; Type: CONSTRAINT; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY retefuente
    ADD CONSTRAINT retefuente_pkey PRIMARY KEY (id_retefuente);


--
-- Name: reteica_pkey; Type: CONSTRAINT; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY reteica
    ADD CONSTRAINT reteica_pkey PRIMARY KEY (id_reteica);


--
-- Name: reteiva_pkey; Type: CONSTRAINT; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY reteiva
    ADD CONSTRAINT reteiva_pkey PRIMARY KEY (id_reteiva);


--
-- Name: year_pkey; Type: CONSTRAINT; Schema: cxpproveedores; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY year
    ADD CONSTRAINT year_pkey PRIMARY KEY (id_year);


SET search_path = empresas, pg_catalog;

--
-- Name: pk_nit_empresa; Type: CONSTRAINT; Schema: empresas; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY empresa
    ADD CONSTRAINT pk_nit_empresa PRIMARY KEY (nit_empresa);


SET search_path = fideicomiso, pg_catalog;

--
-- Name: consecutivos_pkey; Type: CONSTRAINT; Schema: fideicomiso; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY consecutivos
    ADD CONSTRAINT consecutivos_pkey PRIMARY KEY (id_consecutivo);


SET search_path = listadopedidos, pg_catalog;

--
-- Name: detalle_pedido_pkey; Type: CONSTRAINT; Schema: listadopedidos; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY detalle_pedido
    ADD CONSTRAINT detalle_pedido_pkey PRIMARY KEY (id_dt);


--
-- Name: estado_pedido_pkey; Type: CONSTRAINT; Schema: listadopedidos; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY estado_pedido
    ADD CONSTRAINT estado_pedido_pkey PRIMARY KEY (id_estado);


--
-- Name: pedido_pkey; Type: CONSTRAINT; Schema: listadopedidos; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pedido
    ADD CONSTRAINT pedido_pkey PRIMARY KEY (id_pedido);


SET search_path = mvvcc, pg_catalog;

--
-- Name: id_item_ccostos_pkey; Type: CONSTRAINT; Schema: mvvcc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY item_ccostos
    ADD CONSTRAINT id_item_ccostos_pkey PRIMARY KEY (id_item_ccostos_mvvcc);


--
-- Name: pk_ccostos_mvvcc; Type: CONSTRAINT; Schema: mvvcc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY centro_costos
    ADD CONSTRAINT pk_ccostos_mvvcc PRIMARY KEY (id_ccostos);


SET search_path = ordenescompra, pg_catalog;

--
-- Name: causados_oc_pkey; Type: CONSTRAINT; Schema: ordenescompra; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY causados_oc
    ADD CONSTRAINT causados_oc_pkey PRIMARY KEY (id_causado);


--
-- Name: det_oc_pkey; Type: CONSTRAINT; Schema: ordenescompra; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY det_oc_utd
    ADD CONSTRAINT det_oc_pkey PRIMARY KEY (id_det_oc);


--
-- Name: detalle_orden_compra_css_pkey; Type: CONSTRAINT; Schema: ordenescompra; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY detalle_orden_compra_css
    ADD CONSTRAINT detalle_orden_compra_css_pkey PRIMARY KEY (id_detalle_orden_compra);


--
-- Name: fk_orden; Type: CONSTRAINT; Schema: ordenescompra; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY dt_orden_clg
    ADD CONSTRAINT fk_orden PRIMARY KEY (id_detalle_orden_compra);


--
-- Name: id_detalle_orden; Type: CONSTRAINT; Schema: ordenescompra; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY detalle_orden_compra
    ADD CONSTRAINT id_detalle_orden PRIMARY KEY (id_detalle_orden_compra);


--
-- Name: pk_consecutivo_orden; Type: CONSTRAINT; Schema: ordenescompra; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY orden_compra
    ADD CONSTRAINT pk_consecutivo_orden PRIMARY KEY (consecutivo_orden_compra);


--
-- Name: pk_consecutivo_orden_css; Type: CONSTRAINT; Schema: ordenescompra; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY orden_compra_css
    ADD CONSTRAINT pk_consecutivo_orden_css PRIMARY KEY (consecutivo_orden_compra);


--
-- Name: pk_consecutivo_orden_mvvcc; Type: CONSTRAINT; Schema: ordenescompra; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY orden_compra_mvvcc
    ADD CONSTRAINT pk_consecutivo_orden_mvvcc PRIMARY KEY (consecutivo_orden_compra);


--
-- Name: pk_detalle; Type: CONSTRAINT; Schema: ordenescompra; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY detalle_orden_civsas
    ADD CONSTRAINT pk_detalle PRIMARY KEY (id_detalle_orden_compra);


--
-- Name: pk_id_detalle_orden; Type: CONSTRAINT; Schema: ordenescompra; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY detalle_orden_compra_mvvcc
    ADD CONSTRAINT pk_id_detalle_orden PRIMARY KEY (id_detalle_orden);


--
-- Name: pk_id_oc; Type: CONSTRAINT; Schema: ordenescompra; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ordencomprautd
    ADD CONSTRAINT pk_id_oc PRIMARY KEY (id_oc);


--
-- Name: pk_id_orden; Type: CONSTRAINT; Schema: ordenescompra; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY orden_compra_clg
    ADD CONSTRAINT pk_id_orden PRIMARY KEY (id_orden_compra);


--
-- Name: pk_orden; Type: CONSTRAINT; Schema: ordenescompra; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY orden_compra_civsas
    ADD CONSTRAINT pk_orden PRIMARY KEY (consecutivo_orden_compra);


SET search_path = proveedores, pg_catalog;

--
-- Name: pk_nit_proveedor; Type: CONSTRAINT; Schema: proveedores; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY proveedor
    ADD CONSTRAINT pk_nit_proveedor PRIMARY KEY (nit_proveedor);


SET search_path = public, pg_catalog;

--
-- Name: pk_id_ciudad; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ciudad
    ADD CONSTRAINT pk_id_ciudad PRIMARY KEY (id_ciudad);


--
-- Name: pk_id_unidad; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY unidad_medida
    ADD CONSTRAINT pk_id_unidad PRIMARY KEY (id_unidad);


--
-- Name: tipos_iva_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tipos_iva
    ADD CONSTRAINT tipos_iva_pkey PRIMARY KEY (id_iva);


SET search_path = requisicion, pg_catalog;

--
-- Name: pk_id_detalle_requisicion; Type: CONSTRAINT; Schema: requisicion; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY detallerequisicion
    ADD CONSTRAINT pk_id_detalle_requisicion PRIMARY KEY (id_dr);


--
-- Name: requisicion_pkey; Type: CONSTRAINT; Schema: requisicion; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY requisicion
    ADD CONSTRAINT requisicion_pkey PRIMARY KEY (idreq);


SET search_path = requisicionlb, pg_catalog;

--
-- Name: detallereqlb_pkey; Type: CONSTRAINT; Schema: requisicionlb; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY detallereqlb
    ADD CONSTRAINT detallereqlb_pkey PRIMARY KEY (id_dr);


--
-- Name: requisicionlb_pkey; Type: CONSTRAINT; Schema: requisicionlb; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY requisicionlb
    ADD CONSTRAINT requisicionlb_pkey PRIMARY KEY (idreq);


SET search_path = usuariosistema, pg_catalog;

--
-- Name: fk_id; Type: CONSTRAINT; Schema: usuariosistema; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT fk_id UNIQUE (id);


--
-- Name: pk_cedula_usuario; Type: CONSTRAINT; Schema: usuariosistema; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT pk_cedula_usuario PRIMARY KEY (cedula);


--
-- Name: pk_id_nivel_acceso; Type: CONSTRAINT; Schema: usuariosistema; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY nivelacceso
    ADD CONSTRAINT pk_id_nivel_acceso PRIMARY KEY (idnivelacceso);


--
-- Name: usuariosreq_pkey; Type: CONSTRAINT; Schema: usuariosistema; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuariosreq
    ADD CONSTRAINT usuariosreq_pkey PRIMARY KEY (idusuario);


--
-- Name: usuariosreq_usuarioreq_key; Type: CONSTRAINT; Schema: usuariosistema; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuariosreq
    ADD CONSTRAINT usuariosreq_usuarioreq_key UNIQUE (usuarioreq);


SET search_path = utdvvcc, pg_catalog;

--
-- Name: cargo_pkey; Type: CONSTRAINT; Schema: utdvvcc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cargo
    ADD CONSTRAINT cargo_pkey PRIMARY KEY (id_cargo);


--
-- Name: consecutivos_pkey; Type: CONSTRAINT; Schema: utdvvcc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY consecutivos
    ADD CONSTRAINT consecutivos_pkey PRIMARY KEY (id_consecutivo);


--
-- Name: direcmant_nombre_dirmant_key; Type: CONSTRAINT; Schema: utdvvcc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY direcmant
    ADD CONSTRAINT direcmant_nombre_dirmant_key UNIQUE (nombre_dirmant);


--
-- Name: direcmant_pkey; Type: CONSTRAINT; Schema: utdvvcc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY direcmant
    ADD CONSTRAINT direcmant_pkey PRIMARY KEY (iddirecmant);


--
-- Name: pk_ccostos; Type: CONSTRAINT; Schema: utdvvcc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY centrocostos
    ADD CONSTRAINT pk_ccostos PRIMARY KEY (id_centrocostos);


--
-- Name: pk_itemccostos; Type: CONSTRAINT; Schema: utdvvcc; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY itemccostos
    ADD CONSTRAINT pk_itemccostos PRIMARY KEY (id_item_ccostos);


SET search_path = civsas, pg_catalog;

--
-- Name: consecutivos_id_ccostos_consecutivo_fkey; Type: FK CONSTRAINT; Schema: civsas; Owner: postgres
--

ALTER TABLE ONLY consecutivos
    ADD CONSTRAINT consecutivos_id_ccostos_consecutivo_fkey FOREIGN KEY (id_ccostos_consecutivo) REFERENCES centro_costos(id_ccostos);


--
-- Name: fk_id_ccostos; Type: FK CONSTRAINT; Schema: civsas; Owner: postgres
--

ALTER TABLE ONLY item_ccostos
    ADD CONSTRAINT fk_id_ccostos FOREIGN KEY (id_ccostos_civsas) REFERENCES centro_costos(id_ccostos);


SET search_path = clb, pg_catalog;

--
-- Name: consecutivos_id_centrocostos_consecutivo_fkey; Type: FK CONSTRAINT; Schema: clb; Owner: postgres
--

ALTER TABLE ONLY consecutivos
    ADD CONSTRAINT consecutivos_id_centrocostos_consecutivo_fkey FOREIGN KEY (id_centrocostos_consecutivo) REFERENCES utdvvcc.centrocostos(id_centrocostos);


SET search_path = cotizaciones, pg_catalog;

--
-- Name: fk_ccostos; Type: FK CONSTRAINT; Schema: cotizaciones; Owner: postgres
--

ALTER TABLE ONLY cotizacion
    ADD CONSTRAINT fk_ccostos FOREIGN KEY (centro_costos) REFERENCES utdvvcc.centrocostos(id_centrocostos);


--
-- Name: fk_cotizacion; Type: FK CONSTRAINT; Schema: cotizaciones; Owner: postgres
--

ALTER TABLE ONLY detalle_cotizacion
    ADD CONSTRAINT fk_cotizacion FOREIGN KEY (consecutivo_cotizacion) REFERENCES cotizacion(consecutivo_cotizacion);


--
-- Name: fk_cotizacion; Type: FK CONSTRAINT; Schema: cotizaciones; Owner: postgres
--

ALTER TABLE ONLY detalle_cotizacion_mvvcc
    ADD CONSTRAINT fk_cotizacion FOREIGN KEY (consecutivo_cotizacion) REFERENCES cotizacion_mvvcc(consecutivo_cotizacion);


--
-- Name: fk_id_ccostos_mvvcc; Type: FK CONSTRAINT; Schema: cotizaciones; Owner: postgres
--

ALTER TABLE ONLY cotizacion_mvvcc
    ADD CONSTRAINT fk_id_ccostos_mvvcc FOREIGN KEY (centro_costos) REFERENCES mvvcc.centro_costos(id_ccostos);


--
-- Name: fk_id_cotizacion; Type: FK CONSTRAINT; Schema: cotizaciones; Owner: postgres
--

ALTER TABLE ONLY img_cotizacion_utd
    ADD CONSTRAINT fk_id_cotizacion FOREIGN KEY (id_cot_utd) REFERENCES cotizacion(consecutivo_cotizacion);


--
-- Name: fk_id_item_ccostos_mvvcc; Type: FK CONSTRAINT; Schema: cotizaciones; Owner: postgres
--

ALTER TABLE ONLY cotizacion_mvvcc
    ADD CONSTRAINT fk_id_item_ccostos_mvvcc FOREIGN KEY (item_ccostos) REFERENCES mvvcc.item_ccostos(id_item_ccostos_mvvcc);


--
-- Name: fk_id_unidad; Type: FK CONSTRAINT; Schema: cotizaciones; Owner: postgres
--

ALTER TABLE ONLY detalle_cotizacion
    ADD CONSTRAINT fk_id_unidad FOREIGN KEY (id_unidad) REFERENCES public.unidad_medida(id_unidad);


--
-- Name: fk_id_unidad_cas; Type: FK CONSTRAINT; Schema: cotizaciones; Owner: postgres
--

ALTER TABLE ONLY detalle_cotizacion_cas
    ADD CONSTRAINT fk_id_unidad_cas FOREIGN KEY (id_unidad) REFERENCES public.unidad_medida(id_unidad);


--
-- Name: fk_id_usuario; Type: FK CONSTRAINT; Schema: cotizaciones; Owner: postgres
--

ALTER TABLE ONLY cotizacion
    ADD CONSTRAINT fk_id_usuario FOREIGN KEY (id_usuario) REFERENCES usuariosistema.usuario(cedula);


--
-- Name: fk_id_usuario_css; Type: FK CONSTRAINT; Schema: cotizaciones; Owner: postgres
--

ALTER TABLE ONLY cotizacion_cas
    ADD CONSTRAINT fk_id_usuario_css FOREIGN KEY (id_usuario) REFERENCES usuariosistema.usuario(cedula);


--
-- Name: fk_id_usuario_mvvcc; Type: FK CONSTRAINT; Schema: cotizaciones; Owner: postgres
--

ALTER TABLE ONLY cotizacion_mvvcc
    ADD CONSTRAINT fk_id_usuario_mvvcc FOREIGN KEY (id_usuario) REFERENCES usuariosistema.usuario(cedula);


--
-- Name: fk_idccostos; Type: FK CONSTRAINT; Schema: cotizaciones; Owner: postgres
--

ALTER TABLE ONLY cotizacion_cas
    ADD CONSTRAINT fk_idccostos FOREIGN KEY (centro_costos) REFERENCES css.centro_costos(idccostoscc);


--
-- Name: fk_idcotizacion; Type: FK CONSTRAINT; Schema: cotizaciones; Owner: postgres
--

ALTER TABLE ONLY detalle_cotizacion_cas
    ADD CONSTRAINT fk_idcotizacion FOREIGN KEY (consecutivo_cotizacion) REFERENCES cotizacion_cas(consecutivo_cotizacion);


--
-- Name: fk_idunidad; Type: FK CONSTRAINT; Schema: cotizaciones; Owner: postgres
--

ALTER TABLE ONLY detalle_cotizacion_mvvcc
    ADD CONSTRAINT fk_idunidad FOREIGN KEY (id_unidad) REFERENCES public.unidad_medida(id_unidad);


--
-- Name: fk_item_ccostos_cas; Type: FK CONSTRAINT; Schema: cotizaciones; Owner: postgres
--

ALTER TABLE ONLY cotizacion_cas
    ADD CONSTRAINT fk_item_ccostos_cas FOREIGN KEY (item_ccostos) REFERENCES css.item_ccostos_cc(id_item_ccostos_cc);


--
-- Name: fk_itemccostos; Type: FK CONSTRAINT; Schema: cotizaciones; Owner: postgres
--

ALTER TABLE ONLY cotizacion
    ADD CONSTRAINT fk_itemccostos FOREIGN KEY (item_ccostos) REFERENCES utdvvcc.itemccostos(id_item_ccostos);


--
-- Name: fk_nit_proveedor; Type: FK CONSTRAINT; Schema: cotizaciones; Owner: postgres
--

ALTER TABLE ONLY detalle_cotizacion_cas
    ADD CONSTRAINT fk_nit_proveedor FOREIGN KEY (nit_proveedor) REFERENCES proveedores.proveedor(nit_proveedor);


--
-- Name: fk_proveedor; Type: FK CONSTRAINT; Schema: cotizaciones; Owner: postgres
--

ALTER TABLE ONLY detalle_cotizacion
    ADD CONSTRAINT fk_proveedor FOREIGN KEY (nit_proveedor) REFERENCES proveedores.proveedor(nit_proveedor);


--
-- Name: fk_proveedor; Type: FK CONSTRAINT; Schema: cotizaciones; Owner: postgres
--

ALTER TABLE ONLY detalle_cotizacion_mvvcc
    ADD CONSTRAINT fk_proveedor FOREIGN KEY (nit_proveedor) REFERENCES proveedores.proveedor(nit_proveedor);


SET search_path = css, pg_catalog;

--
-- Name: fk_id_ccostos_cc; Type: FK CONSTRAINT; Schema: css; Owner: postgres
--

ALTER TABLE ONLY item_ccostos_cc
    ADD CONSTRAINT fk_id_ccostos_cc FOREIGN KEY (id_ccostos_cc) REFERENCES centro_costos(idccostoscc);


SET search_path = cxpproveedores, pg_catalog;

--
-- Name: adjuntos_id_infacturascxp_adjuntos_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY adjuntos
    ADD CONSTRAINT adjuntos_id_infacturascxp_adjuntos_fkey FOREIGN KEY (id_infacturascxp_adjuntos) REFERENCES infacturascxp(id_infacturascxp);


--
-- Name: detalle_facturascxp_civ_id_centro_costos_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_civ
    ADD CONSTRAINT detalle_facturascxp_civ_id_centro_costos_fkey FOREIGN KEY (id_centro_costos) REFERENCES civsas.item_ccostos(id_item_ccostos_civsas);


--
-- Name: detalle_facturascxp_civ_id_infacturascxp_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_civ
    ADD CONSTRAINT detalle_facturascxp_civ_id_infacturascxp_detalle_fkey FOREIGN KEY (id_infacturascxp_detalle) REFERENCES infacturascxp_civ(id_infacturascxp);


--
-- Name: detalle_facturascxp_civ_id_proveedor_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_civ
    ADD CONSTRAINT detalle_facturascxp_civ_id_proveedor_detalle_fkey FOREIGN KEY (id_proveedor_detalle) REFERENCES proveedores.proveedor(nit_proveedor);


--
-- Name: detalle_facturascxp_civ_municipio_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_civ
    ADD CONSTRAINT detalle_facturascxp_civ_municipio_fkey FOREIGN KEY (municipio) REFERENCES public.ciudad(id_ciudad);


--
-- Name: detalle_facturascxp_civ_numero_factura_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_civ
    ADD CONSTRAINT detalle_facturascxp_civ_numero_factura_detalle_fkey FOREIGN KEY (numero_factura_detalle) REFERENCES facturas(id_factura);


--
-- Name: detalle_facturascxp_civ_porcen_iva_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_civ
    ADD CONSTRAINT detalle_facturascxp_civ_porcen_iva_detalle_fkey FOREIGN KEY (porcen_iva_detalle) REFERENCES iva(id_iva);


--
-- Name: detalle_facturascxp_civ_porcen_retcree_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_civ
    ADD CONSTRAINT detalle_facturascxp_civ_porcen_retcree_detalle_fkey FOREIGN KEY (porcen_retcree_detalle) REFERENCES retcree(id_retcree);


--
-- Name: detalle_facturascxp_civ_porcen_retefuente_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_civ
    ADD CONSTRAINT detalle_facturascxp_civ_porcen_retefuente_detalle_fkey FOREIGN KEY (porcen_retefuente_detalle) REFERENCES retefuente(id_retefuente);


--
-- Name: detalle_facturascxp_civ_porcen_reteica_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_civ
    ADD CONSTRAINT detalle_facturascxp_civ_porcen_reteica_detalle_fkey FOREIGN KEY (porcen_reteica_detalle) REFERENCES reteica(id_reteica);


--
-- Name: detalle_facturascxp_civ_porcen_reteiva_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_civ
    ADD CONSTRAINT detalle_facturascxp_civ_porcen_reteiva_detalle_fkey FOREIGN KEY (porcen_reteiva_detalle) REFERENCES reteiva(id_reteiva);


--
-- Name: detalle_facturascxp_clb_id_centro_costos_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_clb
    ADD CONSTRAINT detalle_facturascxp_clb_id_centro_costos_fkey FOREIGN KEY (id_centro_costos) REFERENCES utdvvcc.itemccostos(id_item_ccostos);


--
-- Name: detalle_facturascxp_clb_id_infacturascxp_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_clb
    ADD CONSTRAINT detalle_facturascxp_clb_id_infacturascxp_detalle_fkey FOREIGN KEY (id_infacturascxp_detalle) REFERENCES infacturascxp_clb(id_infacturascxp);


--
-- Name: detalle_facturascxp_clb_id_proveedor_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_clb
    ADD CONSTRAINT detalle_facturascxp_clb_id_proveedor_detalle_fkey FOREIGN KEY (id_proveedor_detalle) REFERENCES proveedores.proveedor(nit_proveedor);


--
-- Name: detalle_facturascxp_clb_municipio_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_clb
    ADD CONSTRAINT detalle_facturascxp_clb_municipio_fkey FOREIGN KEY (municipio) REFERENCES public.ciudad(id_ciudad);


--
-- Name: detalle_facturascxp_clb_numero_factura_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_clb
    ADD CONSTRAINT detalle_facturascxp_clb_numero_factura_detalle_fkey FOREIGN KEY (numero_factura_detalle) REFERENCES facturas(id_factura);


--
-- Name: detalle_facturascxp_clb_porcen_iva_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_clb
    ADD CONSTRAINT detalle_facturascxp_clb_porcen_iva_detalle_fkey FOREIGN KEY (porcen_iva_detalle) REFERENCES iva(id_iva);


--
-- Name: detalle_facturascxp_clb_porcen_retcree_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_clb
    ADD CONSTRAINT detalle_facturascxp_clb_porcen_retcree_detalle_fkey FOREIGN KEY (porcen_retcree_detalle) REFERENCES retcree(id_retcree);


--
-- Name: detalle_facturascxp_clb_porcen_retefuente_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_clb
    ADD CONSTRAINT detalle_facturascxp_clb_porcen_retefuente_detalle_fkey FOREIGN KEY (porcen_retefuente_detalle) REFERENCES retefuente(id_retefuente);


--
-- Name: detalle_facturascxp_clb_porcen_reteica_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_clb
    ADD CONSTRAINT detalle_facturascxp_clb_porcen_reteica_detalle_fkey FOREIGN KEY (porcen_reteica_detalle) REFERENCES reteica(id_reteica);


--
-- Name: detalle_facturascxp_clb_porcen_reteiva_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_clb
    ADD CONSTRAINT detalle_facturascxp_clb_porcen_reteiva_detalle_fkey FOREIGN KEY (porcen_reteiva_detalle) REFERENCES reteiva(id_reteiva);


--
-- Name: detalle_facturascxp_fid_id_centro_costos_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_fid
    ADD CONSTRAINT detalle_facturascxp_fid_id_centro_costos_fkey FOREIGN KEY (id_centro_costos) REFERENCES utdvvcc.itemccostos(id_item_ccostos);


--
-- Name: detalle_facturascxp_fid_id_infacturascxp_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_fid
    ADD CONSTRAINT detalle_facturascxp_fid_id_infacturascxp_detalle_fkey FOREIGN KEY (id_infacturascxp_detalle) REFERENCES infacturascxp_fid(id_infacturascxp);


--
-- Name: detalle_facturascxp_fid_id_proveedor_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_fid
    ADD CONSTRAINT detalle_facturascxp_fid_id_proveedor_detalle_fkey FOREIGN KEY (id_proveedor_detalle) REFERENCES proveedores.proveedor(nit_proveedor);


--
-- Name: detalle_facturascxp_fid_municipio_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_fid
    ADD CONSTRAINT detalle_facturascxp_fid_municipio_fkey FOREIGN KEY (municipio) REFERENCES public.ciudad(id_ciudad);


--
-- Name: detalle_facturascxp_fid_numero_factura_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_fid
    ADD CONSTRAINT detalle_facturascxp_fid_numero_factura_detalle_fkey FOREIGN KEY (numero_factura_detalle) REFERENCES facturas(id_factura);


--
-- Name: detalle_facturascxp_fid_porcen_iva_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_fid
    ADD CONSTRAINT detalle_facturascxp_fid_porcen_iva_detalle_fkey FOREIGN KEY (porcen_iva_detalle) REFERENCES iva(id_iva);


--
-- Name: detalle_facturascxp_fid_porcen_retcree_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_fid
    ADD CONSTRAINT detalle_facturascxp_fid_porcen_retcree_detalle_fkey FOREIGN KEY (porcen_retcree_detalle) REFERENCES retcree(id_retcree);


--
-- Name: detalle_facturascxp_fid_porcen_retefuente_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_fid
    ADD CONSTRAINT detalle_facturascxp_fid_porcen_retefuente_detalle_fkey FOREIGN KEY (porcen_retefuente_detalle) REFERENCES retefuente(id_retefuente);


--
-- Name: detalle_facturascxp_fid_porcen_reteica_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_fid
    ADD CONSTRAINT detalle_facturascxp_fid_porcen_reteica_detalle_fkey FOREIGN KEY (porcen_reteica_detalle) REFERENCES reteica(id_reteica);


--
-- Name: detalle_facturascxp_fid_porcen_reteiva_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp_fid
    ADD CONSTRAINT detalle_facturascxp_fid_porcen_reteiva_detalle_fkey FOREIGN KEY (porcen_reteiva_detalle) REFERENCES reteiva(id_reteiva);


--
-- Name: detalle_facturascxp_id_centro_costos_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp
    ADD CONSTRAINT detalle_facturascxp_id_centro_costos_fkey FOREIGN KEY (id_centro_costos) REFERENCES utdvvcc.itemccostos(id_item_ccostos);


--
-- Name: detalle_facturascxp_id_infacturascxp_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp
    ADD CONSTRAINT detalle_facturascxp_id_infacturascxp_detalle_fkey FOREIGN KEY (id_infacturascxp_detalle) REFERENCES infacturascxp(id_infacturascxp);


--
-- Name: detalle_facturascxp_id_proveedor_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp
    ADD CONSTRAINT detalle_facturascxp_id_proveedor_detalle_fkey FOREIGN KEY (id_proveedor_detalle) REFERENCES proveedores.proveedor(nit_proveedor);


--
-- Name: detalle_facturascxp_municipio_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp
    ADD CONSTRAINT detalle_facturascxp_municipio_fkey FOREIGN KEY (municipio) REFERENCES public.ciudad(id_ciudad);


--
-- Name: detalle_facturascxp_numero_factura_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp
    ADD CONSTRAINT detalle_facturascxp_numero_factura_detalle_fkey FOREIGN KEY (numero_factura_detalle) REFERENCES facturas(id_factura);


--
-- Name: detalle_facturascxp_porcen_iva_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp
    ADD CONSTRAINT detalle_facturascxp_porcen_iva_detalle_fkey FOREIGN KEY (porcen_iva_detalle) REFERENCES iva(id_iva);


--
-- Name: detalle_facturascxp_porcen_retcree_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp
    ADD CONSTRAINT detalle_facturascxp_porcen_retcree_detalle_fkey FOREIGN KEY (porcen_retcree_detalle) REFERENCES retcree(id_retcree);


--
-- Name: detalle_facturascxp_porcen_retefuente_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp
    ADD CONSTRAINT detalle_facturascxp_porcen_retefuente_detalle_fkey FOREIGN KEY (porcen_retefuente_detalle) REFERENCES retefuente(id_retefuente);


--
-- Name: detalle_facturascxp_porcen_reteica_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp
    ADD CONSTRAINT detalle_facturascxp_porcen_reteica_detalle_fkey FOREIGN KEY (porcen_reteica_detalle) REFERENCES reteica(id_reteica);


--
-- Name: detalle_facturascxp_porcen_reteiva_detalle_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY detalle_facturascxp
    ADD CONSTRAINT detalle_facturascxp_porcen_reteiva_detalle_fkey FOREIGN KEY (porcen_reteiva_detalle) REFERENCES reteiva(id_reteiva);


--
-- Name: infacturascxp_civ_estado_infacturascxp_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY infacturascxp_civ
    ADD CONSTRAINT infacturascxp_civ_estado_infacturascxp_fkey FOREIGN KEY (estado_infacturascxp) REFERENCES estado(id_estado);


--
-- Name: infacturascxp_civ_id_centro_costos_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY infacturascxp_civ
    ADD CONSTRAINT infacturascxp_civ_id_centro_costos_fkey FOREIGN KEY (id_centro_costos) REFERENCES civsas.centro_costos(id_ccostos);


--
-- Name: infacturascxp_civ_id_usuarios_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY infacturascxp_civ
    ADD CONSTRAINT infacturascxp_civ_id_usuarios_fkey FOREIGN KEY (id_usuarios) REFERENCES usuariosistema.usuariosreq(idusuario);


--
-- Name: infacturascxp_civ_periodo_infacturascxp_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY infacturascxp_civ
    ADD CONSTRAINT infacturascxp_civ_periodo_infacturascxp_fkey FOREIGN KEY (periodo_infacturascxp) REFERENCES mes(id_mes);


--
-- Name: infacturascxp_civ_year_infacturascxp_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY infacturascxp_civ
    ADD CONSTRAINT infacturascxp_civ_year_infacturascxp_fkey FOREIGN KEY (year_infacturascxp) REFERENCES year(id_year);


--
-- Name: infacturascxp_clb_estado_infacturascxp_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY infacturascxp_clb
    ADD CONSTRAINT infacturascxp_clb_estado_infacturascxp_fkey FOREIGN KEY (estado_infacturascxp) REFERENCES estado(id_estado);


--
-- Name: infacturascxp_clb_id_centro_costos_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY infacturascxp_clb
    ADD CONSTRAINT infacturascxp_clb_id_centro_costos_fkey FOREIGN KEY (id_centro_costos) REFERENCES utdvvcc.centrocostos(id_centrocostos);


--
-- Name: infacturascxp_clb_id_usuarios_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY infacturascxp_clb
    ADD CONSTRAINT infacturascxp_clb_id_usuarios_fkey FOREIGN KEY (id_usuarios) REFERENCES usuariosistema.usuariosreq(idusuario);


--
-- Name: infacturascxp_clb_periodo_infacturascxp_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY infacturascxp_clb
    ADD CONSTRAINT infacturascxp_clb_periodo_infacturascxp_fkey FOREIGN KEY (periodo_infacturascxp) REFERENCES mes(id_mes);


--
-- Name: infacturascxp_clb_year_infacturascxp_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY infacturascxp_clb
    ADD CONSTRAINT infacturascxp_clb_year_infacturascxp_fkey FOREIGN KEY (year_infacturascxp) REFERENCES year(id_year);


--
-- Name: infacturascxp_estado_infacturascxp_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY infacturascxp
    ADD CONSTRAINT infacturascxp_estado_infacturascxp_fkey FOREIGN KEY (estado_infacturascxp) REFERENCES estado(id_estado);


--
-- Name: infacturascxp_fid_estado_infacturascxp_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY infacturascxp_fid
    ADD CONSTRAINT infacturascxp_fid_estado_infacturascxp_fkey FOREIGN KEY (estado_infacturascxp) REFERENCES estado(id_estado);


--
-- Name: infacturascxp_fid_id_centro_costos_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY infacturascxp_fid
    ADD CONSTRAINT infacturascxp_fid_id_centro_costos_fkey FOREIGN KEY (id_centro_costos) REFERENCES utdvvcc.centrocostos(id_centrocostos);


--
-- Name: infacturascxp_fid_id_usuarios_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY infacturascxp_fid
    ADD CONSTRAINT infacturascxp_fid_id_usuarios_fkey FOREIGN KEY (id_usuarios) REFERENCES usuariosistema.usuariosreq(idusuario);


--
-- Name: infacturascxp_fid_periodo_infacturascxp_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY infacturascxp_fid
    ADD CONSTRAINT infacturascxp_fid_periodo_infacturascxp_fkey FOREIGN KEY (periodo_infacturascxp) REFERENCES mes(id_mes);


--
-- Name: infacturascxp_fid_year_infacturascxp_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY infacturascxp_fid
    ADD CONSTRAINT infacturascxp_fid_year_infacturascxp_fkey FOREIGN KEY (year_infacturascxp) REFERENCES year(id_year);


--
-- Name: infacturascxp_id_centro_costos_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY infacturascxp
    ADD CONSTRAINT infacturascxp_id_centro_costos_fkey FOREIGN KEY (id_centro_costos) REFERENCES utdvvcc.centrocostos(id_centrocostos);


--
-- Name: infacturascxp_id_usuarios_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY infacturascxp
    ADD CONSTRAINT infacturascxp_id_usuarios_fkey FOREIGN KEY (id_usuarios) REFERENCES usuariosistema.usuariosreq(idusuario);


--
-- Name: infacturascxp_periodo_infacturascxp_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY infacturascxp
    ADD CONSTRAINT infacturascxp_periodo_infacturascxp_fkey FOREIGN KEY (periodo_infacturascxp) REFERENCES mes(id_mes);


--
-- Name: infacturascxp_year_infacturascxp_fkey; Type: FK CONSTRAINT; Schema: cxpproveedores; Owner: postgres
--

ALTER TABLE ONLY infacturascxp
    ADD CONSTRAINT infacturascxp_year_infacturascxp_fkey FOREIGN KEY (year_infacturascxp) REFERENCES year(id_year);


SET search_path = fideicomiso, pg_catalog;

--
-- Name: consecutivos_id_centrocostos_consecutivo_fkey; Type: FK CONSTRAINT; Schema: fideicomiso; Owner: postgres
--

ALTER TABLE ONLY consecutivos
    ADD CONSTRAINT consecutivos_id_centrocostos_consecutivo_fkey FOREIGN KEY (id_centrocostos_consecutivo) REFERENCES utdvvcc.centrocostos(id_centrocostos);


SET search_path = listadopedidos, pg_catalog;

--
-- Name: fk_estado; Type: FK CONSTRAINT; Schema: listadopedidos; Owner: postgres
--

ALTER TABLE ONLY detalle_pedido
    ADD CONSTRAINT fk_estado FOREIGN KEY (id_estado) REFERENCES estado_pedido(id_estado);


--
-- Name: fk_iddir; Type: FK CONSTRAINT; Schema: listadopedidos; Owner: postgres
--

ALTER TABLE ONLY pedido
    ADD CONSTRAINT fk_iddir FOREIGN KEY (id_dir) REFERENCES utdvvcc.direcmant(iddirecmant);


--
-- Name: fk_iditem; Type: FK CONSTRAINT; Schema: listadopedidos; Owner: postgres
--

ALTER TABLE ONLY pedido
    ADD CONSTRAINT fk_iditem FOREIGN KEY (id_item_ccostos) REFERENCES utdvvcc.itemccostos(id_item_ccostos);


--
-- Name: fk_idpedido; Type: FK CONSTRAINT; Schema: listadopedidos; Owner: postgres
--

ALTER TABLE ONLY detalle_pedido
    ADD CONSTRAINT fk_idpedido FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido);


--
-- Name: fk_idus; Type: FK CONSTRAINT; Schema: listadopedidos; Owner: postgres
--

ALTER TABLE ONLY pedido
    ADD CONSTRAINT fk_idus FOREIGN KEY (id_us) REFERENCES usuariosistema.usuario(cedula);


SET search_path = mvvcc, pg_catalog;

--
-- Name: fk_id_ccostos_mvvcc; Type: FK CONSTRAINT; Schema: mvvcc; Owner: postgres
--

ALTER TABLE ONLY item_ccostos
    ADD CONSTRAINT fk_id_ccostos_mvvcc FOREIGN KEY (id_ccostos_mvvcc) REFERENCES centro_costos(id_ccostos);


SET search_path = ordenescompra, pg_catalog;

--
-- Name: fk_det_oc; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY causados_oc
    ADD CONSTRAINT fk_det_oc FOREIGN KEY (id_det_oc) REFERENCES det_oc_utd(id_det_oc);


--
-- Name: fk_director; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY orden_compra
    ADD CONSTRAINT fk_director FOREIGN KEY (id_director) REFERENCES utdvvcc.direcmant(iddirecmant);


--
-- Name: fk_id_itemccostos; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY orden_compra
    ADD CONSTRAINT fk_id_itemccostos FOREIGN KEY (id_itemccostos) REFERENCES utdvvcc.itemccostos(id_item_ccostos);


--
-- Name: fk_id_oc; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY det_oc_utd
    ADD CONSTRAINT fk_id_oc FOREIGN KEY (id_oc) REFERENCES ordencomprautd(id_oc);


--
-- Name: fk_id_oc; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY causados_oc
    ADD CONSTRAINT fk_id_oc FOREIGN KEY (id_oc) REFERENCES ordencomprautd(id_oc);


--
-- Name: fk_id_unidad_css; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY detalle_orden_compra_css
    ADD CONSTRAINT fk_id_unidad_css FOREIGN KEY (id_unidad) REFERENCES public.unidad_medida(id_unidad);


--
-- Name: fk_id_unidad_mvvcc; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY detalle_orden_compra_mvvcc
    ADD CONSTRAINT fk_id_unidad_mvvcc FOREIGN KEY (id_unidad) REFERENCES public.unidad_medida(id_unidad);


--
-- Name: fk_id_us; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY causados_oc
    ADD CONSTRAINT fk_id_us FOREIGN KEY (id_usuario) REFERENCES usuariosistema.usuario(cedula);


--
-- Name: fk_id_usuario; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY orden_compra
    ADD CONSTRAINT fk_id_usuario FOREIGN KEY (id_usuario) REFERENCES usuariosistema.usuario(cedula);


--
-- Name: fk_id_usuario_css; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY orden_compra_css
    ADD CONSTRAINT fk_id_usuario_css FOREIGN KEY (id_usuario) REFERENCES usuariosistema.usuario(cedula);


--
-- Name: fk_id_usuario_mvvcc; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY orden_compra_mvvcc
    ADD CONSTRAINT fk_id_usuario_mvvcc FOREIGN KEY (id_usuario) REFERENCES usuariosistema.usuario(cedula);


--
-- Name: fk_iddetreq; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY det_oc_utd
    ADD CONSTRAINT fk_iddetreq FOREIGN KEY (id_det_req) REFERENCES listadopedidos.detalle_pedido(id_dt);


--
-- Name: fk_iddir; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY ordencomprautd
    ADD CONSTRAINT fk_iddir FOREIGN KEY (id_director) REFERENCES utdvvcc.direcmant(iddirecmant);


--
-- Name: fk_idiva; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY detalle_orden_compra
    ADD CONSTRAINT fk_idiva FOREIGN KEY (id_iva) REFERENCES public.tipos_iva(id_iva);


--
-- Name: fk_idiva; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY detalle_orden_compra_css
    ADD CONSTRAINT fk_idiva FOREIGN KEY (id_iva) REFERENCES public.tipos_iva(id_iva);


--
-- Name: fk_idiva; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY detalle_orden_compra_mvvcc
    ADD CONSTRAINT fk_idiva FOREIGN KEY (id_iva) REFERENCES public.tipos_iva(id_iva);


--
-- Name: fk_idiva; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY detalle_orden_civsas
    ADD CONSTRAINT fk_idiva FOREIGN KEY (id_iva) REFERENCES public.tipos_iva(id_iva);


--
-- Name: fk_idiva; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY det_oc_utd
    ADD CONSTRAINT fk_idiva FOREIGN KEY (id_iva) REFERENCES public.tipos_iva(id_iva);


--
-- Name: fk_idpro; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY ordencomprautd
    ADD CONSTRAINT fk_idpro FOREIGN KEY (id_proveedor) REFERENCES proveedores.proveedor(nit_proveedor);


--
-- Name: fk_idun; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY detalle_orden_civsas
    ADD CONSTRAINT fk_idun FOREIGN KEY (id_unidad) REFERENCES public.unidad_medida(id_unidad);


--
-- Name: fk_idus; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY ordencomprautd
    ADD CONSTRAINT fk_idus FOREIGN KEY (id_usuario) REFERENCES usuariosistema.usuario(cedula);


--
-- Name: fk_item; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY orden_compra_civsas
    ADD CONSTRAINT fk_item FOREIGN KEY (id_itemccostos) REFERENCES civsas.item_ccostos(id_item_ccostos_civsas);


--
-- Name: fk_item_ccostos_css; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY orden_compra_css
    ADD CONSTRAINT fk_item_ccostos_css FOREIGN KEY (id_itemccostos) REFERENCES css.item_ccostos_cc(id_item_ccostos_cc);


--
-- Name: fk_item_ccostos_mvvcc; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY orden_compra_mvvcc
    ADD CONSTRAINT fk_item_ccostos_mvvcc FOREIGN KEY (id_itemccostos) REFERENCES mvvcc.item_ccostos(id_item_ccostos_mvvcc);


--
-- Name: fk_itemccostos; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY ordencomprautd
    ADD CONSTRAINT fk_itemccostos FOREIGN KEY (id_itemccostos) REFERENCES utdvvcc.itemccostos(id_item_ccostos);


--
-- Name: fk_iva; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY dt_orden_clg
    ADD CONSTRAINT fk_iva FOREIGN KEY (id_iva) REFERENCES public.tipos_iva(id_iva);


--
-- Name: fk_nit; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY orden_compra_clg
    ADD CONSTRAINT fk_nit FOREIGN KEY (nit_proveedor) REFERENCES proveedores.proveedor(nit_proveedor);


--
-- Name: fk_nit; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY orden_compra_civsas
    ADD CONSTRAINT fk_nit FOREIGN KEY (nit_proveedor) REFERENCES proveedores.proveedor(nit_proveedor);


--
-- Name: fk_nit_proveedor; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY orden_compra_css
    ADD CONSTRAINT fk_nit_proveedor FOREIGN KEY (nit_proveedor) REFERENCES proveedores.proveedor(nit_proveedor);


--
-- Name: fk_nit_proveedor; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY orden_compra
    ADD CONSTRAINT fk_nit_proveedor FOREIGN KEY (nit_proveedor) REFERENCES proveedores.proveedor(nit_proveedor);


--
-- Name: fk_nit_proveedor_mvvcc; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY orden_compra_mvvcc
    ADD CONSTRAINT fk_nit_proveedor_mvvcc FOREIGN KEY (nit_proveedor) REFERENCES proveedores.proveedor(nit_proveedor);


--
-- Name: fk_orden; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY detalle_orden_civsas
    ADD CONSTRAINT fk_orden FOREIGN KEY (consecutivo_ordencompra) REFERENCES orden_compra_civsas(consecutivo_orden_compra);


--
-- Name: fk_ordenCompra; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY detalle_orden_compra
    ADD CONSTRAINT "fk_ordenCompra" FOREIGN KEY (consecutivo_ordencompra) REFERENCES orden_compra(consecutivo_orden_compra);


--
-- Name: fk_orden_compra; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY dt_orden_clg
    ADD CONSTRAINT fk_orden_compra FOREIGN KEY (consecutivo_ordencompra) REFERENCES orden_compra_clg(id_orden_compra);


--
-- Name: fk_orden_css; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY detalle_orden_compra_css
    ADD CONSTRAINT fk_orden_css FOREIGN KEY (consecutivo_ordencompra) REFERENCES orden_compra_css(consecutivo_orden_compra);


--
-- Name: fk_orden_mvvcc; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY detalle_orden_compra_mvvcc
    ADD CONSTRAINT fk_orden_mvvcc FOREIGN KEY (consecutivo_ordencompra) REFERENCES orden_compra_mvvcc(consecutivo_orden_compra);


--
-- Name: fk_unidad; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY detalle_orden_compra
    ADD CONSTRAINT fk_unidad FOREIGN KEY (id_unidad) REFERENCES public.unidad_medida(id_unidad);


--
-- Name: fk_unidad; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY dt_orden_clg
    ADD CONSTRAINT fk_unidad FOREIGN KEY (id_unidad) REFERENCES public.unidad_medida(id_unidad);


--
-- Name: fk_usuario; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY orden_compra_clg
    ADD CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES usuariosistema.usuario(cedula);


--
-- Name: fk_usuario; Type: FK CONSTRAINT; Schema: ordenescompra; Owner: postgres
--

ALTER TABLE ONLY orden_compra_civsas
    ADD CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES usuariosistema.usuario(cedula);


SET search_path = proveedores, pg_catalog;

--
-- Name: fk_id_ciudad_proveedor; Type: FK CONSTRAINT; Schema: proveedores; Owner: postgres
--

ALTER TABLE ONLY proveedor
    ADD CONSTRAINT fk_id_ciudad_proveedor FOREIGN KEY (id_ciudad) REFERENCES public.ciudad(id_ciudad);


SET search_path = requisicion, pg_catalog;

--
-- Name: fk_iditemccostos; Type: FK CONSTRAINT; Schema: requisicion; Owner: postgres
--

ALTER TABLE ONLY requisicion
    ADD CONSTRAINT fk_iditemccostos FOREIGN KEY (id_item_ccostos) REFERENCES utdvvcc.itemccostos(id_item_ccostos);


--
-- Name: fk_idunidad; Type: FK CONSTRAINT; Schema: requisicion; Owner: postgres
--

ALTER TABLE ONLY detallerequisicion
    ADD CONSTRAINT fk_idunidad FOREIGN KEY (uni_det_req) REFERENCES public.unidad_medida(id_unidad);


--
-- Name: fk_idusuario; Type: FK CONSTRAINT; Schema: requisicion; Owner: postgres
--

ALTER TABLE ONLY requisicion
    ADD CONSTRAINT fk_idusuario FOREIGN KEY (usuarios_idusuario) REFERENCES usuariosistema.usuariosreq(idusuario);


--
-- Name: fk_requisicion; Type: FK CONSTRAINT; Schema: requisicion; Owner: postgres
--

ALTER TABLE ONLY detallerequisicion
    ADD CONSTRAINT fk_requisicion FOREIGN KEY (requisicion_idreq) REFERENCES requisicion(idreq);


SET search_path = requisicionlb, pg_catalog;

--
-- Name: fi_iditem; Type: FK CONSTRAINT; Schema: requisicionlb; Owner: postgres
--

ALTER TABLE ONLY requisicionlb
    ADD CONSTRAINT fi_iditem FOREIGN KEY (id_item_ccostos) REFERENCES utdvvcc.itemccostos(id_item_ccostos);


--
-- Name: fk_id_usuario; Type: FK CONSTRAINT; Schema: requisicionlb; Owner: postgres
--

ALTER TABLE ONLY requisicionlb
    ADD CONSTRAINT fk_id_usuario FOREIGN KEY (usuarios_idusuario) REFERENCES usuariosistema.usuariosreq(idusuario);


--
-- Name: fk_iddir; Type: FK CONSTRAINT; Schema: requisicionlb; Owner: postgres
--

ALTER TABLE ONLY requisicionlb
    ADD CONSTRAINT fk_iddir FOREIGN KEY (direcmant_iddirecmant) REFERENCES utdvvcc.direcmant(iddirecmant);


--
-- Name: fk_idreq; Type: FK CONSTRAINT; Schema: requisicionlb; Owner: postgres
--

ALTER TABLE ONLY detallereqlb
    ADD CONSTRAINT fk_idreq FOREIGN KEY (requisicion_idreq) REFERENCES requisicionlb(idreq);


--
-- Name: fk_idund; Type: FK CONSTRAINT; Schema: requisicionlb; Owner: postgres
--

ALTER TABLE ONLY detallereqlb
    ADD CONSTRAINT fk_idund FOREIGN KEY (uni_det_req) REFERENCES public.unidad_medida(id_unidad);


SET search_path = usuariosistema, pg_catalog;

--
-- Name: fk_level; Type: FK CONSTRAINT; Schema: usuariosistema; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT fk_level FOREIGN KEY (id_level) REFERENCES nivelacceso(idnivelacceso);


--
-- Name: fk_nivel_acceso; Type: FK CONSTRAINT; Schema: usuariosistema; Owner: postgres
--

ALTER TABLE ONLY usuariosreq
    ADD CONSTRAINT fk_nivel_acceso FOREIGN KEY (nivelacceso_idnivelacceso) REFERENCES nivelacceso(idnivelacceso);


SET search_path = utdvvcc, pg_catalog;

--
-- Name: consecutivos_id_centrocostos_consecutivo_fkey; Type: FK CONSTRAINT; Schema: utdvvcc; Owner: postgres
--

ALTER TABLE ONLY consecutivos
    ADD CONSTRAINT consecutivos_id_centrocostos_consecutivo_fkey FOREIGN KEY (id_centrocostos_consecutivo) REFERENCES centrocostos(id_centrocostos);


--
-- Name: fk_cargo; Type: FK CONSTRAINT; Schema: utdvvcc; Owner: postgres
--

ALTER TABLE ONLY direcmant
    ADD CONSTRAINT fk_cargo FOREIGN KEY (id_cargo) REFERENCES cargo(id_cargo);


--
-- Name: fk_idccostos; Type: FK CONSTRAINT; Schema: utdvvcc; Owner: postgres
--

ALTER TABLE ONLY itemccostos
    ADD CONSTRAINT fk_idccostos FOREIGN KEY (id_centrocostos) REFERENCES centrocostos(id_centrocostos);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

