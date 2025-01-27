.class public Lcom/alcineo/softpos/ioneacl;
.super Lcom/alcineo/softpos/iancole;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alcineo/softpos/ioneacl$acileon;
    }
.end annotation


# instance fields
.field private acileon:Lcom/alcineo/softpos/ioneacl$acileon;

.field private aoleinc:Ljava/lang/String;

.field private enolcai:Ljava/lang/Integer;

.field private noaceli:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alcineo/softpos/iancole;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alcineo/softpos/ioneacl;->enolcai:Ljava/lang/Integer;

    sget-object v0, Lcom/alcineo/softpos/ioneacl$acileon;->aoleinc:Lcom/alcineo/softpos/ioneacl$acileon;

    iput-object v0, p0, Lcom/alcineo/softpos/ioneacl;->acileon:Lcom/alcineo/softpos/ioneacl$acileon;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/alcineo/softpos/iancole;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alcineo/softpos/ioneacl;->enolcai:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/alcineo/softpos/ioneacl;->aoleinc:Ljava/lang/String;

    iput-object p2, p0, Lcom/alcineo/softpos/ioneacl;->noaceli:Ljava/util/List;

    sget-object p1, Lcom/alcineo/softpos/ioneacl$acileon;->acileon:Lcom/alcineo/softpos/ioneacl$acileon;

    iput-object p1, p0, Lcom/alcineo/softpos/ioneacl;->acileon:Lcom/alcineo/softpos/ioneacl$acileon;

    return-void
.end method


# virtual methods
.method public native acileon(I)Lcom/alcineo/softpos/alicneo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native aoleinc()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public native enolcai()Lcom/alcineo/softpos/ioneacl$acileon;
.end method

.method public native noaceli()Ljava/lang/Integer;
.end method

.method public native ocenlai()Ljava/lang/String;
.end method
