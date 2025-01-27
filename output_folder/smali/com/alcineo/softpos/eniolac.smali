.class public Lcom/alcineo/softpos/eniolac;
.super Lcom/alcineo/softpos/inelcao;
.source "SourceFile"


# instance fields
.field private nacieol:Ljava/nio/charset/Charset;

.field private noelcai:Ljava/lang/String;


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

    const-string v0, "UTF8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/alcineo/softpos/eniolac;->nacieol:Ljava/nio/charset/Charset;

    const-string v0, "<INCORRECT FORMAT>"

    iput-object v0, p0, Lcom/alcineo/softpos/eniolac;->noelcai:Ljava/lang/String;

    return-void
.end method

.method private native acileon(B)B
.end method

.method private native aoleinc(B)B
.end method


# virtual methods
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

.method public native enolcai(Ljava/lang/String;)V
.end method
