.class public abstract Lcom/alcineo/softpos/oaeclin;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alcineo/softpos/oaeclin$acileon;,
        Lcom/alcineo/softpos/oaeclin$aoleinc;,
        Lcom/alcineo/softpos/oaeclin$noaceli;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile acileon:Ljava/lang/Exception;

.field private volatile aoleinc:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile enolcai:D

.field private lneaico:Lcom/alcineo/softpos/oaeclin$noaceli;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alcineo/softpos/oaeclin$noaceli<",
            "TT;>;"
        }
    .end annotation
.end field

.field private nacieol:J

.field private volatile noaceli:Z

.field private noelcai:Lcom/alcineo/softpos/oaeclin$aoleinc;

.field private ocenlai:J

.field private ocleina:Lcom/alcineo/softpos/oaeclin$acileon;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alcineo/softpos/oaeclin;->acileon:Ljava/lang/Exception;

    iput-object v0, p0, Lcom/alcineo/softpos/oaeclin;->aoleinc:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alcineo/softpos/oaeclin;->noaceli:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alcineo/softpos/oaeclin;->enolcai:D

    iput-object v0, p0, Lcom/alcineo/softpos/oaeclin;->noelcai:Lcom/alcineo/softpos/oaeclin$aoleinc;

    iput-object v0, p0, Lcom/alcineo/softpos/oaeclin;->lneaico:Lcom/alcineo/softpos/oaeclin$noaceli;

    iput-object v0, p0, Lcom/alcineo/softpos/oaeclin;->ocleina:Lcom/alcineo/softpos/oaeclin$acileon;

    return-void
.end method


# virtual methods
.method public native acileon(Lcom/alcineo/softpos/oaeclin$acileon;)Lcom/alcineo/softpos/oaeclin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alcineo/softpos/oaeclin$acileon;",
            ")",
            "Lcom/alcineo/softpos/oaeclin<",
            "TT;>;"
        }
    .end annotation
.end method

.method public native acileon(Lcom/alcineo/softpos/oaeclin$aoleinc;)Lcom/alcineo/softpos/oaeclin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alcineo/softpos/oaeclin$aoleinc;",
            ")",
            "Lcom/alcineo/softpos/oaeclin<",
            "TT;>;"
        }
    .end annotation
.end method

.method public native acileon(Lcom/alcineo/softpos/oaeclin$noaceli;)Lcom/alcineo/softpos/oaeclin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alcineo/softpos/oaeclin$noaceli<",
            "TT;>;)",
            "Lcom/alcineo/softpos/oaeclin<",
            "TT;>;"
        }
    .end annotation
.end method

.method public native acileon()V
.end method

.method public native acileon(D)V
.end method

.method public native acileon(Ljava/lang/Exception;)V
.end method

.method public native acileon(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public native acileon(Ljava/lang/String;)V
.end method

.method public native aoleinc()V
.end method

.method public native enolcai()Ljava/lang/Exception;
.end method

.method public native icloane()Z
.end method

.method public native lneaico()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public native nacieol()D
.end method

.method public native noaceli()J
.end method

.method public native noelcai()Lcom/alcineo/softpos/oaeclin$aoleinc;
.end method

.method public native ocenlai()Lcom/alcineo/softpos/oaeclin$acileon;
.end method

.method public native ocleina()Lcom/alcineo/softpos/oaeclin$noaceli;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alcineo/softpos/oaeclin$noaceli<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract oecnlia()V
.end method
