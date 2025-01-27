.class public Lcom/alcineo/softpos/cienoal;
.super Lcom/alcineo/softpos/oaeclin;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alcineo/softpos/oaeclin<",
        "Ljava/util/List<",
        "Lcom/alcineo/softpos/oaeclin;",
        ">;>;"
    }
.end annotation


# instance fields
.field private anceiol:Z

.field private icloane:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alcineo/softpos/oaeclin;",
            ">;"
        }
    .end annotation
.end field

.field private oecnlia:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "Lcom/alcineo/softpos/oaeclin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$3ohxa1jPY8UnbjnH6tdpB8a3mwg(Lcom/alcineo/softpos/cienoal;Lcom/alcineo/softpos/oaeclin$noaceli;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alcineo/softpos/cienoal;->acileon(Lcom/alcineo/softpos/oaeclin$noaceli;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fyR3HhtDoS8jkJuNIRfmxpJzYaA(Lcom/alcineo/softpos/cienoal;D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alcineo/softpos/cienoal;->aoleinc(D)V

    return-void
.end method

.method public static synthetic $r8$lambda$mvFWv4rTH8O22UjTtMbXHJc3LCU(Lcom/alcineo/softpos/cienoal;Lcom/alcineo/softpos/oaeclin$acileon;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alcineo/softpos/cienoal;->acileon(Lcom/alcineo/softpos/oaeclin$acileon;Ljava/lang/Exception;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alcineo/softpos/oaeclin;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/alcineo/softpos/oaeclin;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alcineo/softpos/cienoal;->anceiol:Z

    iput-object p1, p0, Lcom/alcineo/softpos/cienoal;->icloane:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/alcineo/softpos/cienoal;->oecnlia:Ljava/util/ListIterator;

    return-void
.end method

.method public varargs constructor <init>([Lcom/alcineo/softpos/oaeclin;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/alcineo/softpos/oaeclin<",
            "*>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/cienoal;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private native synthetic acileon(Lcom/alcineo/softpos/oaeclin$acileon;Ljava/lang/Exception;)V
.end method

.method private native synthetic acileon(Lcom/alcineo/softpos/oaeclin$noaceli;Ljava/lang/Object;)V
.end method

.method private native acileon(Ljava/lang/Exception;Lcom/alcineo/softpos/oaeclin$acileon;)V
.end method

.method private native acileon(Ljava/lang/Object;Lcom/alcineo/softpos/oaeclin$noaceli;)V
.end method

.method private anceiol()V
    .locals 4

    iget-object v0, p0, Lcom/alcineo/softpos/cienoal;->oecnlia:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alcineo/softpos/cienoal;->icloane:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/alcineo/softpos/oaeclin;->acileon(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alcineo/softpos/cienoal;->oecnlia:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alcineo/softpos/oaeclin;

    invoke-virtual {v0}, Lcom/alcineo/softpos/oaeclin;->ocenlai()Lcom/alcineo/softpos/oaeclin$acileon;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alcineo/softpos/oaeclin;->ocleina()Lcom/alcineo/softpos/oaeclin$noaceli;

    move-result-object v2

    new-instance v3, Lcom/alcineo/softpos/cienoal$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/alcineo/softpos/cienoal$$ExternalSyntheticLambda0;-><init>(Lcom/alcineo/softpos/cienoal;Lcom/alcineo/softpos/oaeclin$acileon;)V

    invoke-virtual {v0, v3}, Lcom/alcineo/softpos/oaeclin;->acileon(Lcom/alcineo/softpos/oaeclin$acileon;)Lcom/alcineo/softpos/oaeclin;

    new-instance v1, Lcom/alcineo/softpos/cienoal$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v2}, Lcom/alcineo/softpos/cienoal$$ExternalSyntheticLambda1;-><init>(Lcom/alcineo/softpos/cienoal;Lcom/alcineo/softpos/oaeclin$noaceli;)V

    invoke-virtual {v0, v1}, Lcom/alcineo/softpos/oaeclin;->acileon(Lcom/alcineo/softpos/oaeclin$noaceli;)Lcom/alcineo/softpos/oaeclin;

    new-instance v1, Lcom/alcineo/softpos/cienoal$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/alcineo/softpos/cienoal$$ExternalSyntheticLambda2;-><init>(Lcom/alcineo/softpos/cienoal;)V

    invoke-virtual {v0, v1}, Lcom/alcineo/softpos/oaeclin;->acileon(Lcom/alcineo/softpos/oaeclin$aoleinc;)Lcom/alcineo/softpos/oaeclin;

    invoke-virtual {v0}, Lcom/alcineo/softpos/oaeclin;->aoleinc()V

    return-void
.end method

.method private native aoleinc(D)V
.end method


# virtual methods
.method public native acileon(Z)Lcom/alcineo/softpos/cienoal;
.end method

.method public native aelcoin()I
.end method

.method public native loenaic()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alcineo/softpos/oaeclin;",
            ">;"
        }
    .end annotation
.end method

.method public native oecnlia()V
.end method
