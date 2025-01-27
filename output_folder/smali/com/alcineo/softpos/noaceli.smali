.class public Lcom/alcineo/softpos/noaceli;
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
.field private static final alicneo:I = 0x800


# instance fields
.field private aelcoin:Lcom/alcineo/softpos/coalnie;

.field private anceiol:I

.field private eliocna:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private icloane:I

.field private ioceanl:I

.field private loenaic:Lcom/alcineo/softpos/lniaeoc;

.field private nclioae:Z

.field private final nlcoaie:Lcom/alcineo/administrative/FileId;

.field private oecnlia:I


# direct methods
.method public static synthetic $r8$lambda$-80k5tOBt3k1XBWTlrlTbP8jyIk(Lcom/alcineo/softpos/noaceli;Lcom/alcineo/administrative/commands/FileManagement;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/noaceli;->acileon(Lcom/alcineo/administrative/commands/FileManagement;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LmFI1KgM0C5-cBaCmTxrqpWJpuA(Lcom/alcineo/softpos/noaceli;Lcom/alcineo/administrative/commands/FileManagement;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/noaceli;->aoleinc(Lcom/alcineo/administrative/commands/FileManagement;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PlrJ5OJLGVZQTBHrYLom4Wq_VyQ(Lcom/alcineo/softpos/noaceli;Lcom/alcineo/administrative/commands/FileManagement;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/noaceli;->noaceli(Lcom/alcineo/administrative/commands/FileManagement;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aMdhCuI99ClF7YVMBIRV6CPWeMM(Lcom/alcineo/softpos/noaceli;Lcom/alcineo/administrative/commands/FileManagement;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/noaceli;->enolcai(Lcom/alcineo/administrative/commands/FileManagement;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;Lcom/alcineo/administrative/FileId;)V
    .locals 1

    invoke-direct {p0}, Lcom/alcineo/softpos/oaeclin;-><init>()V

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/alcineo/softpos/noaceli;->icloane:I

    iput v0, p0, Lcom/alcineo/softpos/noaceli;->oecnlia:I

    const/16 v0, 0x1770

    iput v0, p0, Lcom/alcineo/softpos/noaceli;->anceiol:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alcineo/softpos/noaceli;->ioceanl:I

    iput-boolean v0, p0, Lcom/alcineo/softpos/noaceli;->nclioae:Z

    iput-object p1, p0, Lcom/alcineo/softpos/noaceli;->loenaic:Lcom/alcineo/softpos/lniaeoc;

    iput-object p2, p0, Lcom/alcineo/softpos/noaceli;->aelcoin:Lcom/alcineo/softpos/coalnie;

    iput-object p3, p0, Lcom/alcineo/softpos/noaceli;->nlcoaie:Lcom/alcineo/administrative/FileId;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/alcineo/softpos/noaceli;->eliocna:Ljava/util/ArrayList;

    return-void
.end method

.method private native acileon(Lcom/alcineo/administrative/commands/FileManagement;)V
.end method

.method private anceiol()V
    .locals 8

    :try_start_0
    iget-boolean v0, p0, Lcom/alcineo/softpos/noaceli;->nclioae:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/alcineo/administrative/commands/FileManagement;->abort()Lcom/alcineo/administrative/commands/FileManagement;

    move-result-object v2

    new-instance v3, Lcom/alcineo/softpos/noaceli$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/alcineo/softpos/noaceli$$ExternalSyntheticLambda0;-><init>(Lcom/alcineo/softpos/noaceli;)V

    iget-object v4, p0, Lcom/alcineo/softpos/noaceli;->loenaic:Lcom/alcineo/softpos/lniaeoc;

    iget-object v5, p0, Lcom/alcineo/softpos/noaceli;->aelcoin:Lcom/alcineo/softpos/coalnie;

    iget v6, p0, Lcom/alcineo/softpos/noaceli;->icloane:I

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v2 .. v7}, Lcom/alcineo/softpos/ileacno;->acileon(Lcom/alcineo/softpos/alicneo;Lcom/alcineo/softpos/ociealn;Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;ILjava/util/concurrent/TimeUnit;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alcineo/softpos/noaceli;->eliocna:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/alcineo/softpos/noaceli;->ioceanl:I

    if-ge v0, v1, :cond_1

    invoke-static {}, Lcom/alcineo/administrative/commands/FileManagement;->read()Lcom/alcineo/administrative/commands/FileManagement;

    move-result-object v2

    new-instance v3, Lcom/alcineo/softpos/noaceli$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/alcineo/softpos/noaceli$$ExternalSyntheticLambda1;-><init>(Lcom/alcineo/softpos/noaceli;)V

    iget-object v4, p0, Lcom/alcineo/softpos/noaceli;->loenaic:Lcom/alcineo/softpos/lniaeoc;

    iget-object v5, p0, Lcom/alcineo/softpos/noaceli;->aelcoin:Lcom/alcineo/softpos/coalnie;

    iget v6, p0, Lcom/alcineo/softpos/noaceli;->oecnlia:I

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v2 .. v7}, Lcom/alcineo/softpos/ileacno;->acileon(Lcom/alcineo/softpos/alicneo;Lcom/alcineo/softpos/ociealn;Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;ILjava/util/concurrent/TimeUnit;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/alcineo/administrative/commands/FileManagement;->end()Lcom/alcineo/administrative/commands/FileManagement;

    move-result-object v1

    new-instance v2, Lcom/alcineo/softpos/noaceli$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/alcineo/softpos/noaceli$$ExternalSyntheticLambda2;-><init>(Lcom/alcineo/softpos/noaceli;)V

    iget-object v3, p0, Lcom/alcineo/softpos/noaceli;->loenaic:Lcom/alcineo/softpos/lniaeoc;

    iget-object v4, p0, Lcom/alcineo/softpos/noaceli;->aelcoin:Lcom/alcineo/softpos/coalnie;

    iget v5, p0, Lcom/alcineo/softpos/noaceli;->anceiol:I

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v1 .. v6}, Lcom/alcineo/softpos/ileacno;->acileon(Lcom/alcineo/softpos/alicneo;Lcom/alcineo/softpos/ociealn;Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;ILjava/util/concurrent/TimeUnit;)V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v0, v1}, Lcom/alcineo/softpos/oaeclin;->acileon(D)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/alcineo/softpos/noaceli;->acileon(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private aoleinc(Lcom/alcineo/administrative/commands/FileManagement;)V
    .locals 4

    :try_start_0
    const-string v0, "FileManagement(Read)"

    invoke-static {p1, v0}, Lcom/alcineo/softpos/ileacno;->aoleinc(Lcom/alcineo/softpos/alicneo;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Lcom/alcineo/softpos/alicneo;->SCMD_SUCCESS:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, 0x94

    aput v3, v0, v1

    invoke-static {p1, v0}, Lcom/alcineo/softpos/ileacno;->acileon(Lcom/alcineo/softpos/alicneo;[I)V

    const/16 v0, 0x800

    invoke-static {p1, v2, v0}, Lcom/alcineo/softpos/ileacno;->acileon(Lcom/alcineo/softpos/alicneo;II)V

    iget-object v0, p0, Lcom/alcineo/softpos/noaceli;->eliocna:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/alcineo/softpos/alicneo;->getData()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/primitives/Bytes;->asList([B)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lcom/alcineo/softpos/noaceli;->eliocna:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-double v0, p1

    iget p1, p0, Lcom/alcineo/softpos/noaceli;->ioceanl:I

    int-to-double v2, p1

    div-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/alcineo/softpos/oaeclin;->acileon(D)V

    invoke-direct {p0}, Lcom/alcineo/softpos/noaceli;->anceiol()V

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/alcineo/softpos/noaceli;->acileon(Ljava/lang/Exception;)V

    return-void
.end method

.method private native enolcai(Lcom/alcineo/administrative/commands/FileManagement;)V
.end method

.method private native noaceli(Lcom/alcineo/administrative/commands/FileManagement;)V
.end method


# virtual methods
.method public native acileon(I)V
.end method

.method public native acileon(Ljava/lang/Exception;)V
.end method

.method public native synthetic acileon(Ljava/lang/Object;)V
.end method

.method public native acileon(Z)V
.end method

.method public native acileon([B)V
.end method

.method public native aelcoin()Lcom/alcineo/administrative/FileId;
.end method

.method public native aoleinc(I)V
.end method

.method public native loenaic()I
.end method

.method public native noaceli(I)V
.end method

.method public oecnlia()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/alcineo/softpos/noaceli;->nlcoaie:Lcom/alcineo/administrative/FileId;

    invoke-static {v0}, Lcom/alcineo/administrative/commands/FileManagement;->initRead(Lcom/alcineo/administrative/FileId;)Lcom/alcineo/administrative/commands/FileManagement;

    move-result-object v1

    new-instance v2, Lcom/alcineo/softpos/noaceli$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/alcineo/softpos/noaceli$$ExternalSyntheticLambda3;-><init>(Lcom/alcineo/softpos/noaceli;)V

    iget-object v3, p0, Lcom/alcineo/softpos/noaceli;->loenaic:Lcom/alcineo/softpos/lniaeoc;

    iget-object v4, p0, Lcom/alcineo/softpos/noaceli;->aelcoin:Lcom/alcineo/softpos/coalnie;

    iget v5, p0, Lcom/alcineo/softpos/noaceli;->icloane:I

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v1 .. v6}, Lcom/alcineo/softpos/ileacno;->acileon(Lcom/alcineo/softpos/alicneo;Lcom/alcineo/softpos/ociealn;Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;ILjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/alcineo/softpos/noaceli;->acileon(Ljava/lang/Exception;)V

    return-void
.end method
