.class public Lcom/alcineo/softpos/oecnlia;
.super Lcom/alcineo/softpos/oaeclin;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alcineo/softpos/oaeclin<",
        "[B>;"
    }
.end annotation


# static fields
.field private static final naciole:I = 0x800


# instance fields
.field private aelcoin:Lcom/alcineo/softpos/nacieol$acileon;

.field private alicneo:Lcom/alcineo/softpos/lniaeoc;

.field private anceiol:I

.field private cnaolie:Ljava/nio/ByteBuffer;

.field private coalnie:I

.field private eliocna:I

.field private icloane:I

.field private ioceanl:[B

.field private loenaic:Lcom/alcineo/administrative/pci/utils/PrivateAlgo;

.field private nclioae:Z

.field private nlcoaie:Lcom/alcineo/softpos/nclioae;

.field private oalecni:I

.field private oecnlia:I

.field private oeicanl:Lcom/alcineo/softpos/coalnie;


# direct methods
.method public static synthetic $r8$lambda$2DCNkR5sWVcVLI6FWCKzwxRtVHU(Lcom/alcineo/softpos/oecnlia;Lcom/alcineo/softpos/nacieol;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/oecnlia;->acileon(Lcom/alcineo/softpos/nacieol;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RGs66lGb7AOb4wL1Xcha-N12aSM(Lcom/alcineo/softpos/oecnlia;Lcom/alcineo/softpos/nacieol;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/oecnlia;->enolcai(Lcom/alcineo/softpos/nacieol;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ka4mF2a9H1nKlaTUvpwj5BoL5zg(Lcom/alcineo/softpos/oecnlia;Lcom/alcineo/softpos/nacieol;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/oecnlia;->aoleinc(Lcom/alcineo/softpos/nacieol;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z8A8LYBkl1s-PD-0xN6Fpza2rNQ(Lcom/alcineo/softpos/oecnlia;Lcom/alcineo/softpos/nacieol;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/oecnlia;->noaceli(Lcom/alcineo/softpos/nacieol;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;Lcom/alcineo/softpos/nacieol$acileon;Lcom/alcineo/administrative/pci/utils/PrivateAlgo;Lcom/alcineo/softpos/nclioae;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/alcineo/softpos/oaeclin;-><init>()V

    const/16 v0, 0x5dc

    iput v0, p0, Lcom/alcineo/softpos/oecnlia;->icloane:I

    iput v0, p0, Lcom/alcineo/softpos/oecnlia;->oecnlia:I

    iput v0, p0, Lcom/alcineo/softpos/oecnlia;->anceiol:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alcineo/softpos/oecnlia;->oalecni:I

    iput v0, p0, Lcom/alcineo/softpos/oecnlia;->coalnie:I

    sget-object v0, Lcom/alcineo/softpos/nacieol$acileon;->aoleinc:Lcom/alcineo/softpos/nacieol$acileon;

    if-eq p3, v0, :cond_1

    sget-object v0, Lcom/alcineo/softpos/nacieol$acileon;->noaceli:Lcom/alcineo/softpos/nacieol$acileon;

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Bad type for CryptoCipherUncipherExecutor, this Should be Crypto.MODE.MODE_CIPHER or Crypto.MODE.MODE_UNCIPHER "

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/alcineo/softpos/oecnlia;->alicneo:Lcom/alcineo/softpos/lniaeoc;

    iput-object p2, p0, Lcom/alcineo/softpos/oecnlia;->oeicanl:Lcom/alcineo/softpos/coalnie;

    iput-object p3, p0, Lcom/alcineo/softpos/oecnlia;->aelcoin:Lcom/alcineo/softpos/nacieol$acileon;

    iput-object p4, p0, Lcom/alcineo/softpos/oecnlia;->loenaic:Lcom/alcineo/administrative/pci/utils/PrivateAlgo;

    iput-object p5, p0, Lcom/alcineo/softpos/oecnlia;->nlcoaie:Lcom/alcineo/softpos/nclioae;

    iput-object p6, p0, Lcom/alcineo/softpos/oecnlia;->ioceanl:[B

    return-void
.end method

.method private native acileon(Lcom/alcineo/softpos/nacieol;)V
.end method

.method private anceiol()V
    .locals 10

    :try_start_0
    iget-boolean v0, p0, Lcom/alcineo/softpos/oecnlia;->nclioae:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/alcineo/softpos/oecnlia;->oalecni:I

    iget-object v1, p0, Lcom/alcineo/softpos/oecnlia;->ioceanl:[B

    array-length v1, v1

    iget v2, p0, Lcom/alcineo/softpos/oecnlia;->eliocna:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/alcineo/softpos/oecnlia;->ioceanl:[B

    iget v2, p0, Lcom/alcineo/softpos/oecnlia;->eliocna:I

    add-int v3, v2, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/alcineo/softpos/oecnlia;->ioceanl:[B

    array-length v2, v2

    iget v3, p0, Lcom/alcineo/softpos/oecnlia;->eliocna:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/alcineo/softpos/oecnlia;->oalecni:I

    if-le v2, v3, :cond_0

    invoke-static {v1}, Lcom/alcineo/softpos/nacieol;->acileon([B)Lcom/alcineo/softpos/nacieol;

    move-result-object v4

    new-instance v5, Lcom/alcineo/softpos/oecnlia$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/alcineo/softpos/oecnlia$$ExternalSyntheticLambda1;-><init>(Lcom/alcineo/softpos/oecnlia;)V

    iget-object v6, p0, Lcom/alcineo/softpos/oecnlia;->alicneo:Lcom/alcineo/softpos/lniaeoc;

    iget-object v7, p0, Lcom/alcineo/softpos/oecnlia;->oeicanl:Lcom/alcineo/softpos/coalnie;

    iget v8, p0, Lcom/alcineo/softpos/oecnlia;->oecnlia:I

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v4 .. v9}, Lcom/alcineo/softpos/ileacno;->acileon(Lcom/alcineo/softpos/alicneo;Lcom/alcineo/softpos/ociealn;Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;ILjava/util/concurrent/TimeUnit;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/alcineo/softpos/nacieol;->aoleinc([B)Lcom/alcineo/softpos/nacieol;

    move-result-object v2

    new-instance v3, Lcom/alcineo/softpos/oecnlia$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/alcineo/softpos/oecnlia$$ExternalSyntheticLambda2;-><init>(Lcom/alcineo/softpos/oecnlia;)V

    iget-object v4, p0, Lcom/alcineo/softpos/oecnlia;->alicneo:Lcom/alcineo/softpos/lniaeoc;

    iget-object v5, p0, Lcom/alcineo/softpos/oecnlia;->oeicanl:Lcom/alcineo/softpos/coalnie;

    iget v6, p0, Lcom/alcineo/softpos/oecnlia;->anceiol:I

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v2 .. v7}, Lcom/alcineo/softpos/ileacno;->acileon(Lcom/alcineo/softpos/alicneo;Lcom/alcineo/softpos/ociealn;Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;ILjava/util/concurrent/TimeUnit;)V

    array-length v1, v1

    iput v1, p0, Lcom/alcineo/softpos/oecnlia;->coalnie:I

    :goto_0
    iget v1, p0, Lcom/alcineo/softpos/oecnlia;->eliocna:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alcineo/softpos/oecnlia;->eliocna:I

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/alcineo/softpos/nacieol;->acileon()Lcom/alcineo/softpos/nacieol;

    move-result-object v1

    new-instance v2, Lcom/alcineo/softpos/oecnlia$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/alcineo/softpos/oecnlia$$ExternalSyntheticLambda3;-><init>(Lcom/alcineo/softpos/oecnlia;)V

    iget-object v3, p0, Lcom/alcineo/softpos/oecnlia;->alicneo:Lcom/alcineo/softpos/lniaeoc;

    iget-object v4, p0, Lcom/alcineo/softpos/oecnlia;->oeicanl:Lcom/alcineo/softpos/coalnie;

    iget v5, p0, Lcom/alcineo/softpos/oecnlia;->anceiol:I

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v1 .. v6}, Lcom/alcineo/softpos/ileacno;->acileon(Lcom/alcineo/softpos/alicneo;Lcom/alcineo/softpos/ociealn;Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;ILjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/alcineo/softpos/oaeclin;->acileon(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method private native aoleinc(Lcom/alcineo/softpos/nacieol;)V
.end method

.method private native enolcai(Lcom/alcineo/softpos/nacieol;)V
.end method

.method private native noaceli(Lcom/alcineo/softpos/nacieol;)V
.end method


# virtual methods
.method public native acileon()V
.end method

.method public oecnlia()V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/alcineo/softpos/oecnlia;->nclioae:Z

    iget-object v0, p0, Lcom/alcineo/softpos/oecnlia;->loenaic:Lcom/alcineo/administrative/pci/utils/PrivateAlgo;

    iget-object v1, p0, Lcom/alcineo/softpos/oecnlia;->aelcoin:Lcom/alcineo/softpos/nacieol$acileon;

    iget-object v2, p0, Lcom/alcineo/softpos/oecnlia;->nlcoaie:Lcom/alcineo/softpos/nclioae;

    iget-object v3, p0, Lcom/alcineo/softpos/oecnlia;->ioceanl:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/alcineo/softpos/nacieol;->acileon(Lcom/alcineo/administrative/pci/utils/PrivateAlgo;Lcom/alcineo/softpos/nacieol$acileon;Lcom/alcineo/softpos/nclioae;I)Lcom/alcineo/softpos/nacieol;

    move-result-object v4

    new-instance v5, Lcom/alcineo/softpos/oecnlia$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/alcineo/softpos/oecnlia$$ExternalSyntheticLambda0;-><init>(Lcom/alcineo/softpos/oecnlia;)V

    iget-object v6, p0, Lcom/alcineo/softpos/oecnlia;->alicneo:Lcom/alcineo/softpos/lniaeoc;

    iget-object v7, p0, Lcom/alcineo/softpos/oecnlia;->oeicanl:Lcom/alcineo/softpos/coalnie;

    iget v8, p0, Lcom/alcineo/softpos/oecnlia;->icloane:I

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v4 .. v9}, Lcom/alcineo/softpos/ileacno;->acileon(Lcom/alcineo/softpos/alicneo;Lcom/alcineo/softpos/ociealn;Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;ILjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/alcineo/softpos/oaeclin;->acileon(Ljava/lang/Exception;)V

    return-void
.end method
