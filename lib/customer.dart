class Customer {
  final String fechaCorte;
  final String codPromotor;
  final String nomPromotor;
  final String dpi;
  final String nombreCliente;
  final String edadCte;
  final String telPrincipal;
  final String telSecundario;
  final String direccionDom;
  final String departamento;
  final String municipio;
  final String nomRegion;
  final String sucursal;
  final String fudCliente;
  final String prestamo;
  final String fecVencimiento;
  final String fecEntrega;
  final String plazo;
  final String producto;
  final String subProducto;
  final String descripcionProducto;
  final String nombreGrupo;
  final String integrantes;
  final String capitalOtorgado;
  final String saldoCapital;
  final String ofertaComercial;
  final String diasAtrasoCierre;
  final String tipoCliente;
  final String operaciones;
  final String observacion;
  final String tipoRiesgo;
  final String graduacion;
  final String tipoCampania;
  final String segCliente;
  final String segDesercion;
  final String segCobranza;
  final String subSegCobranza;
  final String aprobado;
  final String descRechazo;
  final String identificador;
  final int codSucursal;
  final String estadoColocado;

  Customer({
    required this.fechaCorte,
    required this.codPromotor,
    required this.nomPromotor,
    required this.dpi,
    required this.nombreCliente,
    required this.edadCte,
    required this.telPrincipal,
    required this.telSecundario,
    required this.direccionDom,
    required this.departamento,
    required this.municipio,
    required this.nomRegion,
    required this.sucursal,
    required this.fudCliente,
    required this.prestamo,
    required this.fecVencimiento,
    required this.fecEntrega,
    required this.plazo,
    required this.producto,
    required this.subProducto,
    required this.descripcionProducto,
    required this.nombreGrupo,
    required this.integrantes,
    required this.capitalOtorgado,
    required this.saldoCapital,
    required this.ofertaComercial,
    required this.diasAtrasoCierre,
    required this.tipoCliente,
    required this.operaciones,
    required this.observacion,
    required this.tipoRiesgo,
    required this.graduacion,
    required this.tipoCampania,
    required this.segCliente,
    required this.segDesercion,
    required this.segCobranza,
    required this.subSegCobranza,
    required this.aprobado,
    required this.descRechazo,
    required this.identificador,
    required this.codSucursal,
    required this.estadoColocado,
  });

  Map<String, dynamic> toMap() {
    return {
      'Fecha de corte': fechaCorte,
      'Código del promotor': codPromotor,
      'Nombre del promotor': nomPromotor,
      'DPI': dpi,
      'Nombre del cliente': nombreCliente,
      'Edad del client': edadCte,
      'Teléfono principal': telPrincipal,
      'Teléfono secundario': telSecundario,
      'Dirección del domicilio': direccionDom,
      'Departamento': departamento,
      'Municipio': municipio,
      'Nombre de la región': nomRegion,
      'Sucursal': sucursal,
      'FUD del cliente': fudCliente,
      'Prestamo': prestamo,
      'fecha de vencimiento': fecVencimiento,
      'fecha de entrega': fecEntrega,
      'Plazo': plazo,
      'Producto': producto,
      'Subproducto': subProducto,
      'Descripción del producto': descripcionProducto,
      'Nombre del grupo': nombreGrupo,
      'Integrantes': integrantes,
      'Capital ortogado': capitalOtorgado,
      'Saldo capital': saldoCapital,
      'Oferta comercial': ofertaComercial,
      'Días atrasados o cierre': diasAtrasoCierre,
      'Tipo de cliente': tipoCliente,
      'Operaciones': operaciones,
      'Observacion': observacion,
      'Tipo de riesgo': tipoRiesgo,
      'Graduación': graduacion,
      'Tipo de campaña': tipoCampania,
      'Seguimiento del cliente': segCliente,
      'Seguimiento deserción': segDesercion,
      'Seguimiento cobranza': segCobranza,
      'Sub seguimiento cobranza': subSegCobranza,
      'Aprobado': aprobado,
      'Descripción del rechazo': descRechazo,
      'Identificador': identificador,
      'Código de la surcusal': codSucursal,
      'Estado colocado': estadoColocado,
    };
  }

factory Customer.fromJson(Map<String, dynamic> json) {
  return Customer(
    fechaCorte: json['FECHA_CORTE'] as String? ?? '',
    codPromotor: json['COD_PROMOTOR'] as String? ?? '',
    nomPromotor: json['NOM_PROMOTOR'] as String? ?? '',
    dpi: json['DPI'] as String? ?? '',
    nombreCliente: json['NOMBRE_CLIENTE'] as String? ?? '',
    edadCte: json['EDAD_CTE'] as String? ?? '',
    telPrincipal: json['TEL_PRINCIPAL'] as String? ?? '',
    telSecundario: json['TEL_SECUNDARIO'] as String? ?? '',
    direccionDom: json['DIRECCION_DOM'] as String? ?? '',
    departamento: json['DEPARTAMENTO'] as String? ?? '',
    municipio: json['MUNICIPIO'] as String? ?? '',
    nomRegion: json['NOM_REGION'] as String? ?? '',
    sucursal: json['SUCURSAL'] as String? ?? '',
    fudCliente: json['FUD_CLIENTE'] as String? ?? '',
    prestamo: json['PRESTAMO'] as String? ?? '',
    fecVencimiento: json['FEC_VENCIMIENTO'] as String? ?? '',
    fecEntrega: json['FEC_ENTREGA'] as String? ?? '',
    plazo: json['PLAZO'] as String? ?? '',
    producto: json['PRODUCTO'] as String? ?? '',
    subProducto: json['SUB_PRODUCTO'] as String? ?? '',
    descripcionProducto: json['DESCRIPCION_PRODUCTO'] as String? ?? '',
    nombreGrupo: json['NOMBRE_GRUPO'] as String? ?? '',
    integrantes: json['INTEGRANTES'] as String? ?? '',
    capitalOtorgado: json['CAPITAL_OTORGADO'] as String? ?? '',
    saldoCapital: json['SALDO_CAPITAL'] as String? ?? '',
    ofertaComercial: json['OFERTA_COMERCIAL'] as String? ?? '',
    diasAtrasoCierre: json['DIAS_ATRASO_CIERRE'] as String? ?? '',
    tipoCliente: json['TIPO_CLIENTE'] as String? ?? '',
    operaciones: json['OPERACIONES'] as String? ?? '',
    observacion: json['OBSERVACION'] as String? ?? '',
    tipoRiesgo: json['TIPORIESGO'] as String? ?? '',
    graduacion: json['GRADUACION'] as String? ?? '',
    tipoCampania: json['TIPOCAMPANIA'] as String? ?? '',
    segCliente: json['SEG_CLIENTE'] as String? ?? '',
    segDesercion: json['SEG_DESERCION'] as String? ?? '',
    segCobranza: json['SEG_COBRANZA'] as String? ?? '',
    subSegCobranza: json['SUB_SEG_COBRANZA'] as String? ?? '',
    aprobado: json['APROBADO'] as String? ?? '',
    descRechazo: json['DESC_RECHAZO'] as String? ?? '',
    identificador: json['IDENTIFICADOR'] as String? ?? '',
    codSucursal: json['COD_SUCURSAL'] as int? ?? 0,
    estadoColocado: json['ESTADO_COLOCADO'] as String? ?? '',
  );
 }
}