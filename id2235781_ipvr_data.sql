-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 13, 2017 at 04:03 AM
-- Server version: 10.1.20-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id2235781_ipvr_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id_area` int(11) NOT NULL,
  `name_area` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id_area`, `name_area`) VALUES
(22, 'Area 2'),
(21, 'Area 1'),
(20, 'Informática'),
(19, 'Finanzas'),
(18, 'Contable'),
(17, 'Datos'),
(23, 'Area 10'),
(24, 'Area 11'),
(25, 'Area 3'),
(26, 'X'),
(27, 'Y'),
(28, 'RECTORIA'),
(29, 'FINANCIERA'),
(30, 'ACADEMICA'),
(31, 'Area X'),
(32, 'Area Uno'),
(33, 'Servicios'),
(34, 'Administraci?n'),
(35, 'Docencia'),
(36, 'Administrativa'),
(37, 'Comercial'),
(38, 'Matematica'),
(39, 'General'),
(40, 'Añil'),
(41, 'Area 1A'),
(42, 'Operativa'),
(43, 'Area Y'),
(44, 'Area Z'),
(45, 'Sede Y'),
(46, 'FF'),
(47, 'Gerencia'),
(48, 'Area D'),
(49, 'DIRECTIVA'),
(50, 'GESTIÓN HUMANA'),
(51, 'SEGURIDAD Y SALUD EN EL TRABAJO'),
(52, 'aDMINISTR');

-- --------------------------------------------------------

--
-- Table structure for table `cargos`
--

