.class public Lch/qos/logback/classic/spi/LoggerRemoteView;
.super Ljava/lang/Object;
.source "LoggerRemoteView.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x45c7d6c89d9f4ae0L


# instance fields
.field final loggerContextView:Lch/qos/logback/classic/spi/LoggerContextVO;

.field final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lch/qos/logback/classic/LoggerContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "lc"    # Lch/qos/logback/classic/LoggerContext;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lch/qos/logback/classic/spi/LoggerRemoteView;->name:Ljava/lang/String;

    .line 38
    invoke-virtual {p2}, Lch/qos/logback/classic/LoggerContext;->getLoggerContextRemoteView()Lch/qos/logback/classic/spi/LoggerContextVO;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p2}, Lch/qos/logback/classic/LoggerContext;->getLoggerContextRemoteView()Lch/qos/logback/classic/spi/LoggerContextVO;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/spi/LoggerRemoteView;->loggerContextView:Lch/qos/logback/classic/spi/LoggerContextVO;

    .line 40
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public getLoggerContextView()Lch/qos/logback/classic/spi/LoggerContextVO;
    .locals 1

    .line 43
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggerRemoteView;->loggerContextView:Lch/qos/logback/classic/spi/LoggerContextVO;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggerRemoteView;->name:Ljava/lang/String;

    return-object v0
.end method
