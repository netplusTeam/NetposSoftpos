.class public Lcom/alcineo/softpos/enolcai;
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
.field private static final coalnie:I = 0x800


# instance fields
.field private aelcoin:Lcom/alcineo/softpos/coalnie;

.field private alicneo:I

.field private anceiol:I

.field private final eliocna:Ljava/io/InputStream;

.field private icloane:I

.field private final ioceanl:Lcom/alcineo/administrative/FileId;

.field private loenaic:Lcom/alcineo/softpos/lniaeoc;

.field private nclioae:I

.field private final nlcoaie:I

.field private oalecni:Z

.field private oecnlia:I

.field private oeicanl:Z


# direct methods
.method public static synthetic $r8$lambda$9UA8t2m1YD4HiXSSrrSqxsCDMtY(Lcom/alcineo/softpos/enolcai;Lcom/alcineo/administrative/commands/FileManagement;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/enolcai;->enolcai(Lcom/alcineo/administrative/commands/FileManagement;)V

    return-void
.end method

.method public static synthetic $r8$lambda$beGKGzmXQJ-BHpIDq7rdmiNL_-4(Lcom/alcineo/softpos/enolcai;Lcom/alcineo/administrative/commands/FileManagement;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/enolcai;->noaceli(Lcom/alcineo/administrative/commands/FileManagement;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fAY-nd1SMuC7lA9hVfuWaQYHURw(Lcom/alcineo/softpos/enolcai;Lcom/alcineo/administrative/commands/FileManagement;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/enolcai;->acileon(Lcom/alcineo/administrative/commands/FileManagement;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rWMvEC57l3s4ATPsEmSXm9a3HMM(Lcom/alcineo/softpos/enolcai;Lcom/alcineo/administrative/commands/FileManagement;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/enolcai;->aoleinc(Lcom/alcineo/administrative/commands/FileManagement;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;Lcom/alcineo/administrative/FileId;ILjava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Lcom/alcineo/softpos/oaeclin;-><init>()V

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/alcineo/softpos/enolcai;->icloane:I

    iput v0, p0, Lcom/alcineo/softpos/enolcai;->oecnlia:I

    const/16 v0, 0x1770

    iput v0, p0, Lcom/alcineo/softpos/enolcai;->anceiol:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alcineo/softpos/enolcai;->nclioae:I

    iput v0, p0, Lcom/alcineo/softpos/enolcai;->alicneo:I

    iput-boolean v0, p0, Lcom/alcineo/softpos/enolcai;->oalecni:Z

    iput-object p1, p0, Lcom/alcineo/softpos/enolcai;->loenaic:Lcom/alcineo/softpos/lniaeoc;

    iput-object p2, p0, Lcom/alcineo/softpos/enolcai;->aelcoin:Lcom/alcineo/softpos/coalnie;

    iput-object p3, p0, Lcom/alcineo/softpos/enolcai;->ioceanl:Lcom/alcineo/administrative/FileId;

    iput p4, p0, Lcom/alcineo/softpos/enolcai;->nlcoaie:I

    iput-object p5, p0, Lcom/alcineo/softpos/enolcai;->eliocna:Ljava/io/InputStream;

    return-void
.end method

.method private native acileon(Lcom/alcineo/administrative/commands/FileManagement;)V
.end method

.method private native anceiol()V
.end method

.method private native aoleinc(Lcom/alcineo/administrative/commands/FileManagement;)V
.end method

.method private native enolcai(Lcom/alcineo/administrative/commands/FileManagement;)V
.end method

.method private loenaic()V
    .locals 8

    :try_start_0
    iget-boolean v0, p0, Lcom/alcineo/softpos/enolcai;->oalecni:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/alcineo/administrative/commands/FileManagement;->abort()Lcom/alcineo/administrative/commands/FileManagement;

    move-result-object v2

    new-instance v3, Lcom/alcineo/softpos/enolcai$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/alcineo/softpos/enolcai$$ExternalSyntheticLambda1;-><init>(Lcom/alcineo/softpos/enolcai;)V

    iget-object v4, p0, Lcom/alcineo/softpos/enolcai;->loenaic:Lcom/alcineo/softpos/lniaeoc;

    iget-object v5, p0, Lcom/alcineo/softpos/enolcai;->aelcoin:Lcom/alcineo/softpos/coalnie;

    iget v6, p0, Lcom/alcineo/softpos/enolcai;->icloane:I

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v2 .. v7}, Lcom/alcineo/softpos/ileacno;->acileon(Lcom/alcineo/softpos/alicneo;Lcom/alcineo/softpos/ociealn;Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;ILjava/util/concurrent/TimeUnit;)V

    return-void

    :cond_0
    const/16 v0, 0x800

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/alcineo/softpos/enolcai;->eliocna:Ljava/io/InputStream;

    iget v2, p0, Lcom/alcineo/softpos/enolcai;->alicneo:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {v0, v3, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alcineo/administrative/commands/FileManagement;->write([B)Lcom/alcineo/administrative/commands/FileManagement;

    move-result-object v2

    new-instance v3, Lcom/alcineo/softpos/enolcai$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/alcineo/softpos/enolcai$$ExternalSyntheticLambda2;-><init>(Lcom/alcineo/softpos/enolcai;)V

    iget-object v4, p0, Lcom/alcineo/softpos/enolcai;->loenaic:Lcom/alcineo/softpos/lniaeoc;

    iget-object v5, p0, Lcom/alcineo/softpos/enolcai;->aelcoin:Lcom/alcineo/softpos/coalnie;

    iget v6, p0, Lcom/alcineo/softpos/enolcai;->oecnlia:I

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v2 .. v7}, Lcom/alcineo/softpos/ileacno;->acileon(Lcom/alcineo/softpos/alicneo;Lcom/alcineo/softpos/ociealn;Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;ILjava/util/concurrent/TimeUnit;)V

    iget v0, p0, Lcom/alcineo/softpos/enolcai;->nclioae:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alcineo/softpos/enolcai;->nclioae:I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/alcineo/administrative/commands/FileManagement;->end()Lcom/alcineo/administrative/commands/FileManagement;

    move-result-object v1

    new-instance v2, Lcom/alcineo/softpos/enolcai$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/alcineo/softpos/enolcai$$ExternalSyntheticLambda3;-><init>(Lcom/alcineo/softpos/enolcai;)V

    iget-object v3, p0, Lcom/alcineo/softpos/enolcai;->loenaic:Lcom/alcineo/softpos/lniaeoc;

    iget-object v4, p0, Lcom/alcineo/softpos/enolcai;->aelcoin:Lcom/alcineo/softpos/coalnie;

    iget v5, p0, Lcom/alcineo/softpos/enolcai;->anceiol:I

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v1 .. v6}, Lcom/alcineo/softpos/ileacno;->acileon(Lcom/alcineo/softpos/alicneo;Lcom/alcineo/softpos/ociealn;Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;ILjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/alcineo/softpos/enolcai;->acileon(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private native noaceli(Lcom/alcineo/administrative/commands/FileManagement;)V
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

.method public native acileon(Z)V
.end method

.method public native aelcoin()I
.end method

.method public native aoleinc(I)V
.end method

.method public native eliocna()Ljava/io/InputStream;
.end method

.method public native ioceanl()Lcom/alcineo/administrative/FileId;
.end method

.method public native nlcoaie()I
.end method

.method public native noaceli(I)V
.end method

.method public oecnlia()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/alcineo/softpos/enolcai;->ioceanl:Lcom/alcineo/administrative/FileId;

    iget v1, p0, Lcom/alcineo/softpos/enolcai;->nlcoaie:I

    invoke-static {v0, v1}, Lcom/alcineo/administrative/commands/FileManagement;->initWrite(Lcom/alcineo/administrative/FileId;I)Lcom/alcineo/administrative/commands/FileManagement;

    move-result-object v2

    new-instance v3, Lcom/alcineo/softpos/enolcai$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/alcineo/softpos/enolcai$$ExternalSyntheticLambda0;-><init>(Lcom/alcineo/softpos/enolcai;)V

    iget-object v4, p0, Lcom/alcineo/softpos/enolcai;->loenaic:Lcom/alcineo/softpos/lniaeoc;

    iget-object v5, p0, Lcom/alcineo/softpos/enolcai;->aelcoin:Lcom/alcineo/softpos/coalnie;

    iget v6, p0, Lcom/alcineo/softpos/enolcai;->icloane:I

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v2 .. v7}, Lcom/alcineo/softpos/ileacno;->acileon(Lcom/alcineo/softpos/alicneo;Lcom/alcineo/softpos/ociealn;Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;ILjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/alcineo/softpos/enolcai;->acileon(Ljava/lang/Exception;)V

    return-void
.end method
