.class public Lch/qos/logback/classic/ClassicConstants;
.super Ljava/lang/Object;
.source "ClassicConstants.java"


# static fields
.field public static final DEFAULT_MAX_CALLEDER_DATA_DEPTH:I = 0x8

.field public static final FINALIZE_SESSION:Ljava/lang/String; = "FINALIZE_SESSION"

.field public static final FINALIZE_SESSION_MARKER:Lorg/slf4j/Marker;

.field public static final GAFFER_CONFIGURATOR_FQCN:Ljava/lang/String; = "ch.qos.logback.classic.gaffer.GafferConfigurator"

.field public static final JNDI_CONFIGURATION_RESOURCE:Ljava/lang/String; = "java:comp/env/logback/configuration-resource"

.field public static final JNDI_CONTEXT_NAME:Ljava/lang/String; = "java:comp/env/logback/context-name"

.field public static final LOGBACK_CONTEXT_SELECTOR:Ljava/lang/String; = "logback.ContextSelector"

.field public static final MAX_DOTS:I = 0x10

.field public static final REQUEST_METHOD:Ljava/lang/String; = "req.method"

.field public static final REQUEST_QUERY_STRING:Ljava/lang/String; = "req.queryString"

.field public static final REQUEST_REMOTE_HOST_MDC_KEY:Ljava/lang/String; = "req.remoteHost"

.field public static final REQUEST_REQUEST_URI:Ljava/lang/String; = "req.requestURI"

.field public static final REQUEST_REQUEST_URL:Ljava/lang/String; = "req.requestURL"

.field public static final REQUEST_USER_AGENT_MDC_KEY:Ljava/lang/String; = "req.userAgent"

.field public static final REQUEST_X_FORWARDED_FOR:Ljava/lang/String; = "req.xForwardedFor"

.field public static final USER_MDC_KEY:Ljava/lang/String; = "user"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-string v0, "FINALIZE_SESSION"

    invoke-static {v0}, Lorg/slf4j/MarkerFactory;->getMarker(Ljava/lang/String;)Lorg/slf4j/Marker;

    move-result-object v0

    sput-object v0, Lch/qos/logback/classic/ClassicConstants;->FINALIZE_SESSION_MARKER:Lorg/slf4j/Marker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
