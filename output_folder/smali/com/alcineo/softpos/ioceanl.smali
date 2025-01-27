.class public Lcom/alcineo/softpos/ioceanl;
.super Lcom/alcineo/softpos/oaeclin;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alcineo/softpos/oaeclin<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final alicneo:I = 0x800

.field private static final nclioae:Lorg/slf4j/Logger;


# instance fields
.field private aelcoin:I

.field private anceiol:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alcineo/administrative/FileId;",
            ">;"
        }
    .end annotation
.end field

.field private eliocna:D

.field private icloane:Lcom/alcineo/softpos/lniaeoc;

.field private ioceanl:D

.field private loenaic:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alcineo/softpos/oielacn<",
            "Lcom/alcineo/administrative/FileId;",
            "[B>;>;"
        }
    .end annotation
.end field

.field private nlcoaie:Lcom/alcineo/softpos/ocenlai;

.field private oecnlia:Lcom/alcineo/softpos/coalnie;


# direct methods
.method public static synthetic $r8$lambda$9a6uTMYufY3pdDXMdHttNs5nfvk(Lcom/alcineo/softpos/ioceanl;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/ioceanl;->noaceli(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AtA9cSYakHTv1xlBA-KF0s8Bcsw(Lcom/alcineo/softpos/ioceanl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/ioceanl;->acileon(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$RvJAvZSca5UR6BooWEYwHRwECJA(Lcom/alcineo/softpos/ioceanl;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/ioceanl;->acileon([B)V

    return-void
.end method

.method public static synthetic $r8$lambda$Sf-CmrjWRoNKrPewECAMJl1mu1g(Lcom/alcineo/softpos/ioceanl;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/ioceanl;->aoleinc(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eppbVcoq7oKxNL0hdfx-9vEm6zM(Lcom/alcineo/softpos/ioceanl;Lcom/alcineo/softpos/ocleina;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/ioceanl;->acileon(Lcom/alcineo/softpos/ocleina;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l4ReAl9t6oDTUQlDAkjJHBHcMZA(Lcom/alcineo/softpos/ioceanl;Lcom/alcineo/softpos/ocleina;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/ioceanl;->aoleinc(Lcom/alcineo/softpos/ocleina;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-class v0, Lcom/alcineo/softpos/ioceanl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/alcineo/softpos/ioceanl;->nclioae:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/alcineo/softpos/ocenlai;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alcineo/softpos/lniaeoc;",
            "Lcom/alcineo/softpos/coalnie;",
            "Ljava/util/ArrayList<",
            "Lcom/alcineo/administrative/FileId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/alcineo/softpos/oielacn<",
            "Lcom/alcineo/administrative/FileId;",
            "[B>;>;",
            "Lcom/alcineo/softpos/ocenlai;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/alcineo/softpos/oaeclin;-><init>()V

    const v0, 0x30d40

    iput v0, p0, Lcom/alcineo/softpos/ioceanl;->aelcoin:I

    iput-object p1, p0, Lcom/alcineo/softpos/ioceanl;->icloane:Lcom/alcineo/softpos/lniaeoc;

    iput-object p2, p0, Lcom/alcineo/softpos/ioceanl;->oecnlia:Lcom/alcineo/softpos/coalnie;

    iput-object p5, p0, Lcom/alcineo/softpos/ioceanl;->nlcoaie:Lcom/alcineo/softpos/ocenlai;

    iput-object p3, p0, Lcom/alcineo/softpos/ioceanl;->anceiol:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/alcineo/softpos/ioceanl;->loenaic:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p2, p0, Lcom/alcineo/softpos/ioceanl;->loenaic:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x2

    int-to-double p1, p1

    iput-wide p1, p0, Lcom/alcineo/softpos/ioceanl;->ioceanl:D

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    iput-wide p3, p0, Lcom/alcineo/softpos/ioceanl;->eliocna:D

    div-double/2addr p3, p1

    invoke-virtual {p0, p3, p4}, Lcom/alcineo/softpos/oaeclin;->acileon(D)V

    return-void
.end method

.method private native acileon(I)V
.end method

.method private native acileon(Lcom/alcineo/softpos/ocleina;)V
.end method

.method private native acileon([B)V
.end method

.method private aelcoin()V
    .locals 8

    iget-object v0, p0, Lcom/alcineo/softpos/ioceanl;->loenaic:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alcineo/softpos/ioceanl;->loenaic:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alcineo/softpos/oielacn;

    invoke-virtual {v0}, Lcom/alcineo/softpos/oielacn;->acileon()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/alcineo/administrative/FileId;

    invoke-virtual {v0}, Lcom/alcineo/softpos/oielacn;->aoleinc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p0, Lcom/alcineo/softpos/ioceanl;->loenaic:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v1, Lcom/alcineo/softpos/ioceanl;->nclioae:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Write : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alcineo/administrative/FileId;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    new-instance v1, Lcom/alcineo/softpos/enolcai;

    iget-object v3, p0, Lcom/alcineo/softpos/ioceanl;->icloane:Lcom/alcineo/softpos/lniaeoc;

    iget-object v4, p0, Lcom/alcineo/softpos/ioceanl;->oecnlia:Lcom/alcineo/softpos/coalnie;

    array-length v6, v0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/alcineo/softpos/enolcai;-><init>(Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;Lcom/alcineo/administrative/FileId;ILjava/io/InputStream;)V

    const/16 v0, 0x7d0

    invoke-virtual {v1, v0}, Lcom/alcineo/softpos/enolcai;->noaceli(I)V

    invoke-virtual {v1, v0}, Lcom/alcineo/softpos/enolcai;->acileon(I)V

    invoke-virtual {v1, v0}, Lcom/alcineo/softpos/enolcai;->aoleinc(I)V

    new-instance v0, Lcom/alcineo/softpos/ioceanl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/alcineo/softpos/ioceanl$$ExternalSyntheticLambda0;-><init>(Lcom/alcineo/softpos/ioceanl;)V

    invoke-virtual {v1, v0}, Lcom/alcineo/softpos/oaeclin;->acileon(Lcom/alcineo/softpos/oaeclin$noaceli;)Lcom/alcineo/softpos/oaeclin;

    new-instance v0, Lcom/alcineo/softpos/ioceanl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/alcineo/softpos/ioceanl$$ExternalSyntheticLambda1;-><init>(Lcom/alcineo/softpos/ioceanl;)V

    invoke-virtual {v1, v0}, Lcom/alcineo/softpos/oaeclin;->acileon(Lcom/alcineo/softpos/oaeclin$acileon;)Lcom/alcineo/softpos/oaeclin;

    invoke-virtual {v1}, Lcom/alcineo/softpos/oaeclin;->aoleinc()V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alcineo/softpos/ocleina;->aoleinc()Lcom/alcineo/softpos/ocleina;

    move-result-object v2

    new-instance v3, Lcom/alcineo/softpos/ioceanl$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/alcineo/softpos/ioceanl$$ExternalSyntheticLambda2;-><init>(Lcom/alcineo/softpos/ioceanl;)V

    iget-object v4, p0, Lcom/alcineo/softpos/ioceanl;->icloane:Lcom/alcineo/softpos/lniaeoc;

    iget-object v5, p0, Lcom/alcineo/softpos/ioceanl;->oecnlia:Lcom/alcineo/softpos/coalnie;

    iget v6, p0, Lcom/alcineo/softpos/ioceanl;->aelcoin:I

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v2 .. v7}, Lcom/alcineo/softpos/ileacno;->acileon(Lcom/alcineo/softpos/alicneo;Lcom/alcineo/softpos/ociealn;Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;ILjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method private native aoleinc(Lcom/alcineo/softpos/ocleina;)V
.end method

.method private native synthetic aoleinc(Ljava/lang/Exception;)V
.end method

.method private loenaic()V
    .locals 4

    iget-object v0, p0, Lcom/alcineo/softpos/ioceanl;->anceiol:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alcineo/softpos/ioceanl;->anceiol:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alcineo/administrative/FileId;

    sget-object v1, Lcom/alcineo/softpos/ioceanl;->nclioae:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Read : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alcineo/administrative/FileId;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    new-instance v1, Lcom/alcineo/softpos/noaceli;

    iget-object v2, p0, Lcom/alcineo/softpos/ioceanl;->icloane:Lcom/alcineo/softpos/lniaeoc;

    iget-object v3, p0, Lcom/alcineo/softpos/ioceanl;->oecnlia:Lcom/alcineo/softpos/coalnie;

    invoke-direct {v1, v2, v3, v0}, Lcom/alcineo/softpos/noaceli;-><init>(Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;Lcom/alcineo/administrative/FileId;)V

    const/16 v0, 0x7d0

    invoke-virtual {v1, v0}, Lcom/alcineo/softpos/noaceli;->noaceli(I)V

    invoke-virtual {v1, v0}, Lcom/alcineo/softpos/noaceli;->acileon(I)V

    invoke-virtual {v1, v0}, Lcom/alcineo/softpos/noaceli;->aoleinc(I)V

    new-instance v0, Lcom/alcineo/softpos/ioceanl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/alcineo/softpos/ioceanl$$ExternalSyntheticLambda3;-><init>(Lcom/alcineo/softpos/ioceanl;)V

    invoke-virtual {v1, v0}, Lcom/alcineo/softpos/oaeclin;->acileon(Lcom/alcineo/softpos/oaeclin$noaceli;)Lcom/alcineo/softpos/oaeclin;

    new-instance v0, Lcom/alcineo/softpos/ioceanl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/alcineo/softpos/ioceanl$$ExternalSyntheticLambda4;-><init>(Lcom/alcineo/softpos/ioceanl;)V

    invoke-virtual {v1, v0}, Lcom/alcineo/softpos/oaeclin;->acileon(Lcom/alcineo/softpos/oaeclin$acileon;)Lcom/alcineo/softpos/oaeclin;

    invoke-virtual {v1}, Lcom/alcineo/softpos/oaeclin;->aoleinc()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/alcineo/softpos/ioceanl;->aelcoin()V

    return-void
.end method

.method private native synthetic noaceli(Ljava/lang/Exception;)V
.end method


# virtual methods
.method public anceiol()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/alcineo/softpos/ocleina;->acileon()Lcom/alcineo/softpos/ocleina;

    move-result-object v0

    new-instance v1, Lcom/alcineo/softpos/ioceanl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/alcineo/softpos/ioceanl$$ExternalSyntheticLambda5;-><init>(Lcom/alcineo/softpos/ioceanl;)V

    iget-object v2, p0, Lcom/alcineo/softpos/ioceanl;->icloane:Lcom/alcineo/softpos/lniaeoc;

    iget-object v3, p0, Lcom/alcineo/softpos/ioceanl;->oecnlia:Lcom/alcineo/softpos/coalnie;

    iget v4, p0, Lcom/alcineo/softpos/ioceanl;->aelcoin:I

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v0 .. v5}, Lcom/alcineo/softpos/ileacno;->acileon(Lcom/alcineo/softpos/alicneo;Lcom/alcineo/softpos/ociealn;Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;ILjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public native oecnlia()V
.end method
