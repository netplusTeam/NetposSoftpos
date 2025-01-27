.class public Lcom/alcineo/softpos/eliocna;
.super Lcom/alcineo/softpos/oaeclin;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alcineo/softpos/eliocna$acileon;,
        Lcom/alcineo/softpos/eliocna$ocenlai;,
        Lcom/alcineo/softpos/eliocna$enolcai;,
        Lcom/alcineo/softpos/eliocna$noaceli;,
        Lcom/alcineo/softpos/eliocna$aoleinc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alcineo/softpos/oaeclin<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final naciole:I = 0x800


# instance fields
.field private final aelcoin:Ljava/io/InputStream;

.field private alicneo:Z

.field private anceiol:I

.field private cnaolie:I

.field private coalnie:I

.field private eliocna:Ljava/io/FileOutputStream;

.field private icloane:I

.field private final ioceanl:[B

.field private final loenaic:I

.field private nclioae:Lcom/alcineo/softpos/eliocna$acileon;

.field private final nlcoaie:[B

.field private oalecni:Lcom/alcineo/softpos/coalnie;

.field private oecnlia:I

.field private oeicanl:Lcom/alcineo/softpos/lniaeoc;


# direct methods
.method public static synthetic $r8$lambda$Zz0HtTq7ITKXWEXjoezChwlAOT0(Lcom/alcineo/softpos/eliocna;Lcom/alcineo/softpos/icloane;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/eliocna;->acileon(Lcom/alcineo/softpos/icloane;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kcKwlupLMnIUujL4zAKaD3V-pmw(Lcom/alcineo/softpos/eliocna;Lcom/alcineo/softpos/icloane;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/eliocna;->aoleinc(Lcom/alcineo/softpos/icloane;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oUIGKfpvg7zXdDczs1Tf55-xu6c(Lcom/alcineo/softpos/eliocna;Lcom/alcineo/softpos/icloane;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/eliocna;->noaceli(Lcom/alcineo/softpos/icloane;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yk1ic6Nlia5khmbJyiKCpRA6RJg(Lcom/alcineo/softpos/eliocna;Lcom/alcineo/softpos/icloane;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/eliocna;->enolcai(Lcom/alcineo/softpos/icloane;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;ILjava/io/InputStream;Ljava/io/FileOutputStream;Lcom/alcineo/softpos/eliocna$acileon;[B[B)V
    .locals 1

    invoke-direct {p0}, Lcom/alcineo/softpos/oaeclin;-><init>()V

    const v0, 0x5f5e100

    iput v0, p0, Lcom/alcineo/softpos/eliocna;->icloane:I

    iput v0, p0, Lcom/alcineo/softpos/eliocna;->oecnlia:I

    iput v0, p0, Lcom/alcineo/softpos/eliocna;->anceiol:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alcineo/softpos/eliocna;->coalnie:I

    iput v0, p0, Lcom/alcineo/softpos/eliocna;->cnaolie:I

    iput p3, p0, Lcom/alcineo/softpos/eliocna;->loenaic:I

    iput-object p4, p0, Lcom/alcineo/softpos/eliocna;->aelcoin:Ljava/io/InputStream;

    iput-object p7, p0, Lcom/alcineo/softpos/eliocna;->nlcoaie:[B

    iput-object p8, p0, Lcom/alcineo/softpos/eliocna;->ioceanl:[B

    iput-object p1, p0, Lcom/alcineo/softpos/eliocna;->oeicanl:Lcom/alcineo/softpos/lniaeoc;

    iput-object p2, p0, Lcom/alcineo/softpos/eliocna;->oalecni:Lcom/alcineo/softpos/coalnie;

    iput-object p5, p0, Lcom/alcineo/softpos/eliocna;->eliocna:Ljava/io/FileOutputStream;

    iput-object p6, p0, Lcom/alcineo/softpos/eliocna;->nclioae:Lcom/alcineo/softpos/eliocna$acileon;

    return-void
.end method

.method private native acileon(Lcom/alcineo/softpos/icloane;)V
.end method

.method private anceiol()V
    .locals 8

    const/16 v0, 0x800

    new-array v0, v0, [B

    :try_start_0
    iget-boolean v1, p0, Lcom/alcineo/softpos/eliocna;->alicneo:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alcineo/softpos/eliocna;->aelcoin:Ljava/io/InputStream;

    iget v2, p0, Lcom/alcineo/softpos/eliocna;->cnaolie:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0, v3, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alcineo/softpos/icloane;->acileon([B)Lcom/alcineo/softpos/icloane;

    move-result-object v2

    new-instance v3, Lcom/alcineo/softpos/eliocna$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/alcineo/softpos/eliocna$$ExternalSyntheticLambda0;-><init>(Lcom/alcineo/softpos/eliocna;)V

    iget-object v4, p0, Lcom/alcineo/softpos/eliocna;->oeicanl:Lcom/alcineo/softpos/lniaeoc;

    iget-object v5, p0, Lcom/alcineo/softpos/eliocna;->oalecni:Lcom/alcineo/softpos/coalnie;

    iget v6, p0, Lcom/alcineo/softpos/eliocna;->oecnlia:I

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v2 .. v7}, Lcom/alcineo/softpos/ileacno;->acileon(Lcom/alcineo/softpos/alicneo;Lcom/alcineo/softpos/ociealn;Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;ILjava/util/concurrent/TimeUnit;)V

    iget v0, p0, Lcom/alcineo/softpos/eliocna;->coalnie:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alcineo/softpos/eliocna;->coalnie:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alcineo/softpos/eliocna;->eliocna:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    invoke-static {}, Lcom/alcineo/softpos/icloane;->aoleinc()Lcom/alcineo/softpos/icloane;

    move-result-object v1

    new-instance v2, Lcom/alcineo/softpos/eliocna$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/alcineo/softpos/eliocna$$ExternalSyntheticLambda1;-><init>(Lcom/alcineo/softpos/eliocna;)V

    iget-object v3, p0, Lcom/alcineo/softpos/eliocna;->oeicanl:Lcom/alcineo/softpos/lniaeoc;

    iget-object v4, p0, Lcom/alcineo/softpos/eliocna;->oalecni:Lcom/alcineo/softpos/coalnie;

    iget v5, p0, Lcom/alcineo/softpos/eliocna;->anceiol:I

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v1 .. v6}, Lcom/alcineo/softpos/ileacno;->acileon(Lcom/alcineo/softpos/alicneo;Lcom/alcineo/softpos/ociealn;Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;ILjava/util/concurrent/TimeUnit;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/alcineo/softpos/icloane;->acileon()Lcom/alcineo/softpos/icloane;

    move-result-object v1

    new-instance v2, Lcom/alcineo/softpos/eliocna$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/alcineo/softpos/eliocna$$ExternalSyntheticLambda2;-><init>(Lcom/alcineo/softpos/eliocna;)V

    iget-object v3, p0, Lcom/alcineo/softpos/eliocna;->oeicanl:Lcom/alcineo/softpos/lniaeoc;

    iget-object v4, p0, Lcom/alcineo/softpos/eliocna;->oalecni:Lcom/alcineo/softpos/coalnie;

    iget v5, p0, Lcom/alcineo/softpos/eliocna;->anceiol:I

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v1 .. v6}, Lcom/alcineo/softpos/ileacno;->acileon(Lcom/alcineo/softpos/alicneo;Lcom/alcineo/softpos/ociealn;Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;ILjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/alcineo/softpos/oaeclin;->acileon(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method private native aoleinc(Lcom/alcineo/softpos/icloane;)V
.end method

.method private native enolcai(Lcom/alcineo/softpos/icloane;)V
.end method

.method private native noaceli(Lcom/alcineo/softpos/icloane;)V
.end method


# virtual methods
.method public native acileon()V
.end method

.method public oecnlia()V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/alcineo/softpos/eliocna;->alicneo:Z

    iget-object v0, p0, Lcom/alcineo/softpos/eliocna;->nclioae:Lcom/alcineo/softpos/eliocna$acileon;

    iget-object v1, p0, Lcom/alcineo/softpos/eliocna;->nlcoaie:[B

    iget-object v2, p0, Lcom/alcineo/softpos/eliocna;->ioceanl:[B

    invoke-static {v0, v1, v2}, Lcom/alcineo/softpos/icloane;->acileon(Lcom/alcineo/softpos/eliocna$acileon;[B[B)Lcom/alcineo/softpos/icloane;

    move-result-object v3

    new-instance v4, Lcom/alcineo/softpos/eliocna$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/alcineo/softpos/eliocna$$ExternalSyntheticLambda3;-><init>(Lcom/alcineo/softpos/eliocna;)V

    iget-object v5, p0, Lcom/alcineo/softpos/eliocna;->oeicanl:Lcom/alcineo/softpos/lniaeoc;

    iget-object v6, p0, Lcom/alcineo/softpos/eliocna;->oalecni:Lcom/alcineo/softpos/coalnie;

    iget v7, p0, Lcom/alcineo/softpos/eliocna;->icloane:I

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v3 .. v8}, Lcom/alcineo/softpos/ileacno;->acileon(Lcom/alcineo/softpos/alicneo;Lcom/alcineo/softpos/ociealn;Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;ILjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/alcineo/softpos/oaeclin;->acileon(Ljava/lang/Exception;)V

    return-void
.end method
