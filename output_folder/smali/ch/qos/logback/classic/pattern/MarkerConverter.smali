.class public Lch/qos/logback/classic/pattern/MarkerConverter;
.super Lch/qos/logback/classic/pattern/ClassicConverter;
.source "MarkerConverter.java"


# static fields
.field private static EMPTY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-string v0, ""

    sput-object v0, Lch/qos/logback/classic/pattern/MarkerConverter;->EMPTY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lch/qos/logback/classic/pattern/ClassicConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;
    .locals 2
    .param p1, "le"    # Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 30
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getMarker()Lorg/slf4j/Marker;

    move-result-object v0

    .line 31
    .local v0, "marker":Lorg/slf4j/Marker;
    if-nez v0, :cond_0

    .line 32
    sget-object v1, Lch/qos/logback/classic/pattern/MarkerConverter;->EMPTY:Ljava/lang/String;

    return-object v1

    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 25
    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/pattern/MarkerConverter;->convert(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
