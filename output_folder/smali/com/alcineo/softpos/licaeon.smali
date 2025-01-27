.class public Lcom/alcineo/softpos/licaeon;
.super Lcom/alcineo/softpos/iancole;
.source "SourceFile"


# instance fields
.field private acileon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/alcineo/softpos/iancole;-><init>()V

    iput-boolean p1, p0, Lcom/alcineo/softpos/licaeon;->acileon:Z

    return-void
.end method


# virtual methods
.method public native aoleinc()Z
.end method
