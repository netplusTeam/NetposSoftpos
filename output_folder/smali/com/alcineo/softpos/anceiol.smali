.class public Lcom/alcineo/softpos/anceiol;
.super Lcom/alcineo/softpos/oaeclin;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alcineo/softpos/oaeclin<",
        "[B>;"
    }
.end annotation


# instance fields
.field private anceiol:Lcom/alcineo/softpos/nclioae;

.field private icloane:Lcom/alcineo/softpos/lniaeoc;

.field private oecnlia:Lcom/alcineo/softpos/coalnie;


# direct methods
.method public static synthetic $r8$lambda$DYBOXiOsj4r5tWFGlje_vsXi_Yw(Lcom/alcineo/softpos/anceiol;Lcom/alcineo/softpos/nacieol;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/anceiol;->acileon(Lcom/alcineo/softpos/nacieol;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;Lcom/alcineo/softpos/nclioae;)V
    .locals 0

    invoke-direct {p0}, Lcom/alcineo/softpos/oaeclin;-><init>()V

    iput-object p1, p0, Lcom/alcineo/softpos/anceiol;->icloane:Lcom/alcineo/softpos/lniaeoc;

    iput-object p2, p0, Lcom/alcineo/softpos/anceiol;->oecnlia:Lcom/alcineo/softpos/coalnie;

    iput-object p3, p0, Lcom/alcineo/softpos/anceiol;->anceiol:Lcom/alcineo/softpos/nclioae;

    return-void
.end method

.method private native acileon(Lcom/alcineo/softpos/nacieol;)V
.end method


# virtual methods
.method public oecnlia()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/alcineo/softpos/anceiol;->anceiol:Lcom/alcineo/softpos/nclioae;

    invoke-static {v0}, Lcom/alcineo/softpos/nacieol;->acileon(Lcom/alcineo/softpos/nclioae;)Lcom/alcineo/softpos/nacieol;

    move-result-object v1

    new-instance v2, Lcom/alcineo/softpos/anceiol$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/alcineo/softpos/anceiol$$ExternalSyntheticLambda0;-><init>(Lcom/alcineo/softpos/anceiol;)V

    iget-object v3, p0, Lcom/alcineo/softpos/anceiol;->icloane:Lcom/alcineo/softpos/lniaeoc;

    iget-object v4, p0, Lcom/alcineo/softpos/anceiol;->oecnlia:Lcom/alcineo/softpos/coalnie;

    const/16 v5, 0x2710

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v1 .. v6}, Lcom/alcineo/softpos/ileacno;->acileon(Lcom/alcineo/softpos/alicneo;Lcom/alcineo/softpos/ociealn;Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;ILjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/alcineo/softpos/oaeclin;->acileon(Ljava/lang/Exception;)V

    return-void
.end method
