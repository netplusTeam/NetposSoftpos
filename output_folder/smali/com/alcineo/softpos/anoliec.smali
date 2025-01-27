.class public Lcom/alcineo/softpos/anoliec;
.super Lcom/alcineo/softpos/naoeicl;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alcineo/softpos/naoeicl;-><init>()V

    return-void
.end method


# virtual methods
.method public native acileon()Ljava/lang/String;
.end method

.method public native noaceli()Lcom/alcineo/softpos/noealic;
.end method
