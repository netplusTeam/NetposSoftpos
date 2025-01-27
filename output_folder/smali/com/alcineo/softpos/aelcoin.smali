.class public Lcom/alcineo/softpos/aelcoin;
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
.field private static final coalnie:I = 0x800


# instance fields
.field private aelcoin:Lcom/alcineo/softpos/nclioae;

.field private alicneo:Lcom/alcineo/softpos/coalnie;

.field private anceiol:I

.field private eliocna:Z

.field private icloane:I

.field private ioceanl:I

.field private loenaic:Lcom/alcineo/administrative/pci/utils/PrivateAlgo;

.field private nclioae:Lcom/alcineo/softpos/lniaeoc;

.field private nlcoaie:[B

.field private oalecni:Ljava/nio/ByteBuffer;

.field private oecnlia:I

.field private oeicanl:I


# direct methods
.method public static synthetic $r8$lambda$7XaarXDMwEzHX73Y343YfPLNYF8(Lcom/alcineo/softpos/aelcoin;Lcom/alcineo/softpos/nacieol;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/aelcoin;->aoleinc(Lcom/alcineo/softpos/nacieol;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VThR91SLlxp-cP43gIEzTcQJEos(Lcom/alcineo/softpos/aelcoin;Lcom/alcineo/softpos/nacieol;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/aelcoin;->acileon(Lcom/alcineo/softpos/nacieol;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kzE0UPwrfQgj-bvqzian36kcADQ(Lcom/alcineo/softpos/aelcoin;Lcom/alcineo/softpos/nacieol;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/aelcoin;->enolcai(Lcom/alcineo/softpos/nacieol;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nl5laOul09USbz2DqEn_s8dp4Ls(Lcom/alcineo/softpos/aelcoin;Lcom/alcineo/softpos/nacieol;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/aelcoin;->noaceli(Lcom/alcineo/softpos/nacieol;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;Lcom/alcineo/administrative/pci/utils/PrivateAlgo;Lcom/alcineo/softpos/nclioae;[B)V
    .locals 1

    invoke-direct {p0}, Lcom/alcineo/softpos/oaeclin;-><init>()V

    const/16 v0, 0x3a98

    iput v0, p0, Lcom/alcineo/softpos/aelcoin;->icloane:I

    iput v0, p0, Lcom/alcineo/softpos/aelcoin;->oecnlia:I

    iput v0, p0, Lcom/alcineo/softpos/aelcoin;->anceiol:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alcineo/softpos/aelcoin;->oeicanl:I

    iput-object p1, p0, Lcom/alcineo/softpos/aelcoin;->nclioae:Lcom/alcineo/softpos/lniaeoc;

    iput-object p2, p0, Lcom/alcineo/softpos/aelcoin;->alicneo:Lcom/alcineo/softpos/coalnie;

    iput-object p3, p0, Lcom/alcineo/softpos/aelcoin;->loenaic:Lcom/alcineo/administrative/pci/utils/PrivateAlgo;

    iput-object p4, p0, Lcom/alcineo/softpos/aelcoin;->aelcoin:Lcom/alcineo/softpos/nclioae;

    iput-object p5, p0, Lcom/alcineo/softpos/aelcoin;->nlcoaie:[B

    return-void
.end method

.method private native acileon(Lcom/alcineo/softpos/nacieol;)V
.end method

.method private anceiol()V
    .locals 13

    :try_start_0
    iget-boolean v0, p0, Lcom/alcineo/softpos/aelcoin;->eliocna:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/alcineo/softpos/aelcoin;->oeicanl:I

    iget-object v1, p0, Lcom/alcineo/softpos/aelcoin;->nlcoaie:[B

    array-length v1, v1

    iget v2, p0, Lcom/alcineo/softpos/aelcoin;->ioceanl:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/alcineo/softpos/aelcoin;->nlcoaie:[B

    iget v2, p0, Lcom/alcineo/softpos/aelcoin;->ioceanl:I

    add-int v3, v2, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/alcineo/softpos/aelcoin;->nlcoaie:[B

    array-length v2, v2

    iget v3, p0, Lcom/alcineo/softpos/aelcoin;->ioceanl:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/alcineo/softpos/aelcoin;->oeicanl:I

    if-le v2, v3, :cond_0

    invoke-static {v1}, Lcom/alcineo/softpos/nacieol;->acileon([B)Lcom/alcineo/softpos/nacieol;

    move-result-object v1

    new-instance v2, Lcom/alcineo/softpos/aelcoin$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/alcineo/softpos/aelcoin$$ExternalSyntheticLambda1;-><init>(Lcom/alcineo/softpos/aelcoin;)V

    iget-object v3, p0, Lcom/alcineo/softpos/aelcoin;->nclioae:Lcom/alcineo/softpos/lniaeoc;

    iget-object v4, p0, Lcom/alcineo/softpos/aelcoin;->alicneo:Lcom/alcineo/softpos/coalnie;

    iget v5, p0, Lcom/alcineo/softpos/aelcoin;->oecnlia:I

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/alcineo/softpos/nacieol;->aoleinc([B)Lcom/alcineo/softpos/nacieol;

    move-result-object v1

    new-instance v2, Lcom/alcineo/softpos/aelcoin$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/alcineo/softpos/aelcoin$$ExternalSyntheticLambda2;-><init>(Lcom/alcineo/softpos/aelcoin;)V

    iget-object v3, p0, Lcom/alcineo/softpos/aelcoin;->nclioae:Lcom/alcineo/softpos/lniaeoc;

    iget-object v4, p0, Lcom/alcineo/softpos/aelcoin;->alicneo:Lcom/alcineo/softpos/coalnie;

    iget v5, p0, Lcom/alcineo/softpos/aelcoin;->anceiol:I

    :goto_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move v11, v5

    move-object v12, v6

    invoke-static/range {v7 .. v12}, Lcom/alcineo/softpos/ileacno;->acileon(Lcom/alcineo/softpos/alicneo;Lcom/alcineo/softpos/ociealn;Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;ILjava/util/concurrent/TimeUnit;)V

    iget v1, p0, Lcom/alcineo/softpos/aelcoin;->ioceanl:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alcineo/softpos/aelcoin;->ioceanl:I

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/alcineo/softpos/nacieol;->acileon()Lcom/alcineo/softpos/nacieol;

    move-result-object v1

    new-instance v2, Lcom/alcineo/softpos/aelcoin$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/alcineo/softpos/aelcoin$$ExternalSyntheticLambda3;-><init>(Lcom/alcineo/softpos/aelcoin;)V

    iget-object v3, p0, Lcom/alcineo/softpos/aelcoin;->nclioae:Lcom/alcineo/softpos/lniaeoc;

    iget-object v4, p0, Lcom/alcineo/softpos/aelcoin;->alicneo:Lcom/alcineo/softpos/coalnie;

    iget v5, p0, Lcom/alcineo/softpos/aelcoin;->anceiol:I

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
    iput-boolean v0, p0, Lcom/alcineo/softpos/aelcoin;->eliocna:Z

    iget-object v0, p0, Lcom/alcineo/softpos/aelcoin;->loenaic:Lcom/alcineo/administrative/pci/utils/PrivateAlgo;

    sget-object v1, Lcom/alcineo/softpos/nacieol$acileon;->enolcai:Lcom/alcineo/softpos/nacieol$acileon;

    iget-object v2, p0, Lcom/alcineo/softpos/aelcoin;->aelcoin:Lcom/alcineo/softpos/nclioae;

    iget-object v3, p0, Lcom/alcineo/softpos/aelcoin;->nlcoaie:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/alcineo/softpos/nacieol;->acileon(Lcom/alcineo/administrative/pci/utils/PrivateAlgo;Lcom/alcineo/softpos/nacieol$acileon;Lcom/alcineo/softpos/nclioae;I)Lcom/alcineo/softpos/nacieol;

    move-result-object v4

    new-instance v5, Lcom/alcineo/softpos/aelcoin$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/alcineo/softpos/aelcoin$$ExternalSyntheticLambda0;-><init>(Lcom/alcineo/softpos/aelcoin;)V

    iget-object v6, p0, Lcom/alcineo/softpos/aelcoin;->nclioae:Lcom/alcineo/softpos/lniaeoc;

    iget-object v7, p0, Lcom/alcineo/softpos/aelcoin;->alicneo:Lcom/alcineo/softpos/coalnie;

    iget v8, p0, Lcom/alcineo/softpos/aelcoin;->icloane:I

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
