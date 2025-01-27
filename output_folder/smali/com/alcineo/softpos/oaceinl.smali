.class public Lcom/alcineo/softpos/oaceinl;
.super Lcom/alcineo/softpos/oaeclin;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alcineo/softpos/oaeclin<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static ioceanl:Ljava/util/concurrent/TimeUnit;


# instance fields
.field private final aelcoin:Ljava/io/OutputStream;

.field private final anceiol:Lcom/alcineo/softpos/coalnie;

.field public icloane:I

.field private final loenaic:I

.field private nlcoaie:I

.field private final oecnlia:Lcom/alcineo/softpos/lniaeoc;


# direct methods
.method public static synthetic $r8$lambda$QF9PhDPW5yxyL6MZ1bXjrFrWzS4(Lcom/alcineo/softpos/oaceinl;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/oaceinl;->aoleinc(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tuy6n5TxF84cxh0W3qA6vMC4XSc(Lcom/alcineo/softpos/oaceinl;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/oaceinl;->acileon([B)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/alcineo/softpos/oaceinl;->ioceanl:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;ILjava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Lcom/alcineo/softpos/oaeclin;-><init>()V

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/alcineo/softpos/oaceinl;->icloane:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alcineo/softpos/oaceinl;->nlcoaie:I

    iput-object p1, p0, Lcom/alcineo/softpos/oaceinl;->oecnlia:Lcom/alcineo/softpos/lniaeoc;

    iput-object p2, p0, Lcom/alcineo/softpos/oaceinl;->anceiol:Lcom/alcineo/softpos/coalnie;

    iput p3, p0, Lcom/alcineo/softpos/oaceinl;->loenaic:I

    iput-object p4, p0, Lcom/alcineo/softpos/oaceinl;->aelcoin:Ljava/io/OutputStream;

    return-void
.end method

.method private native acileon([B)V
.end method

.method private anceiol()V
    .locals 3

    iget-object v0, p0, Lcom/alcineo/softpos/oaceinl;->oecnlia:Lcom/alcineo/softpos/lniaeoc;

    iget-object v1, p0, Lcom/alcineo/softpos/oaceinl;->anceiol:Lcom/alcineo/softpos/coalnie;

    invoke-static {v0, v1}, Lcom/alcineo/softpos/nicaole;->getExecutor(Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;)Lcom/alcineo/softpos/alineco;

    move-result-object v0

    iget v1, p0, Lcom/alcineo/softpos/oaceinl;->icloane:I

    sget-object v2, Lcom/alcineo/softpos/oaceinl;->ioceanl:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Lcom/alcineo/softpos/alineco;->acileon(ILjava/util/concurrent/TimeUnit;)Lcom/alcineo/softpos/alineco;

    new-instance v1, Lcom/alcineo/softpos/oaceinl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/alcineo/softpos/oaceinl$$ExternalSyntheticLambda0;-><init>(Lcom/alcineo/softpos/oaceinl;)V

    invoke-virtual {v0, v1}, Lcom/alcineo/softpos/oaeclin;->acileon(Lcom/alcineo/softpos/oaeclin$noaceli;)Lcom/alcineo/softpos/oaeclin;

    new-instance v1, Lcom/alcineo/softpos/oaceinl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/alcineo/softpos/oaceinl$$ExternalSyntheticLambda1;-><init>(Lcom/alcineo/softpos/oaceinl;)V

    invoke-virtual {v0, v1}, Lcom/alcineo/softpos/oaeclin;->acileon(Lcom/alcineo/softpos/oaeclin$acileon;)Lcom/alcineo/softpos/oaeclin;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/alcineo/softpos/alineco;->acileon(II)Lcom/alcineo/softpos/alineco;

    invoke-virtual {v0}, Lcom/alcineo/softpos/oaeclin;->aoleinc()V

    return-void
.end method

.method private native synthetic aoleinc(Ljava/lang/Exception;)V
.end method


# virtual methods
.method public native acileon(I)Lcom/alcineo/softpos/oaceinl;
.end method

.method public native oecnlia()V
.end method
