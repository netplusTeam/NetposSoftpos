.class public abstract Lcom/alcineo/softpos/inelcao;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private acileon:Ljava/lang/String;

.field private aoleinc:I

.field private enolcai:Ljava/lang/String;

.field private noaceli:I

.field private ocenlai:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/alcineo/softpos/inelcao;->acileon:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alcineo/softpos/inelcao;->aoleinc:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/alcineo/softpos/inelcao;->noaceli:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alcineo/softpos/inelcao;->enolcai:Ljava/lang/String;

    const-string v0, ", "

    iput-object v0, p0, Lcom/alcineo/softpos/inelcao;->ocenlai:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/alcineo/softpos/inelcao;->acileon:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alcineo/softpos/inelcao;->aoleinc:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/alcineo/softpos/inelcao;->noaceli:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alcineo/softpos/inelcao;->enolcai:Ljava/lang/String;

    const-string v0, ", "

    iput-object v0, p0, Lcom/alcineo/softpos/inelcao;->ocenlai:Ljava/lang/String;

    iput-object p1, p0, Lcom/alcineo/softpos/inelcao;->acileon:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public native acileon(Ljava/lang/String;)Lcom/alcineo/softpos/inelcao;
.end method

.method public native acileon()Ljava/lang/String;
.end method

.method public native acileon(I)V
.end method

.method public native acileon([B)[B
.end method

.method public native aoleinc()Ljava/lang/String;
.end method

.method public abstract aoleinc([B)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/alcineo/softpos/ailneoc;",
            ">;"
        }
    .end annotation
.end method

.method public native aoleinc(I)V
.end method

.method public native aoleinc(Ljava/lang/String;)V
.end method

.method public native noaceli()Ljava/lang/String;
.end method

.method public native noaceli(Ljava/lang/String;)V
.end method
