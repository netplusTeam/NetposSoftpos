.class public Lcom/alcineo/softpos/nlcoaie;
.super Lcom/alcineo/softpos/oaeclin;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alcineo/softpos/oaeclin<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final cnaolie:I = 0x800


# instance fields
.field private aelcoin:Lcom/alcineo/softpos/nclioae;

.field private alicneo:Lcom/alcineo/softpos/lniaeoc;

.field private anceiol:I

.field private coalnie:Ljava/nio/ByteBuffer;

.field private eliocna:I

.field private icloane:I

.field private ioceanl:[B

.field private loenaic:Lcom/alcineo/administrative/pci/utils/PrivateAlgo;

.field private nclioae:Z

.field private nlcoaie:[B

.field private oalecni:I

.field private oecnlia:I

.field private oeicanl:Lcom/alcineo/softpos/coalnie;


# direct methods
.method public static synthetic $r8$lambda$-KUuAl9HsTa2WRkFr8kor9zpDKs(Lcom/alcineo/softpos/nlcoaie;Lcom/alcineo/softpos/nacieol;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/nlcoaie;->aoleinc(Lcom/alcineo/softpos/nacieol;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mywtk6oPd1pUa1abarDS7TBjcTg(Lcom/alcineo/softpos/nlcoaie;Lcom/alcineo/softpos/nacieol;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/nlcoaie;->acileon(Lcom/alcineo/softpos/nacieol;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TZbFwIsxN1rSlXUDYVbJ00B6mnM(Lcom/alcineo/softpos/nlcoaie;Lcom/alcineo/softpos/nacieol;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/nlcoaie;->enolcai(Lcom/alcineo/softpos/nacieol;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vEoxA9rQ5dsovXun2hs8VvtI5Cs(Lcom/alcineo/softpos/nlcoaie;Lcom/alcineo/softpos/nacieol;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/nlcoaie;->noaceli(Lcom/alcineo/softpos/nacieol;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;Lcom/alcineo/administrative/pci/utils/PrivateAlgo;Lcom/alcineo/softpos/nclioae;[B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/alcineo/softpos/oaeclin;-><init>()V

    const v0, 0x5f5e100

    iput v0, p0, Lcom/alcineo/softpos/nlcoaie;->icloane:I

    iput v0, p0, Lcom/alcineo/softpos/nlcoaie;->oecnlia:I

    iput v0, p0, Lcom/alcineo/softpos/nlcoaie;->anceiol:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alcineo/softpos/nlcoaie;->oalecni:I

    iput-object p1, p0, Lcom/alcineo/softpos/nlcoaie;->alicneo:Lcom/alcineo/softpos/lniaeoc;

    iput-object p2, p0, Lcom/alcineo/softpos/nlcoaie;->oeicanl:Lcom/alcineo/softpos/coalnie;

    iput-object p3, p0, Lcom/alcineo/softpos/nlcoaie;->loenaic:Lcom/alcineo/administrative/pci/utils/PrivateAlgo;

    iput-object p4, p0, Lcom/alcineo/softpos/nlcoaie;->aelcoin:Lcom/alcineo/softpos/nclioae;

    iput-object p5, p0, Lcom/alcineo/softpos/nlcoaie;->nlcoaie:[B

    iput-object p6, p0, Lcom/alcineo/softpos/nlcoaie;->ioceanl:[B

    return-void
.end method

.method private native acileon(Lcom/alcineo/softpos/nacieol;)V
.end method

.method private anceiol()V
    .locals 12

    :try_start_0
    iget-boolean v0, p0, Lcom/alcineo/softpos/nlcoaie;->nclioae:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/alcineo/softpos/nlcoaie;->oalecni:I

    iget-object v1, p0, Lcom/alcineo/softpos/nlcoaie;->nlcoaie:[B

    array-length v1, v1

    iget v2, p0, Lcom/alcineo/softpos/nlcoaie;->eliocna:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/alcineo/softpos/nlcoaie;->nlcoaie:[B

    iget v2, p0, Lcom/alcineo/softpos/nlcoaie;->eliocna:I

    add-int v3, v2, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/alcineo/softpos/nlcoaie;->nlcoaie:[B

    array-length v2, v2

    iget v3, p0, Lcom/alcineo/softpos/nlcoaie;->eliocna:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/alcineo/softpos/nlcoaie;->oalecni:I

    if-le v2, v3, :cond_0

    invoke-static {v1}, Lcom/alcineo/softpos/nacieol;->acileon([B)Lcom/alcineo/softpos/nacieol;

    move-result-object v4

    new-instance v5, Lcom/alcineo/softpos/nlcoaie$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/alcineo/softpos/nlcoaie$$ExternalSyntheticLambda1;-><init>(Lcom/alcineo/softpos/nlcoaie;)V

    iget-object v6, p0, Lcom/alcineo/softpos/nlcoaie;->alicneo:Lcom/alcineo/softpos/lniaeoc;

    iget-object v7, p0, Lcom/alcineo/softpos/nlcoaie;->oeicanl:Lcom/alcineo/softpos/coalnie;

    iget v8, p0, Lcom/alcineo/softpos/nlcoaie;->oecnlia:I

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v4 .. v9}, Lcom/alcineo/softpos/ileacno;->acileon(Lcom/alcineo/softpos/alicneo;Lcom/alcineo/softpos/ociealn;Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;ILjava/util/concurrent/TimeUnit;)V

    goto :goto_0

    :cond_0
    array-length v2, v1

    const/4 v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, v3

    iget-object v4, p0, Lcom/alcineo/softpos/nlcoaie;->ioceanl:[B

    array-length v4, v4

    add-int/2addr v2, v4

    new-array v2, v2, [B

    array-length v4, v1

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v5, 0x0

    aput-byte v4, v2, v5

    array-length v4, v1

    int-to-byte v4, v4

    const/4 v6, 0x1

    aput-byte v4, v2, v6

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v1, v3

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/alcineo/softpos/nlcoaie;->ioceanl:[B

    array-length v6, v4

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v1

    add-int/lit8 v1, v3, 0x1

    array-length v6, v4

    int-to-byte v6, v6

    aput-byte v6, v2, v3

    array-length v3, v4

    invoke-static {v4, v5, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Lcom/alcineo/softpos/nacieol;->aoleinc([B)Lcom/alcineo/softpos/nacieol;

    move-result-object v6

    new-instance v7, Lcom/alcineo/softpos/nlcoaie$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lcom/alcineo/softpos/nlcoaie$$ExternalSyntheticLambda2;-><init>(Lcom/alcineo/softpos/nlcoaie;)V

    iget-object v8, p0, Lcom/alcineo/softpos/nlcoaie;->alicneo:Lcom/alcineo/softpos/lniaeoc;

    iget-object v9, p0, Lcom/alcineo/softpos/nlcoaie;->oeicanl:Lcom/alcineo/softpos/coalnie;

    iget v10, p0, Lcom/alcineo/softpos/nlcoaie;->anceiol:I

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v6 .. v11}, Lcom/alcineo/softpos/ileacno;->acileon(Lcom/alcineo/softpos/alicneo;Lcom/alcineo/softpos/ociealn;Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;ILjava/util/concurrent/TimeUnit;)V

    :goto_0
    iget v1, p0, Lcom/alcineo/softpos/nlcoaie;->eliocna:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alcineo/softpos/nlcoaie;->eliocna:I

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/alcineo/softpos/nacieol;->acileon()Lcom/alcineo/softpos/nacieol;

    move-result-object v1

    new-instance v2, Lcom/alcineo/softpos/nlcoaie$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/alcineo/softpos/nlcoaie$$ExternalSyntheticLambda3;-><init>(Lcom/alcineo/softpos/nlcoaie;)V

    iget-object v3, p0, Lcom/alcineo/softpos/nlcoaie;->alicneo:Lcom/alcineo/softpos/lniaeoc;

    iget-object v4, p0, Lcom/alcineo/softpos/nlcoaie;->oeicanl:Lcom/alcineo/softpos/coalnie;

    iget v5, p0, Lcom/alcineo/softpos/nlcoaie;->anceiol:I

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
    iput-boolean v0, p0, Lcom/alcineo/softpos/nlcoaie;->nclioae:Z

    iget-object v0, p0, Lcom/alcineo/softpos/nlcoaie;->loenaic:Lcom/alcineo/administrative/pci/utils/PrivateAlgo;

    sget-object v1, Lcom/alcineo/softpos/nacieol$acileon;->ocenlai:Lcom/alcineo/softpos/nacieol$acileon;

    iget-object v2, p0, Lcom/alcineo/softpos/nlcoaie;->aelcoin:Lcom/alcineo/softpos/nclioae;

    iget-object v3, p0, Lcom/alcineo/softpos/nlcoaie;->nlcoaie:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/alcineo/softpos/nacieol;->acileon(Lcom/alcineo/administrative/pci/utils/PrivateAlgo;Lcom/alcineo/softpos/nacieol$acileon;Lcom/alcineo/softpos/nclioae;I)Lcom/alcineo/softpos/nacieol;

    move-result-object v4

    new-instance v5, Lcom/alcineo/softpos/nlcoaie$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/alcineo/softpos/nlcoaie$$ExternalSyntheticLambda0;-><init>(Lcom/alcineo/softpos/nlcoaie;)V

    iget-object v6, p0, Lcom/alcineo/softpos/nlcoaie;->alicneo:Lcom/alcineo/softpos/lniaeoc;

    iget-object v7, p0, Lcom/alcineo/softpos/nlcoaie;->oeicanl:Lcom/alcineo/softpos/coalnie;

    iget v8, p0, Lcom/alcineo/softpos/nlcoaie;->icloane:I

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
