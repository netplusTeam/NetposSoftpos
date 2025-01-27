.class public Lcom/alcineo/softpos/lniecao;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final acileon:Ljava/lang/String; = "()[B"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native acileon()[B
.end method
