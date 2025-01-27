.class public Lcom/alcineo/softpos/claieon;
.super Lcom/alcineo/softpos/iancole;
.source "SourceFile"


# instance fields
.field private acileon:I

.field private aoleinc:I

.field private enolcai:I

.field private noaceli:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Lcom/alcineo/softpos/iancole;-><init>()V

    iput p1, p0, Lcom/alcineo/softpos/claieon;->acileon:I

    iput p2, p0, Lcom/alcineo/softpos/claieon;->aoleinc:I

    iput p3, p0, Lcom/alcineo/softpos/claieon;->noaceli:I

    iput p4, p0, Lcom/alcineo/softpos/claieon;->enolcai:I

    return-void
.end method


# virtual methods
.method public native aoleinc()I
.end method

.method public native enolcai()I
.end method

.method public native noaceli()I
.end method

.method public native ocenlai()I
.end method
