.class public Lcom/alcineo/softpos/eilacno;
.super Lcom/alcineo/softpos/iancole;
.source "SourceFile"


# instance fields
.field private acileon:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/alcineo/softpos/iancole;-><init>()V

    const/16 v0, 0x86

    if-eq p1, v0, :cond_1

    const/16 p2, 0x87

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "** CLEAR SCREEN **"

    iput-object p1, p0, Lcom/alcineo/softpos/eilacno;->acileon:Ljava/lang/String;

    return-void

    :cond_1
    iput-object p2, p0, Lcom/alcineo/softpos/eilacno;->acileon:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public native aoleinc()Ljava/lang/String;
.end method
