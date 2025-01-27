.class public Lcom/alcineo/softpos/aoleinc;
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
.field private static final oalecni:I = 0x800


# instance fields
.field private aelcoin:Lcom/alcineo/softpos/coalnie;

.field private alicneo:I

.field private anceiol:I

.field private final eliocna:Ljava/io/InputStream;

.field private icloane:I

.field private final ioceanl:B

.field private loenaic:Lcom/alcineo/softpos/lniaeoc;

.field private nclioae:I

.field private final nlcoaie:I

.field private oecnlia:I

.field private oeicanl:Z


# direct methods
.method public static synthetic $r8$lambda$YGxa6BwRjq07wnkqNJl-bMUd10I(Lcom/alcineo/softpos/aoleinc;Lcom/alcineo/administrative/commands/SendFile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/aoleinc;->acileon(Lcom/alcineo/administrative/commands/SendFile;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ex-sJ4eq_5HvFCg58J7TgAlkIDo(Lcom/alcineo/softpos/aoleinc;Lcom/alcineo/administrative/commands/SendFile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/aoleinc;->aoleinc(Lcom/alcineo/administrative/commands/SendFile;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rdTvS3Ixr4o1T3vZ_oX-l2NnF-E(Lcom/alcineo/softpos/aoleinc;Lcom/alcineo/administrative/commands/SendFile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/aoleinc;->noaceli(Lcom/alcineo/administrative/commands/SendFile;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;BILjava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Lcom/alcineo/softpos/oaeclin;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/alcineo/softpos/aoleinc;->icloane:I

    iput v0, p0, Lcom/alcineo/softpos/aoleinc;->oecnlia:I

    const v0, 0xea60

    iput v0, p0, Lcom/alcineo/softpos/aoleinc;->anceiol:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alcineo/softpos/aoleinc;->nclioae:I

    iput v0, p0, Lcom/alcineo/softpos/aoleinc;->alicneo:I

    iput-boolean v0, p0, Lcom/alcineo/softpos/aoleinc;->oeicanl:Z

    iput p4, p0, Lcom/alcineo/softpos/aoleinc;->nlcoaie:I

    iput-object p5, p0, Lcom/alcineo/softpos/aoleinc;->eliocna:Ljava/io/InputStream;

    iput-byte p3, p0, Lcom/alcineo/softpos/aoleinc;->ioceanl:B

    iput-object p1, p0, Lcom/alcineo/softpos/aoleinc;->loenaic:Lcom/alcineo/softpos/lniaeoc;

    iput-object p2, p0, Lcom/alcineo/softpos/aoleinc;->aelcoin:Lcom/alcineo/softpos/coalnie;

    return-void
.end method

.method private native acileon(Lcom/alcineo/administrative/commands/SendFile;)V
.end method

.method private native anceiol()V
.end method

.method private native aoleinc(Lcom/alcineo/administrative/commands/SendFile;)V
.end method

.method private loenaic()V
    .locals 8

    const/16 v0, 0x800

    new-array v0, v0, [B

    :try_start_0
    iget-object v1, p0, Lcom/alcineo/softpos/aoleinc;->eliocna:Ljava/io/InputStream;

    iget v2, p0, Lcom/alcineo/softpos/aoleinc;->alicneo:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0, v3, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alcineo/administrative/commands/SendFile;->data([B)Lcom/alcineo/administrative/commands/SendFile;

    move-result-object v2

    new-instance v3, Lcom/alcineo/softpos/aoleinc$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/alcineo/softpos/aoleinc$$ExternalSyntheticLambda0;-><init>(Lcom/alcineo/softpos/aoleinc;)V

    iget-object v4, p0, Lcom/alcineo/softpos/aoleinc;->loenaic:Lcom/alcineo/softpos/lniaeoc;

    iget-object v5, p0, Lcom/alcineo/softpos/aoleinc;->aelcoin:Lcom/alcineo/softpos/coalnie;

    iget v6, p0, Lcom/alcineo/softpos/aoleinc;->oecnlia:I

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v2 .. v7}, Lcom/alcineo/softpos/ileacno;->acileon(Lcom/alcineo/softpos/alicneo;Lcom/alcineo/softpos/ociealn;Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;ILjava/util/concurrent/TimeUnit;)V

    iget v0, p0, Lcom/alcineo/softpos/aoleinc;->nclioae:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alcineo/softpos/aoleinc;->nclioae:I

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/alcineo/softpos/aoleinc;->oeicanl:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alcineo/softpos/aoleinc;->aelcoin:Lcom/alcineo/softpos/coalnie;

    invoke-static {}, Lcom/alcineo/administrative/commands/SendFile;->end()Lcom/alcineo/administrative/commands/SendFile;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alcineo/softpos/coalnie;->acileon(Lcom/alcineo/softpos/alicneo;)V

    iget v0, p0, Lcom/alcineo/softpos/aoleinc;->nclioae:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alcineo/softpos/aoleinc;->acileon(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/alcineo/administrative/commands/SendFile;->end()Lcom/alcineo/administrative/commands/SendFile;

    move-result-object v1

    new-instance v2, Lcom/alcineo/softpos/aoleinc$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/alcineo/softpos/aoleinc$$ExternalSyntheticLambda1;-><init>(Lcom/alcineo/softpos/aoleinc;)V

    iget-object v3, p0, Lcom/alcineo/softpos/aoleinc;->loenaic:Lcom/alcineo/softpos/lniaeoc;

    iget-object v4, p0, Lcom/alcineo/softpos/aoleinc;->aelcoin:Lcom/alcineo/softpos/coalnie;

    iget v5, p0, Lcom/alcineo/softpos/aoleinc;->anceiol:I

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v1 .. v6}, Lcom/alcineo/softpos/ileacno;->acileon(Lcom/alcineo/softpos/alicneo;Lcom/alcineo/softpos/ociealn;Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;ILjava/util/concurrent/TimeUnit;)V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v0, v1}, Lcom/alcineo/softpos/oaeclin;->acileon(D)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/alcineo/softpos/aoleinc;->acileon(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private native noaceli(Lcom/alcineo/administrative/commands/SendFile;)V
.end method


# virtual methods
.method public native acileon(I)V
.end method

.method public native acileon(Ljava/lang/Exception;)V
.end method

.method public native acileon(Ljava/lang/Integer;)V
.end method

.method public native synthetic acileon(Ljava/lang/Object;)V
.end method

.method public native aelcoin()I
.end method

.method public native aoleinc(I)V
.end method

.method public native eliocna()Ljava/io/InputStream;
.end method

.method public native ioceanl()B
.end method

.method public native nlcoaie()I
.end method

.method public native noaceli(I)V
.end method

.method public oecnlia()V
    .locals 8

    :try_start_0
    iget-byte v0, p0, Lcom/alcineo/softpos/aoleinc;->ioceanl:B

    iget v1, p0, Lcom/alcineo/softpos/aoleinc;->nlcoaie:I

    invoke-static {v0, v1}, Lcom/alcineo/administrative/commands/SendFile;->init(II)Lcom/alcineo/administrative/commands/SendFile;

    move-result-object v2

    new-instance v3, Lcom/alcineo/softpos/aoleinc$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/alcineo/softpos/aoleinc$$ExternalSyntheticLambda2;-><init>(Lcom/alcineo/softpos/aoleinc;)V

    iget-object v4, p0, Lcom/alcineo/softpos/aoleinc;->loenaic:Lcom/alcineo/softpos/lniaeoc;

    iget-object v5, p0, Lcom/alcineo/softpos/aoleinc;->aelcoin:Lcom/alcineo/softpos/coalnie;

    iget v6, p0, Lcom/alcineo/softpos/aoleinc;->icloane:I

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v2 .. v7}, Lcom/alcineo/softpos/ileacno;->acileon(Lcom/alcineo/softpos/alicneo;Lcom/alcineo/softpos/ociealn;Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;ILjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/alcineo/softpos/aoleinc;->acileon(Ljava/lang/Exception;)V

    return-void
.end method