CREATE TABLE `cargos` (
  `id_cargo` int(11) NOT NULL,
  `name_cargo` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cargos`
--

INSERT INTO `cargos` (`id_cargo`, `name_cargo`) VALUES
(25, 'Cargo 5'),
(21, 'Supervisor'),
(20, 'Jéfe'),
(19, 'empleado'),
(18, 'Doctor'),
(24, 'Cargo 1'),
(26, 'Cargo 2'),
(27, 'Cargo 3'),
(28, 'Cargo 4'),
(29, '1'),
(30, '2'),
(31, 'DOCENTES'),
(32, 'SECRETARIA'),
(33, 'Cargo Uno'),
(34, 'Cargo Dos'),
(35, 'Aseadora'),
(36, 'Profesor'),
(37, 'Coordinador'),
(38, 'Docente'),
(39, 'Aseador'),
(40, 'Directiva'),
(41, 'MM'),
(42, 'Álto'),
(43, 'Ñoñéz'),
(44, 'Cargo ñ'),
(45, 'A'),
(46, 'Rector(a)'),
(47, 'Director(a)'),
(48, 'Cordinación Académica'),
(49, 'Coordinador(a) Académico'),
(50, 'Coordinador(a) de Convivencia'),
(51, 'Psicologo(a)'),
(52, 'Coordinador(a) de SST'),
(53, 'Servicios Generales'),
(54, 'Cordinador(a) Académico'),
(55, 'Coordinador(a) Convivencia'),
(56, 'Contador(a)'),
(57, 'Crdds'),
(58, 'ññ'),
(59, 'Cargo ÑÑ'),
(60, 'RECTOR'),
(61, 'DIRECTORA');

-- --------------------------------------------------------

--
-- Table structure for table `clasificacion`
--

CREATE TABLE `clasificacion` (
  `id_cl` int(11) NOT NULL,
  `name_cl` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clasificacion`
--

INSERT INTO `clasificacion` (`id_cl`, `name_cl`) VALUES
(1, 'Biológico - Fluidos o Excrementos'),
(2, 'Biológico - Picaduras'),
(3, 'Biológico - Mordeduras'),
(4, 'Biológico - Virus y Bacterias'),
(5, 'Biológico - Parasitos y hongos'),
(6, 'Físico - Ruido'),
(7, 'Físico - Iluminación'),
(8, 'Físico - Vibración Segmentaria'),
(9, 'Físico - Vibración Cuerpo entero'),
(10, 'Físico - Temperatura'),
(11, 'Físico - Radiaciones ionizantes'),
(12, 'Físico - Radiaciones no ionizantes'),
(13, 'Químico'),
(14, 'Químico - Gases y vapores'),
(15, 'Químico - humos metálicos y no metálicos'),
(16, 'Químico - polvos organicos e inorganicos'),
(17, 'Químico - liquidos (nieblas y rocios)'),
(18, 'Psicosocial - Gestión organizacional estilo de mando'),
(19, 'Gestión organizacional pago'),
(20, 'Psicosocial - Gestión organizacional inducción y capacitación'),
(21, 'Psicosocial - Caracteristicas de la organización comunicación'),
(22, 'Psicosocial - Caracteristicas de la organización tecnología'),
(23, 'Psicosocial - Caracteristicas de la organización demandas cualitativas'),
(24, 'Psicosocial - Caracteristicas de la organización demandas cuantitativas'),
(25, 'Psicosocial - Caracteristicas del grupo de trabajo trabajo en equipo'),
(26, 'Psicosocial - caracteristicas del grupo de trabajo relaciones '),
(27, 'Psicosocial - Condiciones de la tarea carga mental'),
(28, 'Psicosocial - Condiciones de la tarea contenido de la tarea'),
(29, 'Psicosocial - Condiciones de la tarea definición de roles'),
(30, 'Psicosocial - Condiciones de la tarea monotonía'),
(31, 'Psicosocial - interfase persona tarea autonomía y reconocimiento'),
(32, 'Psicosocial - Jornada de trabajo pausas'),
(33, 'Psicosocial - Jornada de trabajo horas extras'),
(34, 'Psicosocial - Jornada de trabajo rotación'),
(35, 'Psicosocial - Jornada de trabajo descansos'),
(36, 'Biomecánico - Póstura prolongada'),
(37, 'Biomecánico - Póstura forzada'),
(38, 'Biomecánico - Póstura Mantenida'),
(39, 'Biomecánico - Esfuerzo'),
(40, 'Biomecánico - Movimientos repetitivos'),
(41, 'Biomecánico - Movimiento repetitivo'),
(42, 'Biomecánico - Manipulación manual de cargas'),
(43, 'Biomecánico - Manejo y conservación de la voz'),
(44, 'Condiciones de Seguridad - Elementos de máquinas'),
(45, 'Condiciones de Seguridad - Eléctrico'),
(46, 'Condiciones de Seguridad - Locativo almacenamiento'),
(47, 'Condiciones de Seguridad - locativo superficies de trabajo irregulares'),
(48, 'Condiciones de Seguridad - Locativo'),
(49, 'Condiciones de Seguridad - Locativo superficies de trabajo deslizantes'),
(50, 'Condiciones de Seguridad - Locativo '),
(51, 'Condiciones de Seguridad - Locativo condiciones de orden y aseo'),
(52, 'Condiciones de Seguridad - Locativo caida de objetos'),
(53, 'Condiciones de Seguridad - Tecnológico fugas'),
(54, 'Condiciones de Seguridad - Tecnológico fugas, derrame, incendio'),
(55, 'Condiciones de Seguridad - Tecnológico incendios'),
(56, 'Condiciones de Seguridad - Públicos robos, atracos'),
(57, 'Condiciones de Seguridad - Públicos robos, atracos, asaltos'),
(58, 'Condiciones de Seguridad - Accidentes de tránsito'),
(59, 'Condiciones de Seguridad - Trabajos en alturas'),
(60, 'Fenomenos Naturales');

-- --------------------------------------------------------

--
-- Table structure for table `comentarios`
--

CREATE TABLE `comentarios` (
  `id_comment` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `comentario` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `control_admin`
--

CREATE TABLE `control_admin` (
  `id_ca` int(11) NOT NULL,
  `name_ca` varchar(710) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `control_admin`
--

INSERT INTO `control_admin` (`id_ca`, `name_ca`) VALUES
(1, 'Capacitación del personal y alumnos en uso adecuado de los baños, implementación de programa de orden y aseo en la institución, implementación de programa de control de plagas, correcta eliminación de desechos orgánicos, señalización que indique riesgo biológico'),
(2, 'Contar con esquema de vacunación, Implementar programas de orden y aseo en áreas de trabajo, implementar programa de control de plagas y vectores'),
(3, 'Implementar programa de control de plagas y vectores'),
(4, 'Contar con esquema de vacunación, Implementar programas de orden y aseo en áreas de trabajo, implementar programa de control de plagas y vectores, correcto manejo y eliminación de residuos sólidos'),
(5, 'Capacitación en conservación auditiva, control de tiempos de exposición al ruido, concientizar a los estudiantes de las consecuencias del ruido'),
(6, 'Programa de mantenimiento preventivo a luminarias'),
(7, 'Control del tiempos de exposición a las vibraciones, rotación de personal, implementación de pausas activas de 10 minutos por cada hora de trabajo, programa de mantenimiento preventivo a herramientas de motor, equipos y vehiculos'),
(8, 'Controlar tiempos de exposición'),
(9, 'Limitar el número de trabajadores expuestos, limitar el tiempo de exposición, señalización de zonas, elaborar procedimientos de trabajo seguros y buenas prácticas de trabajo'),
(10, 'Fomentar cultura de autocuidado, control de tiempos de exposición al sol'),
(11, 'Procedimientos de seguridad en el uso de productos químicos, Productos químicos debidamente etiquetados y señalizados, áreas de uso de productos químicos debidamente señalizada y demarcada, conocimiento y uso adecuado de productos químicos, fichas técnicas de productos químicos actualizadas '),
(12, 'Política clara para prevenir acoso laboral y promover un ambiente de convivencia laboral, conformar el comité de convivencia laboral, realizar actividades de sensibilización sobre acoso laboral y sus consecuencias, dirigidos al nivel directivo y a los trabajadores, actividades educativas y formativas con los trabajadores con el objeto de modificar actitudes o respuestas, establecer el procedimiento para denunciar hechos constitutivos de acoso laboral, garantizando la confidencialidad y el respeto por el trabajador, elaborar códigos o manuales de convivencia en los que se identifiquen los tipos de comportamiento aceptables en la empresa'),
(13, 'Implementación de pausas activas, realizar tareas evitando posturas incomodas del cuerpo, controlar tiempos de exposición a posturas prolongadas y/o forzadas, capacitaciones en higiene postural'),
(14, 'Implementación de pausas activas, implementación de procedimientos en manejo manual de cargas, control de tiempos de exposición, rotación de personal'),
(15, 'Implementación de pausas activas, control de tiempo de exppsición, realizar exámenes médicos periódicos, fomentar cultura de autocuidado'),
(16, 'Realización de programas de higiene vocal, identificación y eliminación de factores que causan abuso y mal uso de la voz, control del uso vocal prolongado, realización de exámenes médicos ocupacionales'),
(17, 'Uso de herramienta, maquinario y equipo de calidad, capacitaciones en cuidados de manos y cuerpo, reconocer las medidas de seguridad y alarmas de equipos manipulados, autoreporte de condiciones inseguras, inspecciones preoperacionales a herramientas, maquinaria y equipos, aplicación de medidas de seguridad en manipulación de herramientas, maquinaria y equipos de trabajo'),
(18, 'Aplicar reglamento técnico de instalaciones eléctricas RETIE, Aplicar las 5 reglas de oro para trabajar con energía peligrosas: Cortar todas las fuentes de tensión, Bloqueo y tarjeteo de los elementos de corto, Verificación de ausencia de tensión, Colocación a tierra y cortocircuito de las posibles fuentes de tensión, Demarcar y señalizar la zona de trabajo, evitar el uso de elementos conductores de electricidad, análisis de riesgos de tareas que impliquen trabajos con energias peligrosas'),
(19, 'Implementar programas de orden y aseo en áreas de trabajo, implementar programas de inspección a instalaciones, gestión oportuna de condiciones inseguras identificadas, áreas de almacenamiento seguras'),
(20, 'Implementar programas de orden y aseo en áreas de trabajo, implementar programas de inspección a instalaciones, gestión oportuna de condiciones inseguras identificadas '),
(21, 'Implementar programas de orden y aseo en áreas de trabajo, implementar programas de inspección a instalaciones, gestión oportuna de condiciones inseguras identificadas, señalización de superficies con desnivel'),
(22, 'Implementar programas de orden y aseo en áreas de trabajo, implementar programas de inspección a instalaciones, gestión oportuna de condiciones inseguras identificadas, capacitaciones en ambientes de trabajo seguro'),
(23, 'Dotación y capacitación en uso adecuado de extintores, conformación de brigada de emergencias con recurso suficientes en equipos y personal, señalización de seguridad, simulacros de evacuación, diseño e implementación del plan de emergencias, conocer y seguir indicaciones de hoja de seguridad de productos químicos, capacitación al personal en identificación y control de peligros y riesgos, contar con los procedimientos operativos normalizados para atención en caso incendio   '),
(24, 'Capacitación en manejo de riesgo público, que hacer antes, durante y después, capacitación sobre las instrucciones del personal ante un evento de riesgo público, custodiar el dinero en efectivo en lugares apropiados, claridad a todo el personal sobre los protocolos de seguridad ante cualquier eventualidad de riesgo público   '),
(25, 'Prestar mucha atención en el cruce de vías vehiculares, mirar a lado y lado, utilizar paletas de señalización de alto y cintas para cierres viales cuando se desplazan estudiantes '),
(26, 'Exámenes médicos ocupacionales para trabajo en alturas, inspecciones periódicas a elementos de protección personal y sistemas de protección contra caídas, garantizar el suministro de equipos, capacitación y entrenamiento, realizar inspecciones preoperacionales, asegurar acompañamiento permanente de personal capacitación en atención de emergencias, aplicación de pruebas que garanticen el buen funcionamiento de los sistemas de protección contra caídas y los certificados que los avalen, asegurar la compatibilidad de los componentes del sistema de protección contra caídas, capacitación seguimiento y control a la aplicación de procedimientos seguros, formación en trabajo seguro en alturas.      '),
(27, 'Diseño, ejecución y control del plan de emergencias, conformación de la brigada de emergencias, dotación y capacitación a la brigada de emergencias, capacitaciones a todos los niveles de la organización en cómo actuar antes, durante y después de la emergencia.');

-- --------------------------------------------------------

--
-- Table structure for table `control_ing`
--

CREATE TABLE `control_ing` (
  `id_ci` int(11) NOT NULL,
  `name_ci` varchar(260) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `control_ing`
--

INSERT INTO `control_ing` (`id_ci`, `name_ci`) VALUES
(1, ''),
(2, 'Sanitizar con recursos e insumos apropiados los ambientes de trabajo, evitar depositos de aguas limpias y sucias'),
(3, 'Aislamiento de fuentes generadoras de ruido'),
(4, 'Mayor iluminación natural que artificial, control de resplandores y reflejos, cantidad y calidad de luz de acuerdo a la labor a realizar, eliminar las superficies brillantes, fuentes de luz libres de obstáculos'),
(5, 'Minimizar intensidad de las vibraciones, mediciones de vibraciones en puestos de trabajo'),
(6, 'Adaptar condiciones de temperatura en lugares de trabajo por medio de aires acondicionados, aislamientos térmicos en lugares de trabajo'),
(7, 'Aislamiento de las fuentes emisoras con blindajes adecuados, adecuado mantenimiento de equipos e instalaciones'),
(8, 'Diseño ergonómico de puestos de trabajo'),
(9, 'Uso de herramientas y/o equipos para manipulación de cargas'),
(10, 'Diseño ergonómico de puestos de trabajo, reducir la fuerza empleada en ciertas tareas, emplear herramientas adecuadas para cada tipo de trabajo'),
(11, 'Utilizar amplificación cuando se hable en ambientes ruidosos o abiertos'),
(12, 'Mantenimiento preventivo de herramientas, maquinaria y equipo'),
(13, 'Uso de herramientas de trabajo aisladoras'),
(14, 'superficies de trabajo sin obstáculos ni irregularidades, realizar mantenimiento preventivo a infraestructura'),
(15, 'Instalación de pasamanos en escaleras'),
(16, 'Superficies de pisos secos, instalación de bandas antideslizantes den escaleras, mantenimiento preventivo de bandas antideslizantes'),
(17, 'Mantenimiento preventivo a infraestructúra'),
(18, 'Aislamiento de ignición de material combustible, almacenamiento seguro de combustibles, control de fuentes de calor, seguridad, mantenimiento preventivo e inspecciones de seguridad a ductos, tanques, mangueras y accesorios de gas y líquidos inflamables '),
(19, 'Uso de sistemas de protección contra caidas'),
(20, 'Mantenimiento oportuno a las condiciones inseguras identificadas en las inspecciones');

-- --------------------------------------------------------

--
-- Table structure for table `descripcion`
--

CREATE TABLE `descripcion` (
  `id_de` int(11) NOT NULL,
  `name_de` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `descripcion`
--

INSERT INTO `descripcion` (`id_de`, `name_de`) VALUES
(1, 'Exposición a fluidos y excrementos'),
(2, 'Exposición a picaduras de insectos'),
(3, 'Exposición a mordeduras de animales'),
(4, 'Presencia y exposición de virus en el ambiente'),
(5, 'Presencia y exposición de parasitos u hongos'),
(6, 'Exposición a ruido intenso '),
(7, 'Iluminación defectuosa en puestos de trabajo'),
(8, 'Presencia de reflejos en planos de trabajo'),
(9, 'Exposición a vibraciones segmentarias'),
(10, 'Exposiciones a vibraciones de cuerpo entero'),
(11, 'Exposición a variaciones bruscas de temperatura'),
(12, 'Exposición a radiaciones ionizantes'),
(13, 'Exposición a radiaciones No ionizantes'),
(14, 'Exposición a polvos, gases, liquidos y vapores por quimicos o productos de aseo'),
(15, 'Manipulación de productos de aseo con caracteristicas irritantes y corrosivas para la desinfección y'),
(16, 'Exposición frecuente a humos '),
(17, 'Exposición a productos quimicos y/o de aseo en estado solido'),
(18, 'Exposición de productos quimicos y/o de aseo en estado liquido'),
(19, 'Exposición de productos quimicos y/o de aseo en estado gaseoso'),
(20, 'Exposición a tratos indignos e irrespetuosos'),
(21, 'Inconformidad con la remuneración salarial'),
(22, 'Falta de capacitaciones e inducciones de las tareas'),
(23, 'Comunicación interna y externa ineficiente'),
(24, 'Falta de recursos para la realización efectiva de las tareas'),
(25, 'Demandas exigentes en las tareas diarias'),
(26, 'Falta de organización en las labores'),
(27, 'Demandas emocionales con compañeros de trabajo'),
(28, 'Demandas emocionales con las tareas diarias'),
(29, 'Falta de definición de roles y responsabilidades en las tareas '),
(30, 'Falta de reconocimiento a logoros laborales'),
(31, 'Postura prolongada durante el horario laboral'),
(32, 'Postura forzada a nivel de la muñeca'),
(33, 'Posición forazada a nivel de cuello'),
(34, 'Posturas mantenidas incomodas al realizar tareas diarias'),
(35, 'Manipulación de objetos y herramientas con peso mayor a dos kilogramos por mano'),
(36, 'Movimientos repetitivos de extremidades superiores'),
(37, 'Movimientos repetitivos de tronco y caderas'),
(38, 'Manipulación manual de cargas por encima de la cabeza'),
(39, 'Manipulación manual de cargas de 25 kilos, dos o mas veces al día'),
(40, 'manipulación manual de cargas de 12,5 kilos debajo de las rodillas dos o mas veces al día'),
(41, 'Manipulación manual de cargas de 10 kilos o más en empuje o halando mas de dos horas diarias'),
(42, 'Manupulación manual de cargas en posición inestable'),
(43, 'Manipulación manual de cargas con agarre deficiente'),
(44, 'Manipulación manual de cargas en terrenos con ascensos o descensos'),
(45, 'Manipulación manual de cargas por escaleras'),
(46, 'Esfuerzo en el manejo de la voz'),
(47, 'Uso indebido de herramientas de trabajo'),
(48, 'Cables eléctricos expuestos '),
(49, 'Tomas eléctricas sin protección'),
(50, 'Tableros de breakers sin señalizar y sin protección'),
(51, 'Tomas eléctricas e interruptores en mal estado'),
(52, 'Condiciones inadecuadas de orden y aseo en archivo físico'),
(53, 'Superficies de trabajo con aristas o esquinas agudas'),
(54, 'superficie de pisos irregulares'),
(55, 'Falta de pasamanos en escaleras'),
(56, 'Escaleras sin bandas antideslizantes'),
(57, 'Superficies de trabajo con diferencia de nivel'),
(58, 'Condiciones inadecuadas de orden y aseo  '),
(59, 'Condiciones inadecuadas de orden y aseo, riesgo de caida de objetos '),
(60, 'Tejas, cubiertas, techo o acrilicos mal anclados, riesgo de caida de objetos'),
(61, 'Estanterias y repisas sin anclaje, caida de objetos'),
(62, 'Humedad en paredes, techos o pisos'),
(63, 'Llaves y válvulas de gas en mal estado'),
(64, 'Manejo interno y/o externo de liquidos combustibles'),
(65, 'Liquidos combustibles no son manejados en condiciones ni áreas seguras'),
(66, 'Almacenamiento deficiente de materiales combustibles'),
(67, 'Exposición a delincuencia común '),
(68, 'Cruce de calles con alta afluencia vehicular'),
(69, 'Trabajo en alturas por exigencia de la tarea'),
(70, 'Falta de direccionamiento durante la presencia de fenomenos naturales'),
(71, 'Herramientas y equipos de apoyo y control en mal estado');

-- --------------------------------------------------------

--
-- Table structure for table `efectos`
--

CREATE TABLE `efectos` (
  `id_ef` int(11) NOT NULL,
  `name_ef` varchar(85) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `efectos`
--

INSERT INTO `efectos` (`id_ef`, `name_ef`) VALUES
(1, 'Reacciones alergicas por exposición a virus, bacterias y hongos'),
(2, 'Reacciones cutaneas por exposición a picaduras de insectos'),
(3, 'Heridas por mordeduras '),
(4, 'Cefaleas, perdida auditiva temporal, estrés'),
(5, 'Cefaleas, alteraciones visuales, irritación de ojos'),
(6, 'Adormecimiento de extremidades, alteraciones del sistema digestivo'),
(7, 'Agotamiento, calambres, desmayos, deshidratación, cefaleas'),
(8, 'Resequedad en la piel, uñas quebradizas o agrietadas, mareos'),
(9, 'Dermatitis, insolación'),
(10, 'irritación de vias respiratorias, dermatitis, intoxicación'),
(11, 'Estrés, carga emocional, fatiga mental, cefaleas, alteraciones gastrointestinales '),
(12, 'Tendinítis, estrés muscular, lumbalgias'),
(13, 'Tendinítis, estrés muscular, adormecimiento de manos'),
(14, 'Tendinítis, estrés muscular, cefaleas'),
(15, 'Tendinítis, estrés muscular, lumbalgias, adormecimiento de manos'),
(16, 'Disfonía, dolor de garganta'),
(17, 'Heridas, golpes, sobresfuerzos'),
(18, 'Descargas eléctricas, quemaduras'),
(19, 'Golpes, heridas, accidentes, perdida de tiempo en labores'),
(20, 'Heridas, accidentes '),
(21, 'Caidas, golpes, heridas, fracturas'),
(22, 'Malos olores, rinitis, influenza'),
(23, 'Cefaleas, desmayos, somnolencia'),
(24, 'Asfixia por humo, quemaduras, intoxicación'),
(25, 'Golpes, heridas, angustia, temor'),
(26, 'Accidentes de Transito, golpes, heridas, fracturas'),
(27, 'caidas, golpes  '),
(28, 'Lesiones por caidas de elementos, asfixia por humo, golpes, heridas');

-- --------------------------------------------------------

--
-- Table structure for table `encuestas`
--

CREATE TABLE `encuestas` (
  `id_inst` int(11) DEFAULT NULL,
  `id_sede` int(11) DEFAULT NULL,
  `id_area` int(11) DEFAULT NULL,
  `id_cargo` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `contrato` varchar(20) DEFAULT NULL,
  `cual_contrato` varchar(20) DEFAULT NULL,
  `mano` varchar(15) DEFAULT NULL,
  `antiguedad` varchar(15) DEFAULT NULL,
  `p14t` varchar(20) DEFAULT NULL,
  `p15r` varchar(10) DEFAULT NULL,
  `p16t` varchar(3) DEFAULT NULL,
  `p1` varchar(2) DEFAULT NULL,
  `p2` varchar(2) DEFAULT NULL,
  `p3` varchar(2) DEFAULT NULL,
  `p4` varchar(1) DEFAULT NULL,
  `p5` varchar(9) DEFAULT NULL,
  `p6` varchar(17) DEFAULT NULL,
  `p7` varchar(29) DEFAULT NULL,
  `p8` varchar(17) DEFAULT NULL,
  `p9` varchar(24) DEFAULT NULL,
  `p10` varchar(9) DEFAULT NULL,
  `p11` varchar(21) DEFAULT NULL,
  `p12` varchar(21) DEFAULT NULL,
  `p13` varchar(49) DEFAULT NULL,
  `p14` varchar(2) DEFAULT NULL,
  `p15` varchar(2) DEFAULT NULL,
  `p16` varchar(2) DEFAULT NULL,
  `p17` varchar(3) DEFAULT NULL,
  `p18` varchar(3) DEFAULT NULL,
  `p19` varchar(3) DEFAULT NULL,
  `p20` varchar(3) DEFAULT NULL,
  `p21` varchar(3) DEFAULT NULL,
  `p22` varchar(3) DEFAULT NULL,
  `p23` varchar(3) DEFAULT NULL,
  `p24` varchar(3) DEFAULT NULL,
  `p25` varchar(3) DEFAULT NULL,
  `p26` varchar(3) DEFAULT NULL,
  `p27` varchar(3) DEFAULT NULL,
  `p28` varchar(3) DEFAULT NULL,
  `p29` varchar(3) DEFAULT NULL,
  `p30` varchar(3) DEFAULT NULL,
  `p31` varchar(3) DEFAULT NULL,
  `p32` varchar(3) DEFAULT NULL,
  `p33` varchar(3) DEFAULT NULL,
  `p34` varchar(3) DEFAULT NULL,
  `p35` varchar(3) DEFAULT NULL,
  `p36` varchar(3) DEFAULT NULL,
  `p37` varchar(3) DEFAULT NULL,
  `p38` varchar(3) DEFAULT NULL,
  `p39` varchar(3) DEFAULT NULL,
  `p40` varchar(3) DEFAULT NULL,
  `p41` varchar(3) DEFAULT NULL,
  `p42` varchar(3) DEFAULT NULL,
  `p43` varchar(3) DEFAULT NULL,
  `p44` varchar(3) DEFAULT NULL,
  `p45` varchar(3) DEFAULT NULL,
  `p46` varchar(3) DEFAULT NULL,
  `p47` varchar(3) DEFAULT NULL,
  `p48` varchar(3) DEFAULT NULL,
  `p49` varchar(3) DEFAULT NULL,
  `p50` varchar(3) DEFAULT NULL,
  `p51` varchar(3) DEFAULT NULL,
  `p52` varchar(3) DEFAULT NULL,
  `p53` varchar(3) DEFAULT NULL,
  `p54` varchar(3) DEFAULT NULL,
  `p55` varchar(3) DEFAULT NULL,
  `p56` varchar(3) DEFAULT NULL,
  `p57` varchar(3) DEFAULT NULL,
  `p58` varchar(3) DEFAULT NULL,
  `p59` varchar(3) DEFAULT NULL,
  `p60` varchar(3) DEFAULT NULL,
  `p61` varchar(3) DEFAULT NULL,
  `p62` varchar(3) DEFAULT NULL,
  `p63` varchar(3) DEFAULT NULL,
  `p64` varchar(3) DEFAULT NULL,
  `p65` varchar(3) DEFAULT NULL,
  `p66` varchar(3) DEFAULT NULL,
  `p67` varchar(3) DEFAULT NULL,
  `p68` varchar(3) DEFAULT NULL,
  `p69` varchar(3) DEFAULT NULL,
  `p70` varchar(3) DEFAULT NULL,
  `p71` varchar(3) DEFAULT NULL,
  `p72` varchar(3) DEFAULT NULL,
  `p73` varchar(3) DEFAULT NULL,
  `p74` varchar(3) DEFAULT NULL,
  `p75` varchar(3) DEFAULT NULL,
  `p76` varchar(3) DEFAULT NULL,
  `p77` varchar(3) DEFAULT NULL,
  `p78` varchar(3) DEFAULT NULL,
  `p79` varchar(3) DEFAULT NULL,
  `p80` varchar(3) DEFAULT NULL,
  `p81` varchar(3) DEFAULT NULL,
  `p82` varchar(3) DEFAULT NULL,
  `p83` varchar(3) DEFAULT NULL,
  `p84` varchar(3) DEFAULT NULL,
  `p85` varchar(3) DEFAULT NULL,
  `p86` varchar(3) DEFAULT NULL,
  `p87` varchar(3) DEFAULT NULL,
  `p88` varchar(3) DEFAULT NULL,
  `p89` varchar(3) DEFAULT NULL,
  `p90` varchar(3) DEFAULT NULL,
  `p91` varchar(3) DEFAULT NULL,
  `p92` varchar(3) DEFAULT NULL,
  `p93` varchar(3) DEFAULT NULL,
  `p94` varchar(3) DEFAULT NULL,
  `p95` varchar(3) DEFAULT NULL,
  `p96` varchar(3) DEFAULT NULL,
  `p97` varchar(3) DEFAULT NULL,
  `p98` varchar(3) DEFAULT NULL,
  `p99` varchar(3) DEFAULT NULL,
  `p100` varchar(3) DEFAULT NULL,
  `p101` varchar(3) DEFAULT NULL,
  `p102` varchar(3) DEFAULT NULL,
  `p103` varchar(3) DEFAULT NULL,
  `p104` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `encuestas`
--

INSERT INTO `encuestas` (`id_inst`, `id_sede`, `id_area`, `id_cargo`, `fecha`, `contrato`, `cual_contrato`, `mano`, `antiguedad`, `p14t`, `p15r`, `p16t`, `p1`, `p2`, `p3`, `p4`, `p5`, `p6`, `p7`, `p8`, `p9`, `p10`, `p11`, `p12`, `p13`, `p14`, `p15`, `p16`, `p17`, `p18`, `p19`, `p20`, `p21`, `p22`, `p23`, `p24`, `p25`, `p26`, `p27`, `p28`, `p29`, `p30`, `p31`, `p32`, `p33`, `p34`, `p35`, `p36`, `p37`, `p38`, `p39`, `p40`, `p41`, `p42`, `p43`, `p44`, `p45`, `p46`, `p47`, `p48`, `p49`, `p50`, `p51`, `p52`, `p53`, `p54`, `p55`, `p56`, `p57`, `p58`, `p59`, `p60`, `p61`, `p62`, `p63`, `p64`, `p65`, `p66`, `p67`, `p68`, `p69`, `p70`, `p71`, `p72`, `p73`, `p74`, `p75`, `p76`, `p77`, `p78`, `p79`, `p80`, `p81`, `p82`, `p83`, `p84`, `p85`, `p86`, `p87`, `p88`, `p89`, `p90`, `p91`, `p92`, `p93`, `p94`, `p95`, `p96`, `p97`, `p98`, `p99`, `p100`, `p101`, `p102`, `p103`, `p104`) VALUES
(72, 32, 29, 56, '2017-08-31', 'dependiente', NULL, 'Ambidiestro', 'de 11 a 15 años', 'Dolor de espalda', 'Quincenal', '20', 'Si', 'Si', 'Si', '3', 'Masculino', 'Menor de 18 años', 'Separado (a) / Divorciado (a)', '7 o más personas', 'Especialista / Maestría', 'Arrendada', 'Mínimo Legal Vigente', 'Recreación y deporte', 'Capacitaciones en Seguridad y Salud en el Trabajo', 'Si', 'Si', 'Si', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(72, 32, 29, 56, '2017-08-04', 'dependiente', NULL, 'derecho', 'de 1 a 5 años', NULL, NULL, NULL, 'Si', 'No', 'Si', '2', 'Femenino', '28 a 37 años', 'Casado (a) / Unión Libre', '4 a 6', 'Técnico / Tecnólogo', 'Propia', 'Entre 3 a 5 S.M.L.V.', 'Estudio', 'Exámenes periódicos', 'No', 'No', 'No', 'Si', 'Si', 'No', 'N/A', 'No', 'Si', 'No', 'N/A', 'Si', 'No', 'Si', 'N/A', 'Si', 'No', 'Si', 'N/A', 'Si', 'No', 'Si', 'No', 'No', 'Si', 'Si', 'No', 'N/A', 'No', 'Si', 'No', 'N/A', 'Si', 'No', 'Si', 'Si', 'No', 'N/A', 'Si', 'Si', 'No', 'Si', 'Si', 'N/A', 'Si', 'No', 'Si', 'Si', 'Si', 'No', 'No', 'Si', 'Si', 'Si', 'Si', 'No', 'N/A', 'No', 'N/A', 'Si', 'N/A', 'No', 'Si', 'Si', 'No', 'Si', 'N/A', 'Si', 'Si', 'No', 'No', 'No', 'Si', 'Si', 'N/A', 'No', 'No', 'No', 'Si', 'No', 'No', 'Si', 'Si', 'Si', 'Si', 'No', 'No', 'No', 'N/A', 'No', 'Si'),
(72, 32, 29, 56, '2017-08-14', 'dependiente', NULL, 'derecho', 'de 6 a 10 años', NULL, 'Semanal', '10', 'Si', 'No', 'No', '2', 'Femenino', '48 años o más', 'Casado (a) / Unión Libre', '1 a 3', 'Secundaria', 'Propia', 'Entre 1 a 3 S.M.L.V.', 'Labores domésticas', 'Vacunación', 'No', 'Si', 'Si', NULL, NULL, 'Si', NULL, NULL, NULL, NULL, 'Si', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'Si', NULL, NULL),
(72, 32, 29, 56, '2017-08-13', 'dependiente', NULL, 'izquierdo', 'de 11 a 15 años', 'Tendinitis', 'Ocasional', NULL, 'Si', 'Si', 'Si', '4', 'Masculino', '48 años o más', 'Casado (a) / Unión Libre', '1 a 3', 'Doctorado', 'Propia', 'Entre 3 a 5 S.M.L.V.', 'Recreación y deporte', 'Exámenes periódicos', 'Si', 'Si', 'No', 'No', 'Si', 'No', 'N/A', 'N/A', 'Si', 'No', 'No', 'Si', 'N/A', 'Si', 'Si', 'No', 'No', 'Si', 'No', 'Si', 'No', 'Si', 'N/A', 'Si', 'No', 'No', 'No', 'N/A', 'N/A', 'Si', 'Si', 'Si', 'Si', 'Si', 'No', 'N/A', 'Si', 'No', 'Si', 'Si', 'No', 'No', 'Si', 'No', 'Si', 'Si', 'Si', 'No', 'No', 'Si', 'Si', 'Si', 'No', 'N/A', 'N/A', 'Si', 'N/A', 'No', 'Si', 'No', 'Si', 'N/A', 'No', 'Si', 'No', 'N/A', 'No', 'No', 'Si', 'Si', 'No', 'No', 'N/A', 'Si', 'Si', 'No', 'No', 'No', 'N/A', 'N/A', 'No', 'N/A', 'No', 'No', 'Si', 'No', 'N/A', 'Si', 'Si', 'No', 'N/A'),
(72, 32, 29, 56, '2017-08-11', 'contratista', NULL, 'izquierdo', 'de 1 a 5 años', NULL, NULL, NULL, 'Si', 'No', 'Si', '5', 'Femenino', '28 a 37 años', 'Soltero (a)', 'Ninguna', 'Secundaria', 'Familiar', 'Entre 3 a 5 S.M.L.V.', 'Labores domésticas', 'Exámenes periódicos', 'No', 'No', 'No', NULL, 'Si', NULL, 'N/A', 'Si', NULL, 'Si', NULL, 'No', 'Si', NULL, NULL, 'No', 'Si', NULL, 'Si', NULL, 'No', NULL, 'Si', NULL, 'Si', NULL, NULL, NULL, 'No', NULL, NULL, 'N/A', NULL, 'Si', NULL, NULL, 'No', 'No', NULL, 'Si', NULL, 'N/A', 'Si', 'No', NULL, 'Si', NULL, 'No', NULL, NULL, 'Si', NULL, 'No', 'Si', NULL, NULL, 'No', NULL, 'Si', NULL, NULL, NULL, 'Si', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Si', NULL, 'N/A', NULL, NULL, NULL, 'Si', NULL, 'No', 'N/A', NULL, NULL, NULL, 'Si', NULL, NULL, NULL, 'Si', NULL),
(72, 32, 36, 53, '2017-08-09', 'dependiente', NULL, 'derecho', '˂ 1 año', 'Dolores de Espalda', NULL, '20', 'Si', 'Si', 'No', '3', 'Femenino', '48 años o más', 'Separado (a) / Divorciado (a)', '4 a 6', 'Secundaria', 'Familiar', 'Entre 1 a 3 S.M.L.V.', 'Ninguno', 'Ninguna', 'Si', 'No', 'Si', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Si', NULL, NULL, NULL, NULL, NULL, NULL, 'Si', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 46, 45, 59, '2017-08-14', 'dependiente', NULL, 'izquierdo', 'de 1 a 5 años', NULL, 'Mensual', NULL, 'Si', 'Si', 'Si', '6', 'Masculino', '48 años o más', 'Viudo (a)', '7 o más personas', 'Doctorado', 'Propia', 'Entre 3 a 5 S.M.L.V.', 'Labores domésticas', 'Spa (Relajación)', 'No', 'Si', 'No', 'Si', 'Si', 'No', 'No', 'Si', 'Si', 'No', 'Si', 'N/A', 'Si', 'Si', 'Si', 'Si', 'No', 'Si', 'No', 'No', 'N/A', 'No', 'Si', 'Si', 'Si', 'No', 'Si', 'N/A', 'Si', 'No', 'No', 'No', 'No', 'Si', 'Si', 'Si', 'Si', 'Si', 'N/A', 'No', 'N/A', 'No', 'Si', 'No', 'N/A', 'No', 'Si', 'No', 'N/A', 'No', 'Si', 'No', 'No', 'No', 'Si', 'Si', 'Si', 'No', 'No', 'No', 'Si', 'Si', 'Si', 'Si', 'No', 'Si', 'Si', 'No', 'No', 'No', 'Si', 'Si', 'Si', 'Si', 'Si', 'Si', 'N/A', 'No', 'No', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Si', 'N/A', 'N/A', 'No'),
(72, 32, 42, 49, '2017-08-08', 'dependiente', NULL, 'derecho', 'de 1 a 5 años', NULL, 'Mensual', NULL, 'Si', 'No', 'Si', '6', 'Femenino', '18 a 27 años', 'Casado (a) / Unión Libre', '1 a 3', 'Universitario', 'Propia', 'Entre 3 a 5 S.M.L.V.', 'Labores domésticas', 'Salud oral', 'No', 'Si', 'No', 'No', 'Si', 'N/A', 'No', 'Si', 'No', 'Si', 'No', 'Si', 'N/A', 'Si', 'No', 'N/A', 'N/A', 'N/A', 'No', 'N/A', 'No', 'Si', 'N/A', 'No', 'N/A', 'N/A', 'Si', 'N/A', 'No', 'N/A', 'Si', 'N/A', 'No', 'N/A', 'Si', 'N/A', 'No', 'N/A', 'No', 'Si', 'No', 'N/A', 'N/A', 'No', 'N/A', 'Si', 'N/A', 'No', 'N/A', 'No', 'No', 'No', 'No', 'No', 'Si', 'No', 'No', 'No', 'No', 'N/A', 'No', 'N/A', 'Si', 'N/A', 'No', 'No', 'N/A', 'Si', 'N/A', 'N/A', 'No', 'No', 'Si', 'No', 'N/A', 'N/A', 'No', 'No', 'N/A', 'No', 'Si', 'No', 'Si', 'N/A', 'N/A', 'N/A', 'No', 'No', 'N/A', 'No', 'N/A'),
(73, 21, 42, 38, '2017-08-16', 'contratista', NULL, 'derecho', 'de 1 a 5 años', NULL, NULL, NULL, 'Si', 'Si', 'Si', '3', 'Femenino', '28 a 37 años', 'Casado (a) / Unión Libre', '4 a 6', 'Especialista / Maestría', 'Propia', 'Entre 1 a 3 S.M.L.V.', 'Labores domésticas', 'Exámenes periódicos', 'No', 'No', 'No', 'No', 'No', 'No', 'Si', 'Si', 'Si', 'Si', 'Si', 'Si', 'No', 'No', 'Si', 'Si', 'No', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'No', 'Si', 'Si', 'Si', 'Si', 'Si', 'Si', 'Si', 'Si', 'Si', 'Si', 'Si', 'No', 'Si', 'Si', 'Si', 'No', 'Si', 'No', 'Si', 'Si', 'Si', 'Si', 'No', 'Si', 'Si', 'Si', 'No', 'No', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Si', 'Si', 'Si', 'No', 'Si', 'No', NULL, 'Si', 'Si', 'Si', 'No', 'No', 'No', 'Si', 'N/A', 'No', NULL, 'No', 'No', 'Si', 'No', 'No', 'N/A', 'No', 'No', 'No', 'No', 'No', 'N/A', 'Si', 'Si', 'Si'),
(82, 48, 30, 38, '2017-08-17', 'dependiente', NULL, 'derecho', 'de 1 a 5 años', NULL, 'Semanal', NULL, 'Si', 'Si', 'Si', '3', 'Femenino', '18 a 27 años', 'Casado (a) / Unión Libre', '1 a 3', 'Universitario', 'Propia', 'Entre 1 a 3 S.M.L.V.', 'Recreación y deporte', 'Capacitaciones en Seguridad y Salud en el Trabajo', 'No', 'Si', 'No', 'No', 'No', 'No', 'Si', 'Si', 'No', 'No', 'Si', 'Si', 'N/A', 'N/A', 'N/A', 'No', 'Si', 'No', 'No', 'Si', 'N/A', 'N/A', 'N/A', 'No', 'No', 'Si', 'Si', 'No', 'Si', 'No', 'Si', 'No', 'No', 'No', 'No', 'Si', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Si', 'No', 'Si', 'Si', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Si', 'Si', 'Si', 'No', 'No', 'Si', 'Si', 'No', 'No', 'Si', 'No', 'No', 'No', 'No', 'No', 'Si', 'Si', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Si', 'No', 'Si', 'No', 'No', 'No', 'No', 'No'),
(82, 32, 50, 32, '2017-08-17', 'dependiente', NULL, 'derecho', 'de 1 a 5 años', NULL, 'Quincenal', NULL, 'Si', 'Si', 'Si', '2', 'Femenino', '28 a 37 años', 'Casado (a) / Unión Libre', '1 a 3', 'Universitario', 'Arrendada', 'Entre 1 a 3 S.M.L.V.', 'Otro trabajo', 'Capacitaciones en Seguridad y Salud en el Trabajo', 'No', 'Si', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 33, 29, 60, '2017-08-17', 'dependiente', NULL, 'derecho', 'de 6 a 10 años', NULL, NULL, NULL, 'Si', 'Si', 'Si', '4', 'Masculino', '38 a 47 años', 'Casado (a) / Unión Libre', '1 a 3', 'Especialista / Maestría', 'Propia', 'Entre 3 a 5 S.M.L.V.', 'Otro trabajo', 'Capacitaciones en Seguridad y Salud en el Trabajo', 'No', 'No', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 32, 30, 38, '2017-08-17', 'dependiente', NULL, 'izquierdo', 'de 1 a 5 años', NULL, NULL, NULL, 'Si', 'Si', 'Si', '2', 'Masculino', '18 a 27 años', 'Soltero (a)', 'Ninguna', 'Técnico / Tecnólogo', 'Propia', 'Entre 1 a 3 S.M.L.V.', 'Otro trabajo', 'Vacunación', 'No', 'No', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `equipos_elementos`
--

CREATE TABLE `equipos_elementos` (
  `id_eq` int(11) NOT NULL,
  `name_eq` varchar(320) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `equipos_elementos`
--

INSERT INTO `equipos_elementos` (`id_eq`, `name_eq`) VALUES
(1, 'Dotar a los trabajadores de EPP como guantes , delantal impermeable con mangas, gafas de seguridad, botas de caucho'),
(2, ''),
(3, 'Uso de elementos de protección personal'),
(4, 'Uso de elementos de protección personal, proteger cabeza y cara con gorros de ala ancha o viseras, serciorarse que los trabajadores utilicen ropa adecuada'),
(5, 'Uso adecuado de protectores solares, uso de gorra como parte del uniforme'),
(6, 'Uso de EPP adecuados (guantes de látex o la combinación de neopreno / látex, delantal impermeable preferiblemente con mangas en látex o la combinación de látex y neopreno, gafas de seguridad, tapabocas), para manipulación de productos químicos de aseo y los requeridos para la realización de tareas que los requieran'),
(7, 'Uso de elementos y equipos de protección personal');

-- --------------------------------------------------------

--
-- Table structure for table `existencia`
--

CREATE TABLE `existencia` (
  `id_ex` int(11) NOT NULL,
  `name_ex` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `existencia`
--

INSERT INTO `existencia` (`id_ex`, `name_ex`) VALUES
(1, 'Ley 9/1979, Resolución 2400/1979'),
(2, 'Ley 9/1979, Resolución 2400/1979  Decreto 3075/1997'),
(3, 'Ley 9/1979, Resolución 2400/1979'),
(4, 'Ley 9/1979, Resolución 2400/1979 Resolución 1792/1990  Resolución 8321/1983'),
(5, 'Resolución 2646/2008'),
(6, 'Resolución 2400/1979'),
(7, 'No'),
(8, 'Código de Tránsito'),
(9, 'Resolución 1409/2012'),
(10, 'Resolución 2400/1979, Resolución 1016/1989');

-- --------------------------------------------------------

--
-- Table structure for table `instituciones`
--

CREATE TABLE `instituciones` (
  `id_inst` int(11) NOT NULL,
  `name_inst` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `instituciones`
--

INSERT INTO `instituciones` (`id_inst`, `name_inst`) VALUES
(74, 'CENTRO EDUCATIVO EL CASTILLO DE SAN MATEO'),
(73, 'CENTRO EDUCATIVO LICEO MARÍA INMACULADA'),
(72, 'LICEO MADRE TERESA DE CALCUTA'),
(82, 'COLEGIO CELESTIN FREINET'),
(83, 'COLEGIO PILIS');

-- --------------------------------------------------------

--
-- Table structure for table `inst_area`
--

CREATE TABLE `inst_area` (
  `id_inst` int(11) NOT NULL,
  `id_area` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inst_area`
--

INSERT INTO `inst_area` (`id_inst`, `id_area`) VALUES
(82, 49),
(82, 30),
(82, 50),
(82, 29),
(72, 29),
(72, 42),
(0, 33),
(0, 34),
(0, 35),
(0, 37),
(0, 35),
(0, 36),
(72, 36),
(82, 36),
(73, 42),
(82, 51),
(83, 52);

-- --------------------------------------------------------

--
-- Table structure for table `inst_cargo`
--

CREATE TABLE `inst_cargo` (
  `id_inst` int(11) NOT NULL,
  `id_cargo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inst_cargo`
--

INSERT INTO `inst_cargo` (`id_inst`, `id_cargo`) VALUES
(72, 56),
(72, 55),
(72, 46),
(72, 52),
(72, 49),
(72, 47),
(0, 35),
(0, 36),
(0, 37),
(0, 38),
(0, 39),
(0, 40),
(72, 53),
(72, 38),
(72, 51),
(82, 61),
(82, 60),
(73, 38),
(82, 38),
(82, 32),
(82, 53);

-- --------------------------------------------------------

--
-- Table structure for table `inst_sede`
--

CREATE TABLE `inst_sede` (
  `id_inst` int(11) NOT NULL,
  `id_sede` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inst_sede`
--

INSERT INTO `inst_sede` (`id_inst`, `id_sede`) VALUES
(82, 32),
(82, 48),
(82, 33),
(72, 32),
(0, 21),
(0, 22),
(0, 36),
(0, 37),
(0, 24),
(0, 25),
(0, 40),
(0, 24),
(0, 25),
(0, 41),
(48, 24),
(73, 21),
(83, 49),
(83, 33);

-- --------------------------------------------------------

--
-- Table structure for table `main_login`
--

CREATE TABLE `main_login` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_login`
--

INSERT INTO `main_login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `matriz_riesgos`
--

CREATE TABLE `matriz_riesgos` (
  `id_inst` int(11) NOT NULL,
  `id_sede` int(11) NOT NULL,
  `id_area` int(11) NOT NULL,
  `id_cargo` int(11) NOT NULL,
  `pregunta` int(11) NOT NULL,
  `tareas` varchar(200) NOT NULL,
  `rutinario` varchar(2) NOT NULL,
  `efectos` varchar(200) NOT NULL,
  `fuente` varchar(200) NOT NULL COMMENT 'Controles existentes',
  `medio` varchar(200) NOT NULL COMMENT 'Controles existentes',
  `individuo` varchar(200) NOT NULL COMMENT 'Controles existentes',
  `deficiencia` int(11) NOT NULL COMMENT 'Evaluación del riesgo',
  `exposicion` int(11) NOT NULL COMMENT 'Evaluación del riesgo',
  `consecuencia` int(11) NOT NULL COMMENT 'Evaluación del riesgo',
  `expuestos` int(11) NOT NULL COMMENT 'Criterios para establecer controles',
  `Requisito` varchar(2) NOT NULL COMMENT 'Criterios para establecer controles',
  `eliminacion` varchar(200) NOT NULL COMMENT 'Medidas Intervención',
  `sustitucion` varchar(200) NOT NULL COMMENT 'Medidas Intervención',
  `controles_i` varchar(100) NOT NULL COMMENT 'Medidas Intervención',
  `controles_asa` varchar(100) NOT NULL COMMENT 'Medidas Intervención',
  `elementos` varchar(100) NOT NULL COMMENT 'Medidas Intervención'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `matriz_riesgos`
--

INSERT INTO `matriz_riesgos` (`id_inst`, `id_sede`, `id_area`, `id_cargo`, `pregunta`, `tareas`, `rutinario`, `efectos`, `fuente`, `medio`, `individuo`, `deficiencia`, `exposicion`, `consecuencia`, `expuestos`, `Requisito`, `eliminacion`, `sustitucion`, `controles_i`, `controles_asa`, `elementos`) VALUES
(72, 32, 29, 56, 1, '', '', '', '', '', '', 2, 0, 0, 1, '', '', '', '', '', ''),
(72, 32, 29, 56, 10, 'Uso máquina de escribir', 'no', '', 'bajo', 'caliente', 'definido', 2, 3, 10, 1, '', 'n/a', 'si', '', '', ''),
(72, 32, 29, 56, 22, '', '', '', '', '', '', 6, 0, 0, 2, '', '', '', '', '', ''),
(72, 32, 29, 56, 36, '', '', '', '', '', '', 0, 0, 100, 2, '', '', '', '', '', ''),
(72, 32, 29, 56, 44, 'Uso máquina de escribir', 'no', '', 'bajo', 'frio / templado', 'indefinido', 10, 3, 60, 2, '', 'no', 'n/a', '', '', ''),
(72, 32, 36, 53, 19, 'Lavar baños, limpiar equipos', 'no', '', 'medio / bajo', 'frio', 'indefinido', 2, 4, 60, 1, '', 'si', 'no', '', '', ''),
(72, 32, 36, 53, 26, 'Lavar baños, limpiar equipos', 'no', '', 'alta', 'templado', 'definido', 2, 4, 100, 1, '', 'n/a', 'si', '', '', ''),
(73, 21, 42, 38, 4, '', '', '', '', '', '', 10, 0, 0, 1, '', '', '', '', '', ''),
(76, 46, 45, 59, 1, '', '', '', '', '', '', 0, 0, 60, 1, '', '', '', '', '', ''),
(76, 46, 45, 59, 5, '', '', '', '', '', '', 0, 0, 10, 1, '', '', '', '', '', ''),
(76, 46, 45, 59, 8, '', 'no', '', '', '', '', 6, 4, 10, 1, '', '', '', '', '', ''),
(76, 46, 45, 59, 11, '', '', '', '', '', '', 0, 3, 0, 1, '', '', '', '', '', ''),
(76, 46, 45, 59, 20, '', '', '', '', '', '', 2, 0, 0, 1, '', '', '', '', '', ''),
(76, 46, 45, 59, 24, '', '', '', '', '', '', 6, 0, 0, 1, '', '', '', '', '', ''),
(76, 46, 45, 59, 32, '', '', '', '', '', '', 0, 4, 100, 1, '', '', '', '', '', ''),
(76, 46, 45, 59, 44, '', '', '', '', '', '', 0, 4, 0, 1, '', '', '', '', '', ''),
(76, 46, 45, 59, 59, '', '', '', '', '', '', 0, 2, 0, 1, '', '', '', '', '', ''),
(76, 46, 45, 59, 69, '', 'no', '', '', '', '', 10, 0, 60, 1, '', '', '', '', '', ''),
(76, 46, 45, 59, 85, '', 'no', '', '', 'diferente', '', 0, 0, 60, 1, '', '', 'n/a', '', '', ''),
(82, 48, 30, 38, 8, '', 'si', '', '', '', '', 2, 4, 25, 1, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `niveles`
--

CREATE TABLE `niveles` (
  `id_nivel` varchar(2) NOT NULL,
  `name_nivel` varchar(30) NOT NULL,
  `valor_nivel` varchar(15) NOT NULL,
  `sign_nivel` text NOT NULL,
  `minimo` int(11) NOT NULL,
  `maximo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `niveles`
--

INSERT INTO `niveles` (`id_nivel`, `name_nivel`, `valor_nivel`, `sign_nivel`, `minimo`, `maximo`) VALUES
('c1', 'Mortal o Catastrófico (M)', '100', 'Muerte (S).', 0, 0),
('c2', 'Muy Grave (MG)', '60', 'Lesiones o enfermedades graves irreparables (incapacidad permanente, parcial o invalidez).', 0, 0),
('c3', 'Grave (G)', '25', 'Lesiones o enfermedades con incapacidad laboral temporal (ILT).', 0, 0),
('c4', 'Leve (L)', '10', 'Lesiones o enfermedades que no requieren incapacidad.', 0, 0),
('d1', 'Muy Alto (MA)', '10', 'Se han detectado peligros que puedan generar incidentes, accidentes o enfermedades con graves consecuencias o no existen medidas preventivas para controlar dicho peligro o las medidas que existen no son adecuadas o no sirven.', 0, 0),
('d2', 'Alto (A)', '6', 'Se han detectado peligros que pueden generar incidentes, accidentes o enfermedades con consecuencias significativas o existen algunas medidas preventivas poco eficaces para controlar dicho peligro', 0, 0),
('d3', 'Medio (M)', '2', 'Se han detectado peligros que pueden generar incidentes, accidentes o enfermedades con consecuencias leves o existen medidas preventivas que controlen gran parte de dichos peligros.', 0, 0),
('d4', 'Bajo (B)', '0', 'Se han detectado peligros, pero sin consecuencias o las medidas preventivas existentes son altas y controlan eficazmente el peligro.', 0, 0),
('e1', 'Continua (EC)', '4', 'La exposición al peligro detectado se presenta sin interrupción o varias veces con tiempo prolongado durante la jornada laboral.', 0, 0),
('e2', 'Frecuente (EF)', '3', 'La exposición al peligro detectado se presenta varias veces durante la jornada laboral por tiempos cortos.', 0, 0),
('e3', 'Ocasional (EO)', '2', 'La exposición al peligro se presenta alguna vez durante la jornada laboral o por un periodo de tiempo corto.', 0, 0),
('e4', 'Esporádica (EE)', '1', 'La exposición al peligro se presenta de manera eventual.', 0, 0),
('r1', 'I', '', 'Situación crítica.  Suspender actividades hasta que el riesgo esté bajo control.  Intervención urgente.', 600, 4000),
('r2', 'II', '', 'Corregir y adoptar medidas de control de inmediato.  Sin embargo, suspenda actividades si el nivel de riesgo está por encima o igual a 360.', 150, 500),
('r3', 'III', '', 'Mejorar si es posible.  Sería conveniente justificar la intervención y su rentabilidad.', 40, 120),
('r4', 'IV', '', 'Mantener las medidas de control existentes, pero se debería considerar soluciones o mejoras y se deben hacer comprobaciones periódicas para asegurar que el riesgo aun es aceptable.', 0, 20);

-- --------------------------------------------------------

--
-- Table structure for table `peor_consecuencia`
--

CREATE TABLE `peor_consecuencia` (
  `id_pe` int(11) NOT NULL,
  `name_pe` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `peor_consecuencia`
--

INSERT INTO `peor_consecuencia` (`id_pe`, `name_pe`) VALUES
(1, 'Enfermedades del sistema inmune'),
(2, 'Enfermedades virales'),
(3, 'Enfermedad viral infecciosa, lesiones en tejidos blandos'),
(4, 'Infecciones, envenenamiento, alergias, muerte'),
(5, 'Infecciones dérmicas'),
(6, 'Estrés, hipoacusia'),
(7, 'Transtornos visuales, cefalalgias.'),
(8, 'Fatiga visual, cefaleas'),
(9, 'Sindrome de Raynaud'),
(10, 'Traumatismo de la columna vertebral, dolores abdominales y digestivos, problemas de equilibrio'),
(11, 'Paralisis facial'),
(12, 'Daño en organos y tejidos, cancer'),
(13, 'Quemaduras en la piel, cancer'),
(14, 'Quemaduras, envenenamiento, muerte'),
(15, 'Enfermedades del sistema respiratorio'),
(16, 'Enfermedades del sistema respiratorio, muerte'),
(17, 'Enfermedades del sistema nervioso y muscular, trastornos de tipo cardiovascular (infartos)'),
(18, 'Enfermedades del sistema nervioso y muscular causado por el estrés'),
(19, 'Desordenes osteo musculares'),
(20, 'Perdida de capacidad laboral'),
(21, 'Lesiones osteo musculares'),
(22, 'Lesiones en cuerdas vocales'),
(23, 'Lesiones en tejidos blandos'),
(24, 'Quemaduras, lesiones en organos internos, muerte'),
(25, 'Golpes y lesiones en tejidos blandos'),
(26, 'Heridas en tejidos blandos'),
(27, 'Tropiezos, caidas, golpes'),
(28, 'Lesiones en tejidos blandos, golpes, fracturas'),
(29, 'Golpes, cortaduras, heridas'),
(30, 'Alergias y enfermedades respiratorias'),
(31, 'Intoxicación, explosión, muerte'),
(32, 'Incendios, explosiones, muerte'),
(33, 'Incendios, muerte'),
(34, 'Contusiones, heridas, muerte'),
(35, 'Atropellamientos, muerte'),
(36, 'Caidas en alturas, fracturas, muerte');

-- --------------------------------------------------------

--
-- Table structure for table `probabilidad`
--

CREATE TABLE `probabilidad` (
  `id` int(11) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `significado` varchar(220) NOT NULL,
  `minimo` int(11) NOT NULL,
  `maximo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `probabilidad`
--

INSERT INTO `probabilidad` (`id`, `nombre`, `significado`, `minimo`, `maximo`) VALUES
(1, 'Muy Alto (MA)', 'Situación deficiente con exposición continua, o muy deficiente con exposición frecuente.  Normalmente la materialización del riesgo ocurre con frecuencia.', 24, 40),
(2, 'Alto (A)', 'Situación deficiente con exposición frecuente u ocasional o bien situación muy deficiente con exposición ocasional o esporádica.  La materialización del riesgo es posible que suceda varias veces en la vida laboral.', 10, 20),
(3, 'Medio (M)', 'Situación deficiente con exposición esporádica, o bien situación mejorable con exposición continuada o frecuente.  Es posible que suceda el daño alguna vez.', 6, 8),
(4, 'Bajo (B)', 'Situación mejorable con exposición ocasional o esporádica, o situación si anomalía destacable con cualquier nivel de exposición.  No es esperable que se materialice el riesgo, aunque puede ser concebible.', 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `relacion_peligros`
--

CREATE TABLE `relacion_peligros` (
  `id_pregunta` int(11) NOT NULL,
  `id_cl` int(11) NOT NULL,
  `id_de` int(11) NOT NULL,
  `id_pe` int(11) NOT NULL,
  `id_ex` int(11) NOT NULL,
  `id_ci` int(11) NOT NULL,
  `id_ca` int(11) NOT NULL,
  `id_eq` int(11) NOT NULL,
  `id_ef` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `relacion_peligros`
--

INSERT INTO `relacion_peligros` (`id_pregunta`, `id_cl`, `id_de`, `id_pe`, `id_ex`, `id_ci`, `id_ca`, `id_eq`, `id_ef`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 2, 2, 2, 2, 2, 2, 2, 2),
(3, 3, 3, 3, 1, 1, 3, 2, 3),
(4, 4, 4, 4, 2, 2, 4, 2, 1),
(5, 5, 5, 5, 2, 2, 4, 2, 1),
(6, 6, 6, 6, 4, 3, 5, 3, 4),
(7, 7, 7, 7, 1, 4, 6, 2, 5),
(8, 7, 8, 8, 1, 4, 6, 2, 5),
(9, 7, 7, 7, 1, 4, 6, 2, 5),
(10, 8, 9, 9, 1, 5, 7, 2, 6),
(11, 9, 10, 10, 1, 5, 7, 2, 6),
(12, 10, 11, 11, 1, 6, 8, 4, 7),
(13, 11, 12, 12, 1, 7, 9, 2, 8),
(14, 12, 13, 13, 1, 1, 10, 5, 9),
(15, 13, 14, 14, 1, 1, 11, 6, 10),
(16, 14, 15, 14, 1, 1, 11, 6, 10),
(17, 15, 16, 15, 1, 1, 11, 6, 10),
(18, 16, 17, 15, 1, 1, 11, 6, 10),
(19, 17, 18, 14, 1, 1, 11, 6, 10),
(20, 14, 19, 16, 1, 1, 11, 6, 10),
(21, 18, 20, 17, 5, 1, 12, 2, 11),
(22, 19, 21, 17, 5, 1, 12, 2, 11),
(23, 20, 22, 18, 5, 1, 12, 2, 11),
(24, 21, 23, 18, 5, 1, 12, 2, 11),
(25, 22, 24, 18, 5, 1, 12, 2, 11),
(26, 23, 24, 18, 5, 1, 12, 2, 11),
(27, 24, 25, 17, 5, 1, 12, 2, 11),
(28, 24, 25, 17, 5, 1, 12, 2, 11),
(29, 25, 26, 17, 5, 1, 12, 2, 11),
(30, 26, 27, 17, 5, 1, 12, 2, 11),
(31, 27, 28, 17, 5, 1, 12, 2, 11),
(32, 28, 25, 18, 5, 1, 12, 2, 11),
(33, 29, 29, 18, 5, 1, 12, 2, 11),
(34, 30, 28, 18, 5, 1, 12, 2, 11),
(35, 31, 30, 18, 5, 1, 12, 2, 11),
(36, 32, 25, 17, 5, 1, 12, 2, 11),
(37, 33, 25, 18, 5, 1, 12, 2, 11),
(38, 34, 25, 18, 5, 1, 12, 2, 11),
(39, 35, 25, 18, 5, 1, 12, 2, 11),
(40, 36, 31, 19, 6, 8, 13, 2, 12),
(41, 37, 32, 20, 6, 8, 13, 2, 13),
(42, 37, 33, 19, 6, 8, 13, 2, 14),
(43, 38, 34, 19, 6, 8, 13, 2, 12),
(44, 39, 35, 20, 6, 9, 14, 2, 13),
(45, 40, 36, 20, 6, 10, 15, 2, 13),
(46, 41, 36, 20, 6, 10, 15, 2, 13),
(47, 41, 36, 20, 6, 10, 15, 2, 13),
(48, 41, 37, 21, 6, 10, 15, 2, 12),
(49, 42, 38, 21, 6, 9, 14, 2, 12),
(50, 42, 39, 21, 6, 9, 14, 2, 12),
(51, 42, 40, 21, 6, 9, 14, 2, 12),
(52, 42, 41, 21, 6, 9, 14, 2, 12),
(53, 42, 42, 21, 6, 9, 14, 2, 12),
(54, 42, 43, 21, 6, 9, 14, 2, 15),
(55, 42, 44, 21, 6, 9, 14, 2, 12),
(56, 42, 45, 21, 6, 9, 14, 2, 12),
(57, 42, 46, 22, 7, 11, 16, 2, 16),
(58, 43, 46, 22, 7, 11, 16, 2, 16),
(59, 43, 46, 22, 7, 11, 16, 2, 16),
(60, 43, 46, 22, 7, 11, 16, 2, 16),
(61, 44, 47, 23, 1, 12, 17, 3, 17),
(62, 45, 48, 24, 1, 13, 18, 3, 18),
(63, 45, 49, 24, 1, 13, 18, 3, 18),
(64, 45, 50, 24, 1, 13, 18, 3, 18),
(65, 45, 51, 24, 1, 13, 18, 3, 18),
(66, 46, 52, 25, 1, 1, 19, 2, 19),
(67, 47, 53, 26, 1, 14, 20, 2, 20),
(68, 47, 54, 27, 1, 14, 20, 2, 21),
(69, 48, 55, 27, 1, 15, 20, 2, 21),
(70, 49, 56, 28, 1, 16, 20, 2, 21),
(71, 50, 57, 28, 1, 14, 21, 2, 21),
(72, 51, 58, 25, 1, 1, 22, 2, 21),
(73, 52, 59, 28, 1, 1, 22, 2, 21),
(74, 52, 60, 29, 1, 1, 22, 2, 21),
(75, 52, 61, 28, 1, 17, 22, 2, 21),
(76, 53, 62, 30, 1, 17, 22, 2, 22),
(77, 53, 63, 31, 1, 18, 23, 2, 23),
(78, 54, 64, 32, 1, 18, 23, 2, 24),
(79, 54, 65, 32, 1, 18, 23, 2, 24),
(80, 55, 66, 33, 1, 18, 23, 2, 24),
(81, 56, 67, 34, 7, 1, 24, 2, 25),
(82, 57, 67, 34, 7, 1, 24, 2, 25),
(83, 58, 68, 35, 8, 1, 25, 2, 26),
(84, 59, 69, 36, 9, 19, 26, 7, 27),
(85, 59, 69, 36, 9, 19, 26, 7, 27),
(86, 60, 70, 34, 10, 20, 27, 2, 28),
(87, 60, 71, 34, 10, 20, 27, 2, 28),
(88, 60, 70, 34, 10, 20, 27, 2, 28);

-- --------------------------------------------------------

--
-- Table structure for table `riesgo`
--

CREATE TABLE `riesgo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(3) NOT NULL,
  `significado` varchar(190) NOT NULL,
  `minimo` int(11) NOT NULL,
  `maximo` int(11) NOT NULL,
  `aceptabilidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `riesgo`
--

INSERT INTO `riesgo` (`id`, `nombre`, `significado`, `minimo`, `maximo`, `aceptabilidad`) VALUES
(1, 'I', 'Situación crítica.  Suspender actividades hasta que el riesgo esté bajo control.  Intervención urgente.', 600, 4000, 'No Aceptable'),
(2, 'II', 'Corregir y adoptar medidas de control de inmediato.  Sin embargo, suspenda actividades si el nivel de riesgo está por encima o igual a 360.', 150, 500, 'No Aceptable o Aceptable con control especifico'),
(3, 'III', 'Mejorar si es posible.  Sería conveniente justificar la intervención y su rentabilidad.', 40, 120, 'Aceptable'),
(4, 'IV', 'Mantener las medidas de control existentes, pero se debería considerar soluciones o mejoras y se deben hacer comprobaciones periódicas para asegurar que el riesgo aun es aceptable.', 0, 20, 'Aceptable');

-- --------------------------------------------------------

--
-- Table structure for table `sedes`
--

CREATE TABLE `sedes` (
  `id_sede` int(11) NOT NULL,
  `name_sede` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sedes`
--

INSERT INTO `sedes` (`id_sede`, `name_sede`) VALUES
(31, 'Sede 2'),
(30, 'Z'),
(29, 'Y'),
(28, 'C'),
(27, 'Sede 1'),
(26, 'O'),
(25, 'N'),
(24, 'M'),
(23, 'X'),
(22, 'b'),
(21, 'A'),
(32, 'SEDE A'),
(33, 'SEDE B'),
(34, 'Sede Uno'),
(35, 'Sede Dos'),
(36, 'General'),
(37, 'Regional'),
(38, 'Juridica'),
(39, 'Docencia'),
(40, '?'),
(41, 'Ñ'),
(42, 'Centro'),
(43, 'Occidente'),
(44, 'Álfrédo Ñáñes'),
(45, 'D'),
(46, 'Sede F'),
(47, 'GG'),
(48, 'SEDE C'),
(49, 'SEDA A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id_area`);

--
-- Indexes for table `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id_cargo`);

--
-- Indexes for table `clasificacion`
--
ALTER TABLE `clasificacion`
  ADD PRIMARY KEY (`id_cl`);

--
-- Indexes for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id_comment`);

--
-- Indexes for table `control_admin`
--
ALTER TABLE `control_admin`
  ADD PRIMARY KEY (`id_ca`);

--
-- Indexes for table `control_ing`
--
ALTER TABLE `control_ing`
  ADD PRIMARY KEY (`id_ci`);

--
-- Indexes for table `descripcion`
--
ALTER TABLE `descripcion`
  ADD PRIMARY KEY (`id_de`);

--
-- Indexes for table `efectos`
--
ALTER TABLE `efectos`
  ADD PRIMARY KEY (`id_ef`);

--
-- Indexes for table `equipos_elementos`
--
ALTER TABLE `equipos_elementos`
  ADD PRIMARY KEY (`id_eq`);

--
-- Indexes for table `existencia`
--
ALTER TABLE `existencia`
  ADD PRIMARY KEY (`id_ex`);

--
-- Indexes for table `instituciones`
--
ALTER TABLE `instituciones`
  ADD PRIMARY KEY (`id_inst`);

--
-- Indexes for table `main_login`
--
ALTER TABLE `main_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matriz_riesgos`
--
ALTER TABLE `matriz_riesgos`
  ADD PRIMARY KEY (`id_inst`,`id_sede`,`id_area`,`id_cargo`,`pregunta`);

--
-- Indexes for table `niveles`
--
ALTER TABLE `niveles`
  ADD PRIMARY KEY (`id_nivel`);

--
-- Indexes for table `peor_consecuencia`
--
ALTER TABLE `peor_consecuencia`
  ADD PRIMARY KEY (`id_pe`);

--
-- Indexes for table `probabilidad`
--
ALTER TABLE `probabilidad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relacion_peligros`
--
ALTER TABLE `relacion_peligros`
  ADD PRIMARY KEY (`id_pregunta`);

--
-- Indexes for table `riesgo`
--
ALTER TABLE `riesgo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`id_sede`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id_area` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id_cargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `clasificacion`
--
ALTER TABLE `clasificacion`
  MODIFY `id_cl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `control_admin`
--
ALTER TABLE `control_admin`
  MODIFY `id_ca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `control_ing`
--
ALTER TABLE `control_ing`
  MODIFY `id_ci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `descripcion`
--
ALTER TABLE `descripcion`
  MODIFY `id_de` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `efectos`
--
ALTER TABLE `efectos`
  MODIFY `id_ef` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `equipos_elementos`
--
ALTER TABLE `equipos_elementos`
  MODIFY `id_eq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `existencia`
--
ALTER TABLE `existencia`
  MODIFY `id_ex` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `instituciones`
--
ALTER TABLE `instituciones`
  MODIFY `id_inst` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `main_login`
--
ALTER TABLE `main_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `peor_consecuencia`
--
ALTER TABLE `peor_consecuencia`
  MODIFY `id_pe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `probabilidad`
--
ALTER TABLE `probabilidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `relacion_peligros`
--
ALTER TABLE `relacion_peligros`
  MODIFY `id_pregunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `riesgo`
--
ALTER TABLE `riesgo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sedes`
--
ALTER TABLE `sedes`
  MODIFY `id_sede` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
