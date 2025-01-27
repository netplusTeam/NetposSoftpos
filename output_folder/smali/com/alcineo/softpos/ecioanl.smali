.class public Lcom/alcineo/softpos/ecioanl;
.super Lcom/alcineo/softpos/iancole;
.source "SourceFile"


# instance fields
.field private acileon:[Z

.field private aoleinc:I

.field private enolcai:I

.field private noaceli:Z

.field private ocenlai:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([ZIZII)V
    .locals 0

    invoke-direct {p0}, Lcom/alcineo/softpos/iancole;-><init>()V

    iput-object p1, p0, Lcom/alcineo/softpos/ecioanl;->acileon:[Z

    iput p2, p0, Lcom/alcineo/softpos/ecioanl;->aoleinc:I

    iput-boolean p3, p0, Lcom/alcineo/softpos/ecioanl;->noaceli:Z

    iput p4, p0, Lcom/alcineo/softpos/ecioanl;->enolcai:I

    iput p5, p0, Lcom/alcineo/softpos/ecioanl;->ocenlai:I

    return-void
.end method


# virtual methods
.method public native aoleinc()I
.end method

.method public native enolcai()[Z
.end method

.method public native nacieol()Z
.end method

.method public native noaceli()I
.end method

.method public native ocenlai()I
.end method
