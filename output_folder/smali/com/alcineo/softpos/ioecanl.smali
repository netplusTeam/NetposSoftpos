.class public abstract Lcom/alcineo/softpos/ioecanl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private acileon:Ljava/util/Date;

.field private aoleinc:Lcom/alcineo/softpos/aenciol;

.field private enolcai:Ljava/lang/Byte;

.field private noaceli:Ljava/lang/Exception;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/aenciol;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alcineo/softpos/ioecanl;->aoleinc:Lcom/alcineo/softpos/aenciol;

    invoke-virtual {p1}, Lcom/alcineo/softpos/aenciol;->nlcoaie()Ljava/lang/Byte;

    move-result-object p1

    iput-object p1, p0, Lcom/alcineo/softpos/ioecanl;->enolcai:Ljava/lang/Byte;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/alcineo/softpos/ioecanl;->acileon:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/aenciol;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/ioecanl;-><init>(Lcom/alcineo/softpos/aenciol;)V

    iput-object p2, p0, Lcom/alcineo/softpos/ioecanl;->noaceli:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public native acileon()Lcom/alcineo/softpos/aenciol;
.end method

.method public native aoleinc()Ljava/util/Date;
.end method

.method public native enolcai()Ljava/lang/Byte;
.end method

.method public native noaceli()Ljava/lang/Exception;
.end method

.method public native ocenlai()Ljava/lang/String;
.end method
