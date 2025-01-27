.class public Lcom/alcineo/softpos/liocnea;
.super Lcom/alcineo/softpos/inelcao;
.source "SourceFile"


# instance fields
.field private nacieol:Ljava/lang/String;

.field private noelcai:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alcineo/softpos/aielocn;",
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

    invoke-direct {p0}, Lcom/alcineo/softpos/inelcao;-><init>()V

    const-string v0, " "

    iput-object v0, p0, Lcom/alcineo/softpos/liocnea;->nacieol:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alcineo/softpos/liocnea;->noelcai:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/inelcao;-><init>(Ljava/lang/String;)V

    const-string p1, " "

    iput-object p1, p0, Lcom/alcineo/softpos/liocnea;->nacieol:Ljava/lang/String;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/alcineo/softpos/liocnea;->noelcai:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public native acileon(Lcom/alcineo/softpos/aielocn;)V
.end method

.method public native aoleinc([B)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/alcineo/softpos/ailneoc;",
            ">;"
        }
    .end annotation
.end method

.method public native aoleinc(Ljava/lang/String;)V
.end method
