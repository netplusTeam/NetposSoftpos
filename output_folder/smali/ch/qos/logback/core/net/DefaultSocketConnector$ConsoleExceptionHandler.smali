.class Lch/qos/logback/core/net/DefaultSocketConnector$ConsoleExceptionHandler;
.super Ljava/lang/Object;
.source "DefaultSocketConnector.java"

# interfaces
.implements Lch/qos/logback/core/net/SocketConnector$ExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/qos/logback/core/net/DefaultSocketConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConsoleExceptionHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lch/qos/logback/core/net/DefaultSocketConnector$1;)V
    .locals 0
    .param p1, "x0"    # Lch/qos/logback/core/net/DefaultSocketConnector$1;

    .line 115
    invoke-direct {p0}, Lch/qos/logback/core/net/DefaultSocketConnector$ConsoleExceptionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionFailed(Lch/qos/logback/core/net/SocketConnector;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "connector"    # Lch/qos/logback/core/net/SocketConnector;
    .param p2, "ex"    # Ljava/lang/Exception;

    .line 118
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 119
    return-void
.end method
